; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_CharEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_CharEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@g_consoleField = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@uivm = common dso_local global i32 0, align 4
@UI_KEY_EVENT = common dso_local global i32 0, align 4
@K_CHAR_FLAG = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@chatField = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CharEvent(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 127
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %45

6:                                                ; preds = %1
  %7 = call i32 (...) @Key_GetCatcher()
  %8 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @Field_CharEvent(i32* @g_consoleField, i32 %12)
  br label %45

14:                                               ; preds = %6
  %15 = call i32 (...) @Key_GetCatcher()
  %16 = load i32, i32* @KEYCATCH_UI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* @uivm, align 4
  %21 = load i32, i32* @UI_KEY_EVENT, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @K_CHAR_FLAG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @qtrue, align 4
  %26 = call i32 @VM_Call(i32 %20, i32 %21, i32 %24, i32 %25)
  br label %44

27:                                               ; preds = %14
  %28 = call i32 (...) @Key_GetCatcher()
  %29 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @Field_CharEvent(i32* @chatField, i32 %33)
  br label %43

35:                                               ; preds = %27
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %37 = load i64, i64* @CA_DISCONNECTED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @Field_CharEvent(i32* @g_consoleField, i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %5, %44, %11
  ret void
}

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @Field_CharEvent(i32*, i32) #1

declare dso_local i32 @VM_Call(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
