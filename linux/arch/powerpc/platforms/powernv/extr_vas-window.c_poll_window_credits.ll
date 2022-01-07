; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_poll_window_credits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_poll_window_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i64 }

@WINCTL = common dso_local global i32 0, align 4
@VAS_WINCTL_TX_WCRED_MODE = common dso_local global i32 0, align 4
@VAS_WINCTL_RX_WCRED_MODE = common dso_local global i32 0, align 4
@TX_WCRED = common dso_local global i32 0, align 4
@VAS_TX_WCRED = common dso_local global i32 0, align 4
@LRX_WCRED = common dso_local global i32 0, align 4
@VAS_LRX_WCRED = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vas_window*)* @poll_window_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_window_credits(%struct.vas_window* %0) #0 {
  %2 = alloca %struct.vas_window*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vas_window* %0, %struct.vas_window** %2, align 8
  %6 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %7 = load i32, i32* @WINCTL, align 4
  %8 = call i32 @VREG(i32 %7)
  %9 = call i64 @read_hvwc_reg(%struct.vas_window* %6, i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %11 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @VAS_WINCTL_TX_WCRED_MODE, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @GET_FIELD(i32 %15, i64 %16)
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @VAS_WINCTL_RX_WCRED_MODE, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @GET_FIELD(i32 %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %59

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %54, %26
  %28 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %29 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %34 = load i32, i32* @TX_WCRED, align 4
  %35 = call i32 @VREG(i32 %34)
  %36 = call i64 @read_hvwc_reg(%struct.vas_window* %33, i32 %35)
  store i64 %36, i64* %3, align 8
  %37 = load i32, i32* @VAS_TX_WCRED, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @GET_FIELD(i32 %37, i64 %38)
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %42 = load i32, i32* @LRX_WCRED, align 4
  %43 = call i32 @VREG(i32 %42)
  %44 = call i64 @read_hvwc_reg(%struct.vas_window* %41, i32 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i32, i32* @VAS_LRX_WCRED, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @GET_FIELD(i32 %45, i64 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %32
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %51 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  store i64 0, i64* %3, align 8
  %55 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %56 = call i32 @set_current_state(i32 %55)
  %57 = call i32 @msecs_to_jiffies(i32 10)
  %58 = call i32 @schedule_timeout(i32 %57)
  br label %27

59:                                               ; preds = %25, %48
  ret void
}

declare dso_local i64 @read_hvwc_reg(%struct.vas_window*, i32) #1

declare dso_local i32 @VREG(i32) #1

declare dso_local i32 @GET_FIELD(i32, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
