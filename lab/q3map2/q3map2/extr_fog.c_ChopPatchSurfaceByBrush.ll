; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_ChopPatchSurfaceByBrush.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_ChopPatchSurfaceByBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__* }

@MAX_BRUSH_SIDES = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_23__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MAX_BRUSH_SIDES\00", align 1
@numFogPatchFragments = common dso_local global i32 0, align 4
@SURFACE_PATCH = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ChopPatchSurfaceByBrush(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %20 = load i32, i32* @MAX_BRUSH_SIDES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.TYPE_24__*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = call %struct.TYPE_24__* @DrawSurfToMesh(%struct.TYPE_25__* %24)
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %15, align 8
  store i32 0, i32* %14, align 4
  store i32 4, i32* %8, align 4
  br label %26

26:                                               ; preds = %85, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 5
  br i1 %28, label %29, label %88

29:                                               ; preds = %26
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i64 %34
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %10, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** @mapplanes, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i64 %39
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %11, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SplitMeshByPlane(%struct.TYPE_24__* %41, i32 %44, i32 %47, %struct.TYPE_24__** %16, %struct.TYPE_24__** %17)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %50 = icmp ne %struct.TYPE_24__* %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %58
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = call i32 @FreeMesh(%struct.TYPE_24__* %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* @qfalse, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %238

67:                                               ; preds = %29
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %15, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %70 = icmp ne %struct.TYPE_24__* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @MAX_BRUSH_SIDES, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %80
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %81, align 8
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %77, %67
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %26

88:                                               ; preds = %26
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @numFogPatchFragments, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* @numFogPatchFragments, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %177, %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %180

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %98
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = call %struct.TYPE_24__* @TransposeMesh(%struct.TYPE_24__* %100)
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %103
  store %struct.TYPE_24__* %101, %struct.TYPE_24__** %104, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %106
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = call i32 @InvertMesh(%struct.TYPE_24__* %108)
  %110 = load i32, i32* @SURFACE_PATCH, align 4
  %111 = call %struct.TYPE_25__* @AllocDrawSurface(i32 %110)
  store %struct.TYPE_25__* %111, %struct.TYPE_25__** %18, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %114 = call i32 @memcpy(%struct.TYPE_25__* %112, %struct.TYPE_25__* %113, i32 24)
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %116
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %124
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %132
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %138
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %136, %142
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 24
  %151 = trunc i64 %150 to i32
  %152 = call i8* @safe_malloc(i32 %151)
  %153 = bitcast i8* %152 to %struct.TYPE_25__*
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 3
  store %struct.TYPE_25__* %153, %struct.TYPE_25__** %155, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %160
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %163, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 24
  %170 = trunc i64 %169 to i32
  %171 = call i32 @memcpy(%struct.TYPE_25__* %158, %struct.TYPE_25__* %164, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 %173
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = call i32 @FreeMesh(%struct.TYPE_24__* %175)
  br label %177

177:                                              ; preds = %96
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %92

180:                                              ; preds = %92
  %181 = load i32, i32* %14, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %234

183:                                              ; preds = %180
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %185 = call %struct.TYPE_24__* @TransposeMesh(%struct.TYPE_24__* %184)
  store %struct.TYPE_24__* %185, %struct.TYPE_24__** %15, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %187 = call i32 @InvertMesh(%struct.TYPE_24__* %186)
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %200, %203
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %208, align 8
  %210 = call i32 @free(%struct.TYPE_25__* %209)
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 24
  %216 = trunc i64 %215 to i32
  %217 = call i8* @safe_malloc(i32 %216)
  %218 = bitcast i8* %217 to %struct.TYPE_25__*
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 3
  store %struct.TYPE_25__* %218, %struct.TYPE_25__** %220, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %222, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 24
  %232 = trunc i64 %231 to i32
  %233 = call i32 @memcpy(%struct.TYPE_25__* %223, %struct.TYPE_25__* %226, i32 %232)
  br label %234

234:                                              ; preds = %183, %180
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %236 = call i32 @FreeMesh(%struct.TYPE_24__* %235)
  %237 = load i32, i32* @qtrue, align 4
  store i32 %237, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %238

238:                                              ; preds = %234, %65
  %239 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_24__* @DrawSurfToMesh(%struct.TYPE_25__*) #2

declare dso_local i32 @SplitMeshByPlane(%struct.TYPE_24__*, i32, i32, %struct.TYPE_24__**, %struct.TYPE_24__**) #2

declare dso_local i32 @FreeMesh(%struct.TYPE_24__*) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local %struct.TYPE_24__* @TransposeMesh(%struct.TYPE_24__*) #2

declare dso_local i32 @InvertMesh(%struct.TYPE_24__*) #2

declare dso_local %struct.TYPE_25__* @AllocDrawSurface(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #2

declare dso_local i8* @safe_malloc(i32) #2

declare dso_local i32 @free(%struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
