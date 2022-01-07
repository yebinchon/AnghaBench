; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_ChopFaceSurfaceByBrush.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_ChopFaceSurfaceByBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }

@MAX_BRUSH_SIDES = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_17__* null, align 8
@ON_EPSILON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MAX_BRUSH_SIDES\00", align 1
@numFogFragments = common dso_local global i32 0, align 4
@numMapDrawSurfs = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ChopFaceSurfaceByBrush(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %20 = load i32, i32* @MAX_BRUSH_SIDES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32*, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = icmp eq %struct.TYPE_15__* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = icmp eq %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %3
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %194

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = call i32* @WindingFromDrawSurf(%struct.TYPE_18__* %38)
  store i32* %39, i32** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %133, %37
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %136

46:                                               ; preds = %40
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 %51
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %10, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mapplanes, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %56
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %11, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %46
  %70 = load i32, i32* @qfalse, align 4
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %194

71:                                               ; preds = %46
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = xor i64 %78, 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %133

85:                                               ; preds = %71
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ON_EPSILON, align 4
  %94 = call i32 @ClipWindingEpsilon(i32* %86, i32 %89, i32 %92, i32 %93, i32** %13, i32** %14)
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @FreeWinding(i32* %95)
  %97 = load i32*, i32** %14, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %110, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %23, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @FreeWinding(i32* %108)
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %100

113:                                              ; preds = %100
  %114 = load i32, i32* @qfalse, align 4
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %194

115:                                              ; preds = %85
  %116 = load i32*, i32** %13, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @MAX_BRUSH_SIDES, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %23, i64 %127
  store i32* %125, i32** %128, align 8
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %124, %115
  %132 = load i32*, i32** %14, align 8
  store i32* %132, i32** %12, align 8
  br label %133

133:                                              ; preds = %131, %84
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %40

136:                                              ; preds = %40
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* @numFogFragments, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* @numFogFragments, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %170, %136
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %145
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %23, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = call %struct.TYPE_18__* @DrawSurfaceForSide(i32* %150, i32 %153, %struct.TYPE_16__* %154, i32* %158)
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %18, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %23, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @FreeWinding(i32* %168)
  br label %170

170:                                              ; preds = %149
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %145

173:                                              ; preds = %145
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = call %struct.TYPE_18__* @DrawSurfaceForSide(i32* %174, i32 %177, %struct.TYPE_16__* %178, i32* %179)
  store %struct.TYPE_18__* %180, %struct.TYPE_18__** %18, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %182 = icmp eq %struct.TYPE_18__* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = load i32, i32* @qfalse, align 4
  store i32 %184, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %194

185:                                              ; preds = %173
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %187 = call i32 @ClearSurface(%struct.TYPE_18__* %186)
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %190 = call i32 @memcpy(%struct.TYPE_18__* %188, %struct.TYPE_18__* %189, i32 16)
  %191 = load i32, i32* @numMapDrawSurfs, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* @numMapDrawSurfs, align 4
  %193 = load i32, i32* @qtrue, align 4
  store i32 %193, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %194

194:                                              ; preds = %185, %183, %113, %69, %35
  %195 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @WindingFromDrawSurf(%struct.TYPE_18__*) #2

declare dso_local i32 @ClipWindingEpsilon(i32*, i32, i32, i32, i32**, i32**) #2

declare dso_local i32 @FreeWinding(i32*) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local %struct.TYPE_18__* @DrawSurfaceForSide(i32*, i32, %struct.TYPE_16__*, i32*) #2

declare dso_local i32 @ClearSurface(%struct.TYPE_18__*) #2

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
