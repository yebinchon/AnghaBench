; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetTexture.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { float }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { float* }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @lwGetTexture(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call %struct.TYPE_16__* @_pico_calloc(i32 1, i32 24)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %93

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load float*, float** %22, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  store float 1.000000e+00, float* %24, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  store float 1.000000e+00, float* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float 1.000000e+00, float* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store float 1.000000e+00, float* %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call zeroext i16 @getU2(i32* %42)
  store i16 %43, i16* %9, align 2
  %44 = load i32*, i32** %5, align 8
  %45 = load i16, i16* %9, align 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = call i32 @lwGetTHeader(i32* %44, i16 zeroext %45, %struct.TYPE_16__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %15
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = call i32 @_pico_free(%struct.TYPE_16__* %50)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %93

52:                                               ; preds = %15
  %53 = load i32, i32* %6, align 4
  %54 = load i16, i16* %9, align 2
  %55 = zext i16 %54 to i32
  %56 = sub nsw i32 %53, %55
  %57 = sub nsw i32 %56, 6
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %9, align 2
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %75 [
    i32 129, label %60
    i32 128, label %65
    i32 130, label %70
  ]

60:                                               ; preds = %52
  %61 = load i32*, i32** %5, align 8
  %62 = load i16, i16* %9, align 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = call i32 @lwGetImageMap(i32* %61, i16 zeroext %62, %struct.TYPE_16__* %63)
  store i32 %64, i32* %10, align 4
  br label %83

65:                                               ; preds = %52
  %66 = load i32*, i32** %5, align 8
  %67 = load i16, i16* %9, align 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = call i32 @lwGetProcedural(i32* %66, i16 zeroext %67, %struct.TYPE_16__* %68)
  store i32 %69, i32* %10, align 4
  br label %83

70:                                               ; preds = %52
  %71 = load i32*, i32** %5, align 8
  %72 = load i16, i16* %9, align 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = call i32 @lwGetGradient(i32* %71, i16 zeroext %72, %struct.TYPE_16__* %73)
  store i32 %74, i32* %10, align 4
  br label %83

75:                                               ; preds = %52
  %76 = load i32*, i32** %5, align 8
  %77 = load i16, i16* %9, align 2
  %78 = load i32, i32* @PICO_SEEK_CUR, align 4
  %79 = call i32 @_pico_memstream_seek(i32* %76, i16 zeroext %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %75, %70, %65, %60
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = call i32 @lwFreeTexture(%struct.TYPE_16__* %87)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @set_flen(i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %4, align 8
  br label %93

93:                                               ; preds = %89, %86, %49, %14
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %94
}

declare dso_local %struct.TYPE_16__* @_pico_calloc(i32, i32) #1

declare dso_local zeroext i16 @getU2(i32*) #1

declare dso_local i32 @lwGetTHeader(i32*, i16 zeroext, %struct.TYPE_16__*) #1

declare dso_local i32 @_pico_free(%struct.TYPE_16__*) #1

declare dso_local i32 @lwGetImageMap(i32*, i16 zeroext, %struct.TYPE_16__*) #1

declare dso_local i32 @lwGetProcedural(i32*, i16 zeroext, %struct.TYPE_16__*) #1

declare dso_local i32 @lwGetGradient(i32*, i16 zeroext, %struct.TYPE_16__*) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

declare dso_local i32 @lwFreeTexture(%struct.TYPE_16__*) #1

declare dso_local i32 @set_flen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
