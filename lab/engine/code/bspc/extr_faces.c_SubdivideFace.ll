; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_SubdivideFace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_SubdivideFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__**, %struct.TYPE_15__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i32* }

@texinfo = common dso_local global %struct.TYPE_13__* null, align 8
@SURF_WARP = common dso_local global i32 0, align 4
@SURF_SKY = common dso_local global i32 0, align 4
@subdivide_size = common dso_local global float 0.000000e+00, align 4
@c_subdivide = common dso_local global i32 0, align 4
@ON_EPSILON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SubdivideFace: didn't split the polygon\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SubdivideFace(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %204

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @texinfo, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %25
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SURF_WARP, align 4
  %31 = load i32, i32* @SURF_SKY, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %204

36:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %201, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %204

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  store float 9.999990e+05, float* %5, align 4
  store float -9.999990e+05, float* %6, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @VectorCopy(i32 %48, i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %13, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %82, %41
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call float @DotProduct(i32 %67, i32 %68)
  store float %69, float* %7, align 4
  %70 = load float, float* %7, align 4
  %71 = load float, float* %5, align 4
  %72 = fcmp olt float %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load float, float* %7, align 4
  store float %74, float* %5, align 4
  br label %75

75:                                               ; preds = %73, %60
  %76 = load float, float* %7, align 4
  %77 = load float, float* %6, align 4
  %78 = fcmp ogt float %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load float, float* %7, align 4
  store float %80, float* %6, align 4
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load float, float* %6, align 4
  %90 = load float, float* %5, align 4
  %91 = fsub float %89, %90
  %92 = load float, float* @subdivide_size, align 4
  %93 = fcmp ole float %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %200

95:                                               ; preds = %88
  br label %104

96:                                               ; preds = %85
  %97 = load float, float* %6, align 4
  %98 = load float, float* %5, align 4
  %99 = fsub float %97, %98
  %100 = load float, float* @subdivide_size, align 4
  %101 = fcmp ole float %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %200

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i32, i32* @c_subdivide, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @c_subdivide, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call float @VectorNormalize(i32 %107)
  store float %108, float* %7, align 4
  %109 = load float, float* %5, align 4
  %110 = load float, float* @subdivide_size, align 4
  %111 = fadd float %109, %110
  %112 = fsub float %111, 1.600000e+01
  %113 = load float, float* %7, align 4
  %114 = fdiv float %112, %113
  store float %114, float* %12, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load float, float* %12, align 4
  %118 = load i32, i32* @ON_EPSILON, align 4
  %119 = call i32 @ClipWindingEpsilon(%struct.TYPE_12__* %115, i32 %116, float %117, i32 %118, %struct.TYPE_12__** %14, %struct.TYPE_12__** %15)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %121 = icmp ne %struct.TYPE_12__* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %104
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %124 = icmp ne %struct.TYPE_12__* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122, %104
  %126 = call i32 @Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = call i8* @NewFaceFromFace(%struct.TYPE_15__* %128)
  %130 = bitcast i8* %129 to %struct.TYPE_15__*
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %133, i64 0
  store %struct.TYPE_15__* %130, %struct.TYPE_15__** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %138, i64 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %147, i64 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  store %struct.TYPE_15__* %144, %struct.TYPE_15__** %150, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %153, i64 0
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = call i8* @NewFaceFromFace(%struct.TYPE_15__* %158)
  %160 = bitcast i8* %159 to %struct.TYPE_15__*
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %163, i64 1
  store %struct.TYPE_15__* %160, %struct.TYPE_15__** %164, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %168, i64 1
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %171, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %177, i64 1
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  store %struct.TYPE_15__* %174, %struct.TYPE_15__** %180, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %183, i64 1
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store %struct.TYPE_15__* %185, %struct.TYPE_15__** %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %191, i64 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  call void @SubdivideFace(%struct.TYPE_14__* %188, %struct.TYPE_15__* %193)
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %197, i64 1
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  call void @SubdivideFace(%struct.TYPE_14__* %194, %struct.TYPE_15__* %199)
  br label %204

200:                                              ; preds = %102, %94
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %37

204:                                              ; preds = %20, %35, %127, %37
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local float @VectorNormalize(i32) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_12__*, i32, float, i32, %struct.TYPE_12__**, %struct.TYPE_12__**) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i8* @NewFaceFromFace(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
