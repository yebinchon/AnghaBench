; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_FlipAreaFaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_FlipAreaFaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"face %d has no front area\0A\00", align 1
@mapplanes = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"area %d face %d flipped: front area %d, back area %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_FlipAreaFaces(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64* null, i64** %7, align 8
  store float 0.000000e+00, float* %8, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  br label %12

12:                                               ; preds = %43, %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = icmp ne %struct.TYPE_9__* %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @WindingCenter(i32 %34, i64* %35)
  %37 = load i64*, i64** %7, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @VectorAdd(i64* %37, i64* %38, i64* %39)
  %41 = load float, float* %8, align 4
  %42 = fadd float %41, 1.000000e+00
  store float %42, float* %8, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %4, align 8
  br label %12

51:                                               ; preds = %12
  %52 = load float, float* %8, align 4
  %53 = fdiv float 1.000000e+00, %52
  store float %53, float* %8, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = load float, float* %8, align 4
  %56 = load i64*, i64** %7, align 8
  %57 = call i32 @VectorScale(i64* %54, float %55, i64* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %4, align 8
  br label %61

61:                                               ; preds = %124, %51
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %132

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = icmp ne %struct.TYPE_9__* %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapplanes, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = xor i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %77
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %5, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = call i64 @DotProduct(i64* %81, i64* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %64
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = icmp ne %struct.TYPE_9__* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  br label %107

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %106, %100
  %108 = phi i32 [ %105, %100 ], [ 0, %106 ]
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = icmp ne %struct.TYPE_7__* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  br label %120

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %113
  %121 = phi i32 [ %118, %113 ], [ 0, %119 ]
  %122 = call i32 @Log_Print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95, i32 %108, i32 %121)
  br label %123

123:                                              ; preds = %120, %64
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %4, align 8
  br label %61

132:                                              ; preds = %61
  ret void
}

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @WindingCenter(i32, i64*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, float, i64*) #1

declare dso_local i64 @DotProduct(i64*, i64*) #1

declare dso_local i32 @Log_Print(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
