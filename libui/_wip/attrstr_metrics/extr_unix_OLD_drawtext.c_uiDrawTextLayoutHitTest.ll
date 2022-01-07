; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD_drawtext.c_uiDrawTextLayoutHitTest.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD_drawtext.c_uiDrawTextLayoutHitTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawTextLayoutHitTest(%struct.TYPE_5__* %0, double %1, double %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load double, double* %7, align 8
  %20 = call i32 @cairoToPango(double %19)
  %21 = load double, double* %8, align 8
  %22 = call i32 @cairoToPango(double %21)
  %23 = call i32 @pango_layout_xy_to_index(i32 %18, i32 %20, i32 %22, i32* %11, i32* %12)
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %64, %30
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  store double %48, double* %14, align 8
  %49 = load double, double* %14, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fadd double %49, %57
  store double %58, double* %15, align 8
  %59 = load double, double* %8, align 8
  %60 = load double, double* %15, align 8
  %61 = fcmp olt double %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %40
  br label %67

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %34

67:                                               ; preds = %62, %34
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pango_layout_get_line_count(i32 %71)
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  ret void
}

declare dso_local i32 @pango_layout_xy_to_index(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @cairoToPango(double) #1

declare dso_local i32 @pango_layout_get_line_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
