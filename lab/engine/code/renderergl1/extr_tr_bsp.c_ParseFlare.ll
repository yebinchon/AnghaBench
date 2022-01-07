; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_ParseFlare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_ParseFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* (i32, i32)* }
%struct.TYPE_11__ = type { i8**, i8**, i8**, i32 }
%struct.TYPE_13__ = type { i32**, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_17__*, i64 }

@LIGHTMAP_BY_VERTEX = common dso_local global i32 0, align 4
@r_singleShader = common dso_local global %struct.TYPE_16__* null, align 8
@tr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@SF_FLARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32*)* @ParseFlare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseFlare(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @LittleLong(i32 %13)
  %15 = add nsw i64 %14, 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LIGHTMAP_BY_VERTEX, align 4
  %22 = call %struct.TYPE_17__* @ShaderForShaderNum(i32 %20, i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_singleShader, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %39, align 8
  br label %40

40:                                               ; preds = %36, %29, %4
  %41 = load %struct.TYPE_11__* (i32, i32)*, %struct.TYPE_11__* (i32, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ri, i32 0, i32 0), align 8
  %42 = load i32, i32* @h_low, align 4
  %43 = call %struct.TYPE_11__* %41(i32 32, i32 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %9, align 8
  %44 = load i32, i32* @SF_FLARE, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = bitcast %struct.TYPE_11__* %47 to i32*
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %101, %40
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %104

54:                                               ; preds = %51
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @LittleFloat(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %62, i8** %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @LittleFloat(i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @LittleFloat(i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  br label %101

101:                                              ; preds = %54
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %51

104:                                              ; preds = %51
  ret void
}

declare dso_local i64 @LittleLong(i32) #1

declare dso_local %struct.TYPE_17__* @ShaderForShaderNum(i32, i32) #1

declare dso_local i8* @LittleFloat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
