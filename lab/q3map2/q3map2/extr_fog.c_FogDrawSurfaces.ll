; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_FogDrawSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_FogDrawSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64*, i64* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"----- FogDrawSurfs -----\0A\00", align 1
@numFogFragments = common dso_local global i32 0, align 4
@numMapFogs = common dso_local global i32 0, align 4
@mapFogs = common dso_local global %struct.TYPE_14__* null, align 8
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%9d fog polygon fragments\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%9d fog patch fragments\0A\00", align 1
@numFogPatchFragments = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%9d fogged drawsurfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FogDrawSurfaces(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %14 = load i32, i32* @SYS_VRB, align 4
  %15 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  store i32 0, i32* @numFogFragments, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %161, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @numMapFogs, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %164

20:                                               ; preds = %16
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mapFogs, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 %23
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %7, align 8
  %25 = load i32, i32* @numMapDrawSurfs, align 4
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %157, %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %160

30:                                               ; preds = %26
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapDrawSurfs, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %33
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %157

42:                                               ; preds = %30
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = icmp eq %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %157

53:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %146

54:                                               ; preds = %42
  %55 = load i64*, i64** %9, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = call i32 @ClearBounds(i64* %55, i64* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %76, %54
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64*, i64** %9, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = call i32 @AddPointToBounds(i32 %72, i64* %73, i64* %74)
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %58

79:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %118, %79
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  %84 = load i64*, i64** %9, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %88, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %121

100:                                              ; preds = %83
  %101 = load i64*, i64** %10, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %105, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  br label %121

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %80

121:                                              ; preds = %116, %99, %80
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %157

125:                                              ; preds = %121
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %144 [
    i32 132, label %129
    i32 129, label %136
    i32 128, label %143
    i32 131, label %143
    i32 130, label %143
  ]

129:                                              ; preds = %125
  %130 = load i32*, i32** %2, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = call i32 @ChopFaceSurfaceByBrush(i32* %130, %struct.TYPE_13__* %131, %struct.TYPE_15__* %134)
  store i32 %135, i32* %11, align 4
  br label %145

136:                                              ; preds = %125
  %137 = load i32*, i32** %2, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = call i32 @ChopPatchSurfaceByBrush(i32* %137, %struct.TYPE_13__* %138, %struct.TYPE_15__* %141)
  store i32 %142, i32* %11, align 4
  br label %145

143:                                              ; preds = %125, %125, %125
  store i32 1, i32* %11, align 4
  br label %145

144:                                              ; preds = %125
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %144, %143, %136, %129
  br label %146

146:                                              ; preds = %145, %53
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %149, %146
  br label %157

157:                                              ; preds = %156, %124, %52, %41
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %26

160:                                              ; preds = %26
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %16

164:                                              ; preds = %16
  %165 = load i32, i32* @SYS_VRB, align 4
  %166 = load i32, i32* @numFogFragments, align 4
  %167 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @SYS_VRB, align 4
  %169 = load i32, i32* @numFogPatchFragments, align 4
  %170 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @SYS_VRB, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @ClearBounds(i64*, i64*) #1

declare dso_local i32 @AddPointToBounds(i32, i64*, i64*) #1

declare dso_local i32 @ChopFaceSurfaceByBrush(i32*, %struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ChopPatchSurfaceByBrush(i32*, %struct.TYPE_13__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
