; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_PopulateWithPicoModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_PopulateWithPicoModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@PICO_TRIANGLES = common dso_local global i64 0, align 8
@C_NODRAW = common dso_local global i32 0, align 4
@C_TRANSLUCENT = common dso_local global i32 0, align 4
@C_ALPHASHADOW = common dso_local global i32 0, align 4
@C_LIGHTFILTER = common dso_local global i32 0, align 4
@headNodeNum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @PopulateWithPicoModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PopulateWithPicoModel(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  br label %171

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @PicoGetModelNumSurfaces(i32* %26)
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %168, %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %171

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32* @PicoGetModelSurface(i32* %33, i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %168

39:                                               ; preds = %32
  %40 = load i32*, i32** %12, align 8
  %41 = call i64 @PicoGetSurfaceType(i32* %40)
  %42 = load i64, i64* @PICO_TRIANGLES, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %168

45:                                               ; preds = %39
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @PicoGetSurfaceShader(i32* %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %168

51:                                               ; preds = %45
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @PicoGetShaderName(i32* %52)
  %54 = call %struct.TYPE_11__* @ShaderInfoForShader(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp eq %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %168

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @C_NODRAW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %168

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @C_TRANSLUCENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @C_ALPHASHADOW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @C_LIGHTFILTER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %168

94:                                               ; preds = %85, %77, %69
  %95 = load i32, i32* %4, align 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 -1, i32* %97, align 4
  %98 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 24)
  %99 = call i32 @AddTraceInfo(%struct.TYPE_10__* %17)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 3, i32* %101, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @PicoGetSurfaceNumIndexes(i32* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = call i32* @PicoGetSurfaceIndexes(i32* %104, i32 0)
  store i32* %105, i32** %16, align 8
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %162, %94
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %167

110:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %156, %110
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %159

114:                                              ; preds = %111
  %115 = load i32*, i32** %12, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @PicoGetSurfaceXYZ(i32* %115, i32 %120)
  store i32* %121, i32** %14, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32* @PicoGetSurfaceST(i32* %122, i32 0, i32 %127)
  store i32* %128, i32** %15, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @VectorCopy(i32* %129, i32 %136)
  %138 = load i32*, i32** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @Vector2Copy(i32* %138, i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @m4x4_transform_point(i32* %147, i32 %154)
  br label %156

156:                                              ; preds = %114
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %111

159:                                              ; preds = %111
  %160 = load i32, i32* @headNodeNum, align 4
  %161 = call i32 @FilterTraceWindingIntoNodes_r(%struct.TYPE_9__* %18, i32 %160)
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 3
  store i32 %164, i32* %8, align 4
  %165 = load i32*, i32** %16, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  store i32* %166, i32** %16, align 8
  br label %106

167:                                              ; preds = %106
  br label %168

168:                                              ; preds = %167, %93, %68, %59, %50, %44, %38
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %28

171:                                              ; preds = %24, %28
  ret void
}

declare dso_local i32 @PicoGetModelNumSurfaces(i32*) #1

declare dso_local i32* @PicoGetModelSurface(i32*, i32) #1

declare dso_local i64 @PicoGetSurfaceType(i32*) #1

declare dso_local i32* @PicoGetSurfaceShader(i32*) #1

declare dso_local %struct.TYPE_11__* @ShaderInfoForShader(i32) #1

declare dso_local i32 @PicoGetShaderName(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @AddTraceInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @PicoGetSurfaceNumIndexes(i32*) #1

declare dso_local i32* @PicoGetSurfaceIndexes(i32*, i32) #1

declare dso_local i32* @PicoGetSurfaceXYZ(i32*, i32) #1

declare dso_local i32* @PicoGetSurfaceST(i32*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32*, i32) #1

declare dso_local i32 @Vector2Copy(i32*, i32) #1

declare dso_local i32 @m4x4_transform_point(i32*, i32) #1

declare dso_local i32 @FilterTraceWindingIntoNodes_r(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
