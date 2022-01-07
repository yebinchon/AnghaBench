; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-keystone/extr_platsmp.c_keystone_smp_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-keystone/extr_platsmp.c_keystone_smp_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@secondary_startup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"keystone-smp: booting cpu %d, vector %08lx\0A\00", align 1
@KEYSTONE_MON_CPU_UP_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CPU %d bringup failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @keystone_smp_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_smp_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = call i64 @virt_to_idmap(i32* @secondary_startup)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %9)
  %11 = load i32, i32* @KEYSTONE_MON_CPU_UP_IDX, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @keystone_cpu_smc(i32 %11, i32 %12, i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i64 @virt_to_idmap(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @keystone_cpu_smc(i32, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
