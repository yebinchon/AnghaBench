; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD_drawtext.c_caretDrawParams.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD_drawtext.c_caretDrawParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.caretDrawParams = type { double, double, double, double, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"cursor-color\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cursor-aspect-ratio\00", align 1
@GTK_STATE_FLAG_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @caretDrawParams(%struct.TYPE_8__* %0, double %1, %struct.caretDrawParams* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.caretDrawParams*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store double %1, double* %5, align 8
  store %struct.caretDrawParams* %2, %struct.caretDrawParams** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gtk_style_context_get_style(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__** %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), double* %9, i32* null)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to double
  %23 = fdiv double %22, 6.553500e+04
  %24 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %25 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %24, i32 0, i32 0
  store double %23, double* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to double
  %30 = fdiv double %29, 6.553500e+04
  %31 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %32 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %31, i32 0, i32 1
  store double %30, double* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %36, 6.553500e+04
  %38 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %39 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %38, i32 0, i32 2
  store double %37, double* %39, align 8
  %40 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %41 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %40, i32 0, i32 3
  store double 1.000000e+00, double* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = call i32 @gdk_color_free(%struct.TYPE_10__* %42)
  br label %66

44:                                               ; preds = %3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GTK_STATE_FLAG_NORMAL, align 4
  %49 = call i32 @gtk_style_context_get_color(i32 %47, i32 %48, %struct.TYPE_9__* %8)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %53 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %52, i32 0, i32 0
  store double %51, double* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %57 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %56, i32 0, i32 1
  store double %55, double* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %59 = load double, double* %58, align 8
  %60 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %61 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %60, i32 0, i32 2
  store double %59, double* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %63 = load double, double* %62, align 8
  %64 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %65 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %64, i32 0, i32 3
  store double %63, double* %65, align 8
  br label %66

66:                                               ; preds = %44, %18
  %67 = load double, double* %5, align 8
  %68 = load double, double* %9, align 8
  %69 = fmul double %67, %68
  %70 = fadd double %69, 1.000000e+00
  %71 = fptosi double %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %76 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.caretDrawParams*, %struct.caretDrawParams** %6, align 8
  %79 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  ret void
}

declare dso_local i32 @gtk_style_context_get_style(i32, i8*, %struct.TYPE_10__**, i8*, double*, i32*) #1

declare dso_local i32 @gdk_color_free(%struct.TYPE_10__*) #1

declare dso_local i32 @gtk_style_context_get_color(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
