; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_DrawConsole.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_DrawConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { double }

@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@con = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_DrawConsole() #0 {
  %1 = call i32 (...) @Con_CheckResize()
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %3 = load i64, i64* @CA_DISCONNECTED, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = call i32 (...) @Key_GetCatcher()
  %7 = load i32, i32* @KEYCATCH_UI, align 4
  %8 = load i32, i32* @KEYCATCH_CGAME, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = call i32 @Con_DrawSolidConsole(double 1.000000e+00)
  br label %28

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %0
  %16 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %20 = call i32 @Con_DrawSolidConsole(double %19)
  br label %28

21:                                               ; preds = %15
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %23 = load i64, i64* @CA_ACTIVE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @Con_DrawNotify()
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %12, %27, %18
  ret void
}

declare dso_local i32 @Con_CheckResize(...) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @Con_DrawSolidConsole(double) #1

declare dso_local i32 @Con_DrawNotify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
