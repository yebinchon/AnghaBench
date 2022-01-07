; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_BrushBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_BrushBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"-------- Brush BSP ---------\0A\00", align 1
@c_totalsides = common dso_local global i32 0, align 4
@microvolume = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"WARNING: entity %i, brush %i: microbrush\0A\00", align 1
@SFL_BEVEL = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i64 0, align 8
@SFL_VISIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%6i brushes\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%6i visible faces\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%6i nonvisible faces\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%6i total sides\0A\00", align 1
@c_active_brushes = common dso_local global i32 0, align 4
@c_nodememory = common dso_local global i64 0, align 8
@c_brushmemory = common dso_local global i64 0, align 8
@c_peak_brushmemory = common dso_local global i64 0, align 8
@c_nodes = common dso_local global i64 0, align 8
@c_nonvis = common dso_local global i64 0, align 8
@numrecurse = common dso_local global i64 0, align 8
@cancelconversion = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%6d splits\0D\0A\00", align 1
@numthreads = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"%6i KB of peak total bsp memory\0A\00", align 1
@c_peak_totalbspmemory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @BrushBSP(%struct.TYPE_16__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = call %struct.TYPE_14__* (...) @Tree_Alloc()
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %14, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* @c_totalsides, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %12, align 8
  br label %19

19:                                               ; preds = %133, %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %137

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %26 = call i64 @BrushVolume(%struct.TYPE_16__* %25)
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @microvolume, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %30, %22
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %104, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %43
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SFL_BEVEL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %104

62:                                               ; preds = %49
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %104

73:                                               ; preds = %62
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TEXINFO_NODE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %104

85:                                               ; preds = %73
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SFL_VISIBLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %103

100:                                              ; preds = %85
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %84, %72, %61
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %43

107:                                              ; preds = %43
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @c_totalsides, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* @c_totalsides, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @AddPointToBounds(i32 %115, i32 %118, i32 %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @AddPointToBounds(i32 %125, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %107
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %12, align 8
  br label %19

137:                                              ; preds = %19
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @c_totalsides, align 4
  %145 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* @c_active_brushes, align 4
  store i64 0, i64* @c_nodememory, align 8
  store i64 0, i64* @c_brushmemory, align 8
  store i64 0, i64* @c_peak_brushmemory, align 8
  store i64 0, i64* @c_nodes, align 8
  store i64 0, i64* @c_nonvis, align 8
  %147 = call %struct.TYPE_15__* (...) @AllocNode()
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %13, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @BrushFromBounds(i32 %148, i32 %149)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %155, align 8
  store i64 0, i64* @numrecurse, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  store %struct.TYPE_16__* %156, %struct.TYPE_16__** %160, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %162 = call i32 @BuildTree(%struct.TYPE_14__* %161)
  %163 = load i64, i64* @cancelconversion, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %137
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %4, align 8
  br label %179

167:                                              ; preds = %137
  %168 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i64, i64* @numrecurse, align 8
  %170 = call i32 @Log_Write(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %169)
  %171 = load i32, i32* @numthreads, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* @c_peak_totalbspmemory, align 4
  %175 = ashr i32 %174, 10
  %176 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %173, %167
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %4, align 8
  br label %179

179:                                              ; preds = %177, %165
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %180
}

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @Tree_Alloc(...) #1

declare dso_local i64 @BrushVolume(%struct.TYPE_16__*) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @AllocNode(...) #1

declare dso_local i32 @BrushFromBounds(i32, i32) #1

declare dso_local i32 @BuildTree(%struct.TYPE_14__*) #1

declare dso_local i32 @qprintf(i8*) #1

declare dso_local i32 @Log_Write(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
