; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@uv_cpu_nmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UV_NMI_STATE_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"UV: Sending NMI IPI to %d CPUs: %*pbl\0A\00", align 1
@uv_nmi_cpu_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"UV: %d CPUs not in NMI loop: %*pbl\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"UV: %d of %d CPUs in NMI\0A\00", align 1
@uv_nmi_cpus_in_nmi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uv_nmi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_nmi_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 0), align 4
  %4 = load i32, i32* @UV_NMI_STATE_IN, align 4
  %5 = call i32 @this_cpu_write(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9
  %11 = call i32 @uv_nmi_wait_cpus(i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %30

14:                                               ; preds = %10
  %15 = load i32, i32* @uv_nmi_cpu_mask, align 4
  %16 = call i32 @cpumask_weight(i32 %15)
  %17 = load i32, i32* @uv_nmi_cpu_mask, align 4
  %18 = call i32 @cpumask_pr_args(i32 %17)
  %19 = call i32 @pr_alert(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = call i32 (...) @uv_nmi_nr_cpus_ping()
  %21 = call i32 @uv_nmi_wait_cpus(i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %30

24:                                               ; preds = %14
  %25 = load i32, i32* @uv_nmi_cpu_mask, align 4
  %26 = call i32 @cpumask_weight(i32 %25)
  %27 = load i32, i32* @uv_nmi_cpu_mask, align 4
  %28 = call i32 @cpumask_pr_args(i32 %27)
  %29 = call i32 @pr_alert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %23, %13
  %31 = call i32 @atomic_read(i32* @uv_nmi_cpus_in_nmi)
  %32 = call i32 (...) @num_online_cpus()
  %33 = call i32 @pr_alert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @uv_nmi_wait_cpus(i32) #1

declare dso_local i32 @pr_alert(i8*, i32, i32) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @cpumask_pr_args(i32) #1

declare dso_local i32 @uv_nmi_nr_cpus_ping(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
