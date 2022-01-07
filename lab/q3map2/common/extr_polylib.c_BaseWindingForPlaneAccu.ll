; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_BaseWindingForPlaneAccu.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_BaseWindingForPlaneAccu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double**, i32 }

@.str = private unnamed_addr constant [76 x i8] c"BaseWindingForPlaneAccu: no dominant axis found because normal is too short\00", align 1
@MAX_WORLD_COORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BaseWindingForPlaneAccu(i64* %0, double %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i64* %0, i64** %3, align 8
  store double %1, double* %4, align 8
  store double 5.600000e-01, double* %7, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %32, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i64*, i64** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @fabs(i64 %22)
  %24 = sitofp i64 %23 to double
  store double %24, double* %8, align 8
  %25 = load double, double* %8, align 8
  %26 = load double, double* %7, align 8
  %27 = fcmp ogt double %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %5, align 4
  %30 = load double, double* %8, align 8
  store double %30, double* %7, align 8
  br label %31

31:                                               ; preds = %28, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @Error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %74 [
    i32 0, label %42
    i32 1, label %42
    i32 2, label %58
  ]

42:                                               ; preds = %40, %40
  %43 = load i64*, i64** %3, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 0, %45
  %47 = sitofp i64 %46 to double
  %48 = load double*, double** %9, align 8
  %49 = getelementptr inbounds double, double* %48, i64 0
  store double %47, double* %49, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = load double*, double** %9, align 8
  %55 = getelementptr inbounds double, double* %54, i64 1
  store double %53, double* %55, align 8
  %56 = load double*, double** %9, align 8
  %57 = getelementptr inbounds double, double* %56, i64 2
  store double 0.000000e+00, double* %57, align 8
  br label %74

58:                                               ; preds = %40
  %59 = load double*, double** %9, align 8
  %60 = getelementptr inbounds double, double* %59, i64 0
  store double 0.000000e+00, double* %60, align 8
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 0, %63
  %65 = sitofp i64 %64 to double
  %66 = load double*, double** %9, align 8
  %67 = getelementptr inbounds double, double* %66, i64 1
  store double %65, double* %67, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to double
  %72 = load double*, double** %9, align 8
  %73 = getelementptr inbounds double, double* %72, i64 2
  store double %71, double* %73, align 8
  br label %74

74:                                               ; preds = %40, %58, %42
  %75 = load double*, double** %9, align 8
  %76 = load i64, i64* @MAX_WORLD_COORD, align 8
  %77 = sitofp i64 %76 to double
  %78 = fmul double %77, 4.000000e+00
  %79 = load double*, double** %9, align 8
  %80 = call i32 @VectorScaleAccu(double* %75, double %78, double* %79)
  %81 = load i64*, i64** %3, align 8
  %82 = load double*, double** %12, align 8
  %83 = call i32 @VectorCopyRegularToAccu(i64* %81, double* %82)
  %84 = load double*, double** %12, align 8
  %85 = load double*, double** %9, align 8
  %86 = load double*, double** %10, align 8
  %87 = call i32 @CrossProductAccu(double* %84, double* %85, double* %86)
  %88 = load double*, double** %12, align 8
  %89 = load double, double* %4, align 8
  %90 = load double*, double** %11, align 8
  %91 = call i32 @VectorScaleAccu(double* %88, double %89, double* %90)
  %92 = call %struct.TYPE_4__* @AllocWindingAccu(i32 4)
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %13, align 8
  %93 = load double*, double** %11, align 8
  %94 = load double*, double** %9, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load double**, double*** %96, align 8
  %98 = getelementptr inbounds double*, double** %97, i64 0
  %99 = load double*, double** %98, align 8
  %100 = call i32 @VectorSubtractAccu(double* %93, double* %94, double* %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load double**, double*** %102, align 8
  %104 = getelementptr inbounds double*, double** %103, i64 0
  %105 = load double*, double** %104, align 8
  %106 = load double*, double** %10, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load double**, double*** %108, align 8
  %110 = getelementptr inbounds double*, double** %109, i64 0
  %111 = load double*, double** %110, align 8
  %112 = call i32 @VectorAddAccu(double* %105, double* %106, double* %111)
  %113 = load double*, double** %11, align 8
  %114 = load double*, double** %9, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load double**, double*** %116, align 8
  %118 = getelementptr inbounds double*, double** %117, i64 1
  %119 = load double*, double** %118, align 8
  %120 = call i32 @VectorAddAccu(double* %113, double* %114, double* %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load double**, double*** %122, align 8
  %124 = getelementptr inbounds double*, double** %123, i64 1
  %125 = load double*, double** %124, align 8
  %126 = load double*, double** %10, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load double**, double*** %128, align 8
  %130 = getelementptr inbounds double*, double** %129, i64 1
  %131 = load double*, double** %130, align 8
  %132 = call i32 @VectorAddAccu(double* %125, double* %126, double* %131)
  %133 = load double*, double** %11, align 8
  %134 = load double*, double** %9, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load double**, double*** %136, align 8
  %138 = getelementptr inbounds double*, double** %137, i64 2
  %139 = load double*, double** %138, align 8
  %140 = call i32 @VectorAddAccu(double* %133, double* %134, double* %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load double**, double*** %142, align 8
  %144 = getelementptr inbounds double*, double** %143, i64 2
  %145 = load double*, double** %144, align 8
  %146 = load double*, double** %10, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load double**, double*** %148, align 8
  %150 = getelementptr inbounds double*, double** %149, i64 2
  %151 = load double*, double** %150, align 8
  %152 = call i32 @VectorSubtractAccu(double* %145, double* %146, double* %151)
  %153 = load double*, double** %11, align 8
  %154 = load double*, double** %9, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load double**, double*** %156, align 8
  %158 = getelementptr inbounds double*, double** %157, i64 3
  %159 = load double*, double** %158, align 8
  %160 = call i32 @VectorSubtractAccu(double* %153, double* %154, double* %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load double**, double*** %162, align 8
  %164 = getelementptr inbounds double*, double** %163, i64 3
  %165 = load double*, double** %164, align 8
  %166 = load double*, double** %10, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load double**, double*** %168, align 8
  %170 = getelementptr inbounds double*, double** %169, i64 3
  %171 = load double*, double** %170, align 8
  %172 = call i32 @VectorSubtractAccu(double* %165, double* %166, double* %171)
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 4, i32* %174, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  ret %struct.TYPE_4__* %175
}

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorScaleAccu(double*, double, double*) #1

declare dso_local i32 @VectorCopyRegularToAccu(i64*, double*) #1

declare dso_local i32 @CrossProductAccu(double*, double*, double*) #1

declare dso_local %struct.TYPE_4__* @AllocWindingAccu(i32) #1

declare dso_local i32 @VectorSubtractAccu(double*, double*, double*) #1

declare dso_local i32 @VectorAddAccu(double*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
