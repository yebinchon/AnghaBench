; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_SetEntityOrigins.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_SetEntityOrigins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@numBSPDrawVerts = common dso_local global i32 0, align 4
@yDrawVerts = common dso_local global %struct.TYPE_12__* null, align 8
@bspDrawVerts = common dso_local global %struct.TYPE_13__* null, align 8
@numEntities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@bspModels = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@bspDrawSurfaces = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetEntityOrigins() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = load i32, i32* @numBSPDrawVerts, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_12__* @safe_malloc(i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** @yDrawVerts, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @yDrawVerts, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspDrawVerts, align 8
  %18 = load i32, i32* @numBSPDrawVerts, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memcpy(%struct.TYPE_12__* %16, %struct.TYPE_13__* %17, i32 %21)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %109, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @numEntities, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %23
  %28 = load i32*, i32** @entities, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @ValueForKey(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 42
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %109

40:                                               ; preds = %27
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @atoi(i8* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspModels, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @ValueForKey(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %109

56:                                               ; preds = %40
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @GetVectorForKey(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %105, %56
  %61 = load i32, i32* %2, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bspDrawSurfaces, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %73
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %101, %66
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspDrawVerts, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @yDrawVerts, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @VectorAdd(i32 %87, i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %81
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %75

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %60

108:                                              ; preds = %60
  br label %109

109:                                              ; preds = %108, %55, %39
  %110 = load i32, i32* %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %23

112:                                              ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_12__* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @GetVectorForKey(i32*, i8*, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
