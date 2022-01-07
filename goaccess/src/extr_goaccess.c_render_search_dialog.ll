; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_render_search_dialog.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_render_search_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@main_win = common dso_local global i32 0, align 4
@gscroll = common dso_local global i32 0, align 4
@gdns_thread = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@holder = common dso_local global i32 0, align 4
@dash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @render_search_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_search_dialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @main_win, align 4
  %4 = call i64 @render_find_dialog(i32 %3, i32* @gscroll)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdns_thread, i32 0, i32 0))
  %9 = load i32, i32* @holder, align 4
  %10 = call i32 @perform_next_find(i32 %9, i32* @gscroll)
  store i32 %10, i32* %2, align 4
  %11 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdns_thread, i32 0, i32 0))
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %20

15:                                               ; preds = %7
  %16 = load i32, i32* @dash, align 4
  %17 = call i32 @free_dashboard(i32 %16)
  %18 = call i32 (...) @allocate_data()
  %19 = call i32 (...) @render_screens()
  br label %20

20:                                               ; preds = %15, %14, %6
  ret void
}

declare dso_local i64 @render_find_dialog(i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @perform_next_find(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free_dashboard(i32) #1

declare dso_local i32 @allocate_data(...) #1

declare dso_local i32 @render_screens(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
