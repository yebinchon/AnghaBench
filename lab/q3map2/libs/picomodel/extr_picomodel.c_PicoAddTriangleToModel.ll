; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoAddTriangleToModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoAddTriangleToModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@PICO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not allocate a new surface!\0A\00", align 1
@PICO_TRIANGLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoAddTriangleToModel(%struct.TYPE_23__* %0, i32** %1, i32** %2, i32 %3, i32** %4, i32 %5, i32** %6, %struct.TYPE_22__* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32** %2, i32*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32** %6, i32*** %16, align 8
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %17, align 8
  store i32* %8, i32** %18, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %22, align 8
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %45, %9
  %25 = load i32, i32* %19, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %32, align 8
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %33, i64 %35
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %22, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %42 = icmp eq %struct.TYPE_22__* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %48

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %19, align 4
  br label %24

48:                                               ; preds = %43, %24
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %50 = icmp ne %struct.TYPE_21__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %19, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51, %48
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %59 = call %struct.TYPE_21__* @PicoNewSurface(%struct.TYPE_23__* %58)
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %22, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %61 = icmp ne %struct.TYPE_21__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @PICO_ERROR, align 4
  %64 = call i32 @_pico_printf(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %198

65:                                               ; preds = %57
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %67 = load i32, i32* @PICO_TRIANGLES, align 4
  %68 = call i32 @PicoSetSurfaceType(%struct.TYPE_21__* %66, i32 %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PicoSetSurfaceName(%struct.TYPE_21__* %69, i32 %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %76 = call i32 @PicoSetSurfaceShader(%struct.TYPE_21__* %74, %struct.TYPE_22__* %75)
  br label %77

77:                                               ; preds = %65, %51
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %195, %77
  %79 = load i32, i32* %19, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %198

81:                                               ; preds = %78
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %83 = call i32 @PicoGetSurfaceNumIndexes(%struct.TYPE_21__* %82)
  store i32 %83, i32* %23, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %85 = load i32**, i32*** %11, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32**, i32*** %12, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32**, i32*** %14, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32**, i32*** %16, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PicoFindSurfaceVertexNum(%struct.TYPE_21__* %84, i32 %90, i32 %96, i32 %97, i32* %102, i32 %103, i32* %108, i32 %113)
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %190

117:                                              ; preds = %81
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %119 = call i32 @PicoGetSurfaceNumVertexes(%struct.TYPE_21__* %118)
  store i32 %119, i32* %21, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %121 = load i32, i32* %21, align 4
  %122 = load i32**, i32*** %11, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @PicoSetSurfaceXYZ(%struct.TYPE_21__* %120, i32 %121, i32 %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %130 = load i32, i32* %21, align 4
  %131 = load i32**, i32*** %12, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @PicoSetSurfaceNormal(%struct.TYPE_21__* %129, i32 %130, i32 %136)
  store i32 0, i32* %20, align 4
  br label %138

138:                                              ; preds = %156, %117
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load i32**, i32*** %16, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %20, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @PicoSetSurfaceColor(%struct.TYPE_21__* %143, i32 %144, i32 %145, i32 %154)
  br label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %138

159:                                              ; preds = %138
  store i32 0, i32* %20, align 4
  br label %160

160:                                              ; preds = %178, %159
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %160
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32**, i32*** %14, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @PicoSetSurfaceST(%struct.TYPE_21__* %165, i32 %166, i32 %167, i32 %176)
  br label %178

178:                                              ; preds = %164
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %160

181:                                              ; preds = %160
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %183 = load i32, i32* %21, align 4
  %184 = load i32*, i32** %18, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @PicoSetSurfaceSmoothingGroup(%struct.TYPE_21__* %182, i32 %183, i32 %188)
  br label %190

190:                                              ; preds = %181, %81
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @PicoSetSurfaceIndex(%struct.TYPE_21__* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %19, align 4
  br label %78

198:                                              ; preds = %62, %78
  ret void
}

declare dso_local %struct.TYPE_21__* @PicoNewSurface(%struct.TYPE_23__*) #1

declare dso_local i32 @_pico_printf(i32, i8*) #1

declare dso_local i32 @PicoSetSurfaceType(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @PicoSetSurfaceName(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @PicoSetSurfaceShader(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @PicoGetSurfaceNumIndexes(%struct.TYPE_21__*) #1

declare dso_local i32 @PicoFindSurfaceVertexNum(%struct.TYPE_21__*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @PicoGetSurfaceNumVertexes(%struct.TYPE_21__*) #1

declare dso_local i32 @PicoSetSurfaceXYZ(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @PicoSetSurfaceNormal(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @PicoSetSurfaceColor(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @PicoSetSurfaceST(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @PicoSetSurfaceSmoothingGroup(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @PicoSetSurfaceIndex(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
