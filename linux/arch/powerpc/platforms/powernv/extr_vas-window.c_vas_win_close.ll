; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_win_close.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_win_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Attempting to close an active Rx window!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vas_win_close(%struct.vas_window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vas_window*, align 8
  store %struct.vas_window* %0, %struct.vas_window** %3, align 8
  %4 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %5 = icmp ne %struct.vas_window* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %9 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %14 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %13, i32 0, i32 2
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = call i32 @pr_devel(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %12, %7
  %23 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %24 = call i32 @unmap_paste_region(%struct.vas_window* %23)
  %25 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %26 = call i32 @clear_vinst_win(%struct.vas_window* %25)
  %27 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %28 = call i32 @poll_window_busy_state(%struct.vas_window* %27)
  %29 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %30 = call i32 @unpin_close_window(%struct.vas_window* %29)
  %31 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %32 = call i32 @poll_window_credits(%struct.vas_window* %31)
  %33 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %34 = call i32 @poll_window_castout(%struct.vas_window* %33)
  %35 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %36 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %41 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @put_rx_win(i32 %42)
  br label %44

44:                                               ; preds = %39, %22
  %45 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %46 = call i32 @vas_window_free(%struct.vas_window* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %17, %6
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @unmap_paste_region(%struct.vas_window*) #1

declare dso_local i32 @clear_vinst_win(%struct.vas_window*) #1

declare dso_local i32 @poll_window_busy_state(%struct.vas_window*) #1

declare dso_local i32 @unpin_close_window(%struct.vas_window*) #1

declare dso_local i32 @poll_window_credits(%struct.vas_window*) #1

declare dso_local i32 @poll_window_castout(%struct.vas_window*) #1

declare dso_local i32 @put_rx_win(i32) #1

declare dso_local i32 @vas_window_free(%struct.vas_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
