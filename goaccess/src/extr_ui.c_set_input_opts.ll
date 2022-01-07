; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_set_input_opts.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_set_input_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@stdscr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unable to change cursor: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BUTTON1_CLICKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_input_opts() #0 {
  %1 = call i32 (...) @initscr()
  %2 = call i32 (...) @clear()
  %3 = call i32 (...) @noecho()
  %4 = call i32 @halfdelay(i32 10)
  %5 = call i32 (...) @nonl()
  %6 = load i32, i32* @stdscr, align 4
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i32 @intrflush(i32 %6, i32 %7)
  %9 = load i32, i32* @stdscr, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @keypad(i32 %9, i32 %10)
  %12 = call i64 @curs_set(i32 0)
  %13 = load i64, i64* @ERR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @LOG_DEBUG(i8* %19)
  br label %21

21:                                               ; preds = %15, %0
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @BUTTON1_CLICKED, align 4
  %26 = call i32 @mousemask(i32 %25, i32* null)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @halfdelay(i32) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @intrflush(i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i64 @curs_set(i32) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @mousemask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
