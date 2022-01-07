; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_handle_key_press.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_handle_key_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@xcb_numlock_mask = common dso_local global i32 0, align 4
@keysyms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"User issued core-dump command.\0A\00", align 1
@backtrace_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @sighandler_handle_key_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighandler_handle_key_press(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @xcb_numlock_mask, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @keysyms, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call signext i8 @xcb_key_press_lookup_keysym(i32 %12, %struct.TYPE_4__* %13, i32 %14)
  store i8 %15, i8* %4, align 1
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 98
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = call i32 @DLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @sighandler_backtrace()
  store i32 %21, i32* @backtrace_done, align 4
  %22 = call i32 (...) @sighandler_handle_expose()
  br label %39

23:                                               ; preds = %1
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 114
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call i32 (...) @sighandler_destroy_dialogs()
  %29 = call i32 @i3_restart(i32 0)
  br label %38

30:                                               ; preds = %23
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 102
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 (...) @sighandler_destroy_dialogs()
  %36 = call i32 @i3_restart(i32 1)
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %19
  ret void
}

declare dso_local signext i8 @xcb_key_press_lookup_keysym(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @sighandler_backtrace(...) #1

declare dso_local i32 @sighandler_handle_expose(...) #1

declare dso_local i32 @sighandler_destroy_dialogs(...) #1

declare dso_local i32 @i3_restart(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
