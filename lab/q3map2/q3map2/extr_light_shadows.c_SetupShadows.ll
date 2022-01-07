; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_shadows.c_SetupShadows.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_shadows.c_SetupShadows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@lights = common dso_local global %struct.TYPE_10__* null, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"--- SetupShadows ---\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@dleafs = common dso_local global %struct.TYPE_11__* null, align 8
@numleafs = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@dleafsurfaces = common dso_local global i32* null, align 8
@drawSurfaces = common dso_local global i32* null, align 8
@surfaceInfos = common dso_local global %struct.TYPE_8__* null, align 8
@CONTENTS_TRANSLUCENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupShadows() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lights, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %125

13:                                               ; preds = %0
  %14 = load i32, i32* @SYS_VRB, align 4
  %15 = call i32 @Sys_FPrintf(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @numDrawSurfaces, align 4
  %17 = sdiv i32 %16, 8
  %18 = add nsw i32 %17, 1
  %19 = call i32* @safe_malloc(i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lights, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  br label %21

21:                                               ; preds = %121, %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %125

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %121

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @numDrawSurfaces, align 4
  %33 = sdiv i32 %32, 8
  %34 = add nsw i32 %33, 1
  %35 = call i32 @memset(i32* %31, i32 0, i32 %34)
  store i32 0, i32* %1, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dleafs, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %5, align 8
  br label %37

37:                                               ; preds = %115, %30
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @numleafs, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ClusterVisible(i64 %44, i32 %47)
  %49 = load i64, i64* @qfalse, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %115

52:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %111, %52
  %54 = load i32, i32* %2, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %53
  %60 = load i32*, i32** @dleafsurfaces, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %3, align 4
  %71 = ashr i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 7
  %77 = shl i32 1, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %59
  br label %111

81:                                               ; preds = %59
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 7
  %84 = shl i32 1, %83
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %3, align 4
  %87 = ashr i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %84
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** @drawSurfaces, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32* %95, i32** %6, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @surfaceInfos, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %7, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %8, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CONTENTS_TRANSLUCENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %81
  br label %111

110:                                              ; preds = %81
  br label %111

111:                                              ; preds = %110, %109, %80
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %2, align 4
  br label %53

114:                                              ; preds = %53
  br label %115

115:                                              ; preds = %114, %51
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %1, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 1
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %5, align 8
  br label %37

120:                                              ; preds = %37
  br label %121

121:                                              ; preds = %120, %29
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %4, align 8
  br label %21

125:                                              ; preds = %12, %21
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ClusterVisible(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
