; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_expand_module_from_ypos.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_expand_module_from_ypos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_HEIGHT_HEADER = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@gscroll = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@dash = common dso_local global i32 0, align 4
@holder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @expand_module_from_ypos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_module_from_ypos(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @MAX_HEIGHT_HEADER, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @LINES, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %28

12:                                               ; preds = %6
  %13 = load i32, i32* @dash, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @set_module_from_mouse_event(%struct.TYPE_4__* @gscroll, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %28

18:                                               ; preds = %12
  %19 = call i32 @reset_scroll_offsets(%struct.TYPE_4__* @gscroll)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gscroll, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gscroll, i32 0, i32 1), align 4
  %21 = call i32 @free_holder_by_module(i32* @holder, i32 %20)
  %22 = load i32, i32* @dash, align 4
  %23 = call i32 @free_dashboard(i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gscroll, i32 0, i32 1), align 4
  %25 = call i32 @allocate_holder_by_module(i32 %24)
  %26 = call i32 (...) @allocate_data()
  %27 = call i32 (...) @render_screens()
  br label %28

28:                                               ; preds = %18, %17, %11
  ret void
}

declare dso_local i64 @set_module_from_mouse_event(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @reset_scroll_offsets(%struct.TYPE_4__*) #1

declare dso_local i32 @free_holder_by_module(i32*, i32) #1

declare dso_local i32 @free_dashboard(i32) #1

declare dso_local i32 @allocate_holder_by_module(i32) #1

declare dso_local i32 @allocate_data(...) #1

declare dso_local i32 @render_screens(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
