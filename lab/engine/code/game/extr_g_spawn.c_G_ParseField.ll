; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_G_ParseField.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_G_ParseField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@fields = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_ParseField(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fields, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  br label %12

12:                                               ; preds = %130, %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %133

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @Q_stricmp(i64 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %129, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %128 [
    i32 129, label %29
    i32 128, label %39
    i32 130, label %81
    i32 131, label %90
    i32 132, label %100
  ]

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @G_NewString(i8* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = bitcast i32* %37 to i8**
  store i8* %31, i8** %38, align 8
  br label %128

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = load float*, float** %10, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float*, float** %10, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float*, float** %10, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), float* %42, float* %44, float* %46)
  %48 = load float*, float** %10, align 8
  %49 = getelementptr inbounds float, float* %48, i64 0
  %50 = load float, float* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = bitcast i32* %56 to float*
  %58 = getelementptr inbounds float, float* %57, i64 0
  store float %50, float* %58, align 4
  %59 = load float*, float** %10, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load float, float* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = bitcast i32* %67 to float*
  %69 = getelementptr inbounds float, float* %68, i64 1
  store float %61, float* %69, align 4
  %70 = load float*, float** %10, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = bitcast i32* %78 to float*
  %80 = getelementptr inbounds float, float* %79, i64 2
  store float %72, float* %80, align 4
  br label %128

81:                                               ; preds = %24
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @atoi(i8* %82)
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 %83, i32* %89, align 4
  br label %128

90:                                               ; preds = %24
  %91 = load i8*, i8** %5, align 8
  %92 = call float @atof(i8* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = bitcast i32* %98 to float*
  store float %92, float* %99, align 4
  br label %128

100:                                              ; preds = %24
  %101 = load i8*, i8** %5, align 8
  %102 = call float @atof(i8* %101)
  store float %102, float* %9, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = bitcast i32* %108 to float*
  %110 = getelementptr inbounds float, float* %109, i64 0
  store float 0.000000e+00, float* %110, align 4
  %111 = load float, float* %9, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = bitcast i32* %117 to float*
  %119 = getelementptr inbounds float, float* %118, i64 1
  store float %111, float* %119, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = bitcast i32* %125 to float*
  %127 = getelementptr inbounds float, float* %126, i64 2
  store float 0.000000e+00, float* %127, align 4
  br label %128

128:                                              ; preds = %24, %100, %90, %81, %39, %29
  br label %133

129:                                              ; preds = %17
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 1
  store %struct.TYPE_3__* %132, %struct.TYPE_3__** %7, align 8
  br label %12

133:                                              ; preds = %128, %12
  ret void
}

declare dso_local i32 @Q_stricmp(i64, i8*) #1

declare dso_local i8* @G_NewString(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, float*, float*, float*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local float @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
