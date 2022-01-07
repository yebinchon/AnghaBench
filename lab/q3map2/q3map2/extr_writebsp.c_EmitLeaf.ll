; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitLeaf.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i64, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__*, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32 }

@numBSPLeafs = common dso_local global i64 0, align 8
@MAX_MAP_LEAFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"MAX_MAP_LEAFS\00", align 1
@bspLeafs = common dso_local global %struct.TYPE_12__* null, align 8
@numBSPLeafBrushes = common dso_local global i64 0, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"WARNING: Node brush list corrupted (0x%08X)\0A\00", align 1
@MAX_MAP_LEAFBRUSHES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"MAX_MAP_LEAFBRUSHES\00", align 1
@bspLeafBrushes = common dso_local global i32* null, align 8
@numBSPLeafSurfaces = common dso_local global i64 0, align 8
@MAX_MAP_LEAFFACES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"MAX_MAP_LEAFFACES\00", align 1
@bspLeafSurfaces = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitLeaf(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load i64, i64* @numBSPLeafs, align 8
  %7 = load i64, i64* @MAX_MAP_LEAFS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bspLeafs, align 8
  %13 = load i64, i64* @numBSPLeafs, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i64 %13
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  %15 = load i64, i64* @numBSPLeafs, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* @numBSPLeafs, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VectorCopy(i32 %29, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @VectorCopy(i32 %36, i32 %39)
  %41 = load i64, i64* @numBSPLeafBrushes, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %4, align 8
  br label %47

47:                                               ; preds = %75, %11
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = ptrtoint %struct.TYPE_13__* %51 to i64
  %53 = icmp ult i64 %52, 256
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @SYS_WRN, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @Sys_FPrintf(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %56)
  br label %79

58:                                               ; preds = %50
  %59 = load i64, i64* @numBSPLeafBrushes, align 8
  %60 = load i64, i64* @MAX_MAP_LEAFBRUSHES, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @bspLeafBrushes, align 8
  %71 = load i64, i64* @numBSPLeafBrushes, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i64, i64* @numBSPLeafBrushes, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* @numBSPLeafBrushes, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %4, align 8
  br label %47

79:                                               ; preds = %54, %47
  %80 = load i64, i64* @numBSPLeafBrushes, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %80, %83
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %129

92:                                               ; preds = %79
  %93 = load i64, i64* @numBSPLeafSurfaces, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %5, align 8
  br label %99

99:                                               ; preds = %117, %92
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load i64, i64* @numBSPLeafSurfaces, align 8
  %104 = load i64, i64* @MAX_MAP_LEAFFACES, align 8
  %105 = icmp uge i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %102
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** @bspLeafSurfaces, align 8
  %113 = load i64, i64* @numBSPLeafSurfaces, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i64, i64* @numBSPLeafSurfaces, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* @numBSPLeafSurfaces, align 8
  br label %117

117:                                              ; preds = %108
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %5, align 8
  br label %99

121:                                              ; preds = %99
  %122 = load i64, i64* @numBSPLeafSurfaces, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %122, %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %121, %91
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
