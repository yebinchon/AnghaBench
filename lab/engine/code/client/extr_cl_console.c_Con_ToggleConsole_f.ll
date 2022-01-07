; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_ToggleConsole_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_ToggleConsole_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@clc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@con_autoclear = common dso_local global %struct.TYPE_6__* null, align 8
@g_consoleField = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_console_field_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_ToggleConsole_f() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 8
  %2 = load i64, i64* @CA_DISCONNECTED, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 (...) @Key_GetCatcher()
  %6 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %23

9:                                                ; preds = %4, %0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @con_autoclear, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @Field_Clear(%struct.TYPE_5__* @g_consoleField)
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* @g_console_field_width, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_consoleField, i32 0, i32 0), align 4
  %18 = call i32 (...) @Con_ClearNotify()
  %19 = call i32 (...) @Key_GetCatcher()
  %20 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %21 = xor i32 %19, %20
  %22 = call i32 @Key_SetCatcher(i32 %21)
  br label %23

23:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @Field_Clear(%struct.TYPE_5__*) #1

declare dso_local i32 @Con_ClearNotify(...) #1

declare dso_local i32 @Key_SetCatcher(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
