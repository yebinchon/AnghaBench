; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_RunConsole.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_RunConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double }
%struct.TYPE_4__ = type { double }
%struct.TYPE_6__ = type { double }

@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@con = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@con_conspeed = common dso_local global %struct.TYPE_4__* null, align 8
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_RunConsole() #0 {
  %1 = call i32 (...) @Key_GetCatcher()
  %2 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store double 5.000000e-01, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  br label %7

6:                                                ; preds = %0
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %6, %5
  %8 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  %9 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @con_conspeed, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %16 = fmul double %14, %15
  %17 = fmul double %16, 1.000000e-03
  %18 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %19 = fsub double %18, %17
  store double %19, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %20 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  %21 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  store double %24, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  br label %25

25:                                               ; preds = %23, %11
  br label %46

26:                                               ; preds = %7
  %27 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  %28 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %29 = fcmp ogt double %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @con_conspeed, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %35 = fmul double %33, %34
  %36 = fmul double %35, 1.000000e-03
  %37 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %38 = fadd double %37, %36
  store double %38, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %39 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  %40 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  %41 = fcmp olt double %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 0), align 8
  store double %43, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @con, i32 0, i32 1), align 8
  br label %44

44:                                               ; preds = %42, %30
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %25
  ret void
}

declare dso_local i32 @Key_GetCatcher(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
