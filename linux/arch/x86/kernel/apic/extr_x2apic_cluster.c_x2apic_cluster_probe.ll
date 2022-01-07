; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_cluster.c_x2apic_cluster_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_cluster.c_x2apic_cluster_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x2apic_mode = common dso_local global i32 0, align 4
@CPUHP_X2APIC_PREPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"x86/x2apic:prepare\00", align 1
@x2apic_prepare_cpu = common dso_local global i32 0, align 4
@x2apic_dead_cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register X2APIC_PREPARE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @x2apic_cluster_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x2apic_cluster_probe() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @x2apic_mode, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @CPUHP_X2APIC_PREPARE, align 4
  %7 = load i32, i32* @x2apic_prepare_cpu, align 4
  %8 = load i32, i32* @x2apic_dead_cpu, align 4
  %9 = call i64 @cpuhp_setup_state(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

13:                                               ; preds = %5
  %14 = call i32 (...) @init_x2apic_ldr()
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %11, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i64 @cpuhp_setup_state(i32, i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @init_x2apic_ldr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
