; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_smp.c_smp_85xx_kick_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_smp.c_smp_85xx_kick_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [14 x i8] c"kick CPU #%d\0A\00", align 1
@CPU_FTR_SMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@INVALID_THREAD_HWID = common dso_local global i32 0, align 4
@booting_thread_hwid = common dso_local global i32 0, align 4
@paca_ptrs = common dso_local global %struct.TYPE_4__** null, align 8
@qoriq_pm_ops = common dso_local global %struct.TYPE_3__* null, align 8
@threads_per_core = common dso_local global i32 0, align 4
@wake_hw_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smp_85xx_kick_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_85xx_kick_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (...) @num_possible_cpus()
  %10 = icmp sge i32 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @smp_85xx_start_cpu(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @generic_set_cpu_up(i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @smp_85xx_start_cpu(i32) #1

declare dso_local i32 @generic_set_cpu_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
