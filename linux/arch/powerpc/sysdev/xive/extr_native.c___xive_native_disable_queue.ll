; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c___xive_native_disable_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c___xive_native_disable_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_q = type { i32 }

@OPAL_BUSY = common dso_local global i64 0, align 8
@OPAL_BUSY_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error %lld disabling queue for prio %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xive_q*, i32)* @__xive_native_disable_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xive_native_disable_queue(i32 %0, %struct.xive_q* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xive_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xive_q* %1, %struct.xive_q** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %16, %3
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @opal_xive_set_queue_info(i32 %9, i32 %10, i32 0, i32 0, i32 0)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @OPAL_BUSY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %18 = call i32 @msleep(i32 %17)
  br label %8

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  ret void
}

declare dso_local i64 @opal_xive_set_queue_info(i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
