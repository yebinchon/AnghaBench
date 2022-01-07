; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/sb1250/extr_smp.c_sb1250_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/sb1250/extr_smp.c_sb1250_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@smp_bootstrap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cfe_start_cpu(%i) returned %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @sb1250_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1250_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpu_logical_map(i32 %6)
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = call i32 @__KSTK_TOS(%struct.task_struct* %8)
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call i64 @task_thread_info(%struct.task_struct* %10)
  %12 = call i32 @cfe_cpu_start(i32 %7, i32* @smp_bootstrap, i32 %9, i64 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @cfe_cpu_start(i32, i32*, i32, i64, i32) #1

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @__KSTK_TOS(%struct.task_struct*) #1

declare dso_local i64 @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
