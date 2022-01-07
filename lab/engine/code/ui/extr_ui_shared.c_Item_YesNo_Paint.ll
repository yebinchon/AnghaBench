; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_YesNo_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_YesNo_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { float (i64)*, i32, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i64, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { double* }

@DC = common dso_local global %struct.TYPE_12__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_YesNo_Paint(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load float (i64)*, float (i64)** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call float %18(i64 %21)
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi float [ %22, %15 ], [ 0.000000e+00, %23 ]
  store float %25, float* %5, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  %38 = load double, double* %37, align 8
  %39 = fmul double 8.000000e-01, %38
  %40 = load double*, double** %4, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  store double %39, double* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load double*, double** %43, align 8
  %45 = getelementptr inbounds double, double* %44, i64 1
  %46 = load double, double* %45, align 8
  %47 = fmul double 8.000000e-01, %46
  %48 = load double*, double** %4, align 8
  %49 = getelementptr inbounds double, double* %48, i64 1
  store double %47, double* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load double*, double** %51, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  %54 = load double, double* %53, align 8
  %55 = fmul double 8.000000e-01, %54
  %56 = load double*, double** %4, align 8
  %57 = getelementptr inbounds double, double* %56, i64 2
  store double %55, double* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load double*, double** %59, align 8
  %61 = getelementptr inbounds double, double* %60, i64 3
  %62 = load double, double* %61, align 8
  %63 = fmul double 8.000000e-01, %62
  %64 = load double*, double** %4, align 8
  %65 = getelementptr inbounds double, double* %64, i64 3
  store double %63, double* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load double*, double** %67, align 8
  %69 = load double*, double** %4, align 8
  %70 = load double*, double** %3, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PULSE_DIVISOR, align 4
  %75 = sdiv i32 %73, %74
  %76 = call double @sin(i32 %75)
  %77 = fmul double 5.000000e-01, %76
  %78 = fadd double 5.000000e-01, %77
  %79 = call i32 @LerpColor(double* %68, double* %69, double* %70, double %78)
  br label %85

80:                                               ; preds = %24
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = call i32 @memcpy(double** %3, i32* %83, i32 8)
  br label %85

85:                                               ; preds = %80, %33
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = call i32 @Item_Text_Paint(%struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32 (i64, i32, i32, double*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)** %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %99, %103
  %105 = add nsw i64 %104, 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load double*, double** %3, align 8
  %114 = load float, float* %5, align 4
  %115 = fcmp une float %114, 0.000000e+00
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %95(i64 %105, i32 %109, i32 %112, double* %113, i8* %117, i32 0, i32 0, i32 %120)
  br label %146

122:                                              ; preds = %85
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i32 (i64, i32, i32, double*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)** %124, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load double*, double** %3, align 8
  %138 = load float, float* %5, align 4
  %139 = fcmp une float %138, 0.000000e+00
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %125(i64 %129, i32 %133, i32 %136, double* %137, i8* %141, i32 0, i32 0, i32 %144)
  br label %146

146:                                              ; preds = %122, %90
  ret void
}

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(double**, i32*, i32) #1

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
