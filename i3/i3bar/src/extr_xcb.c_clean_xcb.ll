; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_clean_xcb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_clean_xcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xcb_connection = common dso_local global i32 0, align 4
@cursor = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4
@xcb_prep = common dso_local global i32 0, align 4
@xcb_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_xcb() #0 {
  %1 = call i32 (...) @free_outputs()
  %2 = call i32 (...) @free_font()
  %3 = load i32, i32* @xcb_connection, align 4
  %4 = load i32, i32* @cursor, align 4
  %5 = call i32 @xcb_free_cursor(i32 %3, i32 %4)
  %6 = load i32, i32* @xcb_connection, align 4
  %7 = call i32 @xcb_flush(i32 %6)
  %8 = load i32, i32* @xcb_connection, align 4
  %9 = call i32 @xcb_aux_sync(i32 %8)
  %10 = load i32, i32* @xcb_connection, align 4
  %11 = call i32 @xcb_disconnect(i32 %10)
  %12 = load i32, i32* @main_loop, align 4
  %13 = load i32, i32* @xcb_prep, align 4
  %14 = call i32 @ev_prepare_stop(i32 %12, i32 %13)
  %15 = load i32, i32* @main_loop, align 4
  %16 = load i32, i32* @xcb_io, align 4
  %17 = call i32 @ev_io_stop(i32 %15, i32 %16)
  %18 = load i32, i32* @xcb_prep, align 4
  %19 = call i32 @FREE(i32 %18)
  %20 = load i32, i32* @xcb_io, align 4
  %21 = call i32 @FREE(i32 %20)
  ret void
}

declare dso_local i32 @free_outputs(...) #1

declare dso_local i32 @free_font(...) #1

declare dso_local i32 @xcb_free_cursor(i32, i32) #1

declare dso_local i32 @xcb_flush(i32) #1

declare dso_local i32 @xcb_aux_sync(i32) #1

declare dso_local i32 @xcb_disconnect(i32) #1

declare dso_local i32 @ev_prepare_stop(i32, i32) #1

declare dso_local i32 @ev_io_stop(i32, i32) #1

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
