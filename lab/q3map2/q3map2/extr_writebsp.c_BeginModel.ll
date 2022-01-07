; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_BeginModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_BeginModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, %struct.TYPE_14__* }

@numBSPModels = common dso_local global i64 0, align 8
@MAX_MAP_MODELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"MAX_MAP_MODELS\00", align 1
@bspModels = common dso_local global %struct.TYPE_13__* null, align 8
@entities = common dso_local global %struct.TYPE_12__* null, align 8
@mapEntityNum = common dso_local global i64 0, align 8
@C_LIGHTGRID = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"BSP bounds: { %f %f %f } { %f %f %f }\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Lightgrid bounds: { %f %f %f } { %f %f %f }\0A\00", align 1
@numBSPDrawSurfaces = common dso_local global i32 0, align 4
@numBSPBrushes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginModel() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = load i64, i64* @numBSPModels, align 8
  %11 = load i64, i64* @MAX_MAP_MODELS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspModels, align 8
  %17 = load i64, i64* @numBSPModels, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %17
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %1, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %20 = load i64, i64* @mapEntityNum, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %20
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %3, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @ClearBounds(i32* %22, i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ClearBounds(i32* %25, i32* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %2, align 8
  br label %31

31:                                               ; preds = %73, %15
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %73

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @AddPointToBounds(i32 %43, i32* %44, i32* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @AddPointToBounds(i32 %49, i32* %50, i32* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @C_LIGHTGRID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %40
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @AddPointToBounds(i32 %62, i32* %63, i32* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @AddPointToBounds(i32 %68, i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %59, %40
  br label %73

73:                                               ; preds = %72, %39
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %2, align 8
  br label %31

77:                                               ; preds = %31
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %8, align 8
  br label %81

81:                                               ; preds = %114, %77
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %84, label %118

84:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %110, %84
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %90, %94
  %96 = icmp slt i32 %86, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %85
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @AddPointToBounds(i32 %106, i32* %107, i32* %108)
  br label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %85

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %8, align 8
  br label %81

118:                                              ; preds = %81
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 99999
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @VectorCopy(i32* %124, i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @VectorCopy(i32* %129, i32 %132)
  br label %145

134:                                              ; preds = %118
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @VectorCopy(i32* %135, i32 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @VectorCopy(i32* %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %123
  %146 = load i32, i32* @SYS_VRB, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @Sys_FPrintf(i32 %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %152, i32 %155, i32 %158, i32 %161, i32 %164)
  %166 = load i32, i32* @SYS_VRB, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @Sys_FPrintf(i32 %166, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %184)
  %186 = load i32, i32* @numBSPDrawSurfaces, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @numBSPBrushes, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @ClearBounds(i32*, i32*) #1

declare dso_local i32 @AddPointToBounds(i32, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
