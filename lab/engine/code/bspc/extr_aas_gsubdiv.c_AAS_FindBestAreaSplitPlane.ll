; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_gsubdiv.c_AAS_FindBestAreaSplitPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_gsubdiv.c_AAS_FindBestAreaSplitPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__** }

@cfg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"gsubdiv: area %d has a tiny winding\0D\0A\00", align 1
@FACE_GROUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"found %d epsilon faces trying to split area %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_FindBestAreaSplitPlane(%struct.TYPE_8__* %0, i32* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store float* %2, float** %6, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cfg, i32 0, i32 0), align 8
  %22 = load i32*, i32** %19, align 8
  %23 = call i32 @VectorCopy(i32* %21, i32* %22)
  %24 = load i32*, i32** %19, align 8
  %25 = call i32 @VectorInverse(i32* %24)
  store i32 0, i32* %9, align 4
  store float -9.999990e+05, float* %14, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %16, align 8
  br label %29

29:                                               ; preds = %180, %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %188

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = icmp ne %struct.TYPE_8__* %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @WindingIsTiny(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i32, ...) @Log_Write(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %180

49:                                               ; preds = %32
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FACE_GROUND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @AAS_GapFace(%struct.TYPE_7__* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %180

62:                                               ; preds = %56, %49
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %17, align 8
  br label %70

70:                                               ; preds = %171, %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %179

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = icmp ne %struct.TYPE_8__* %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @WindingIsTiny(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, ...) @Log_Write(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %171

90:                                               ; preds = %73
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FACE_GROUND, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @AAS_GapFace(%struct.TYPE_7__* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %171

103:                                              ; preds = %97, %90
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FACE_GROUND, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @AAS_GapFace(%struct.TYPE_7__* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @FACE_GROUND, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @AAS_GapFace(%struct.TYPE_7__* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122, %115
  br label %171

128:                                              ; preds = %122, %110
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %19, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = call i32 @FindPlaneSeperatingWindings(i32 %131, i32 %134, i32* %135, i32* %136, float* %20)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  br label %171

140:                                              ; preds = %128
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = load float, float* %20, align 4
  %144 = call i32 @AAS_TestSplitPlane(%struct.TYPE_8__* %141, i32* %142, float %143, i32* %10, i32* %11, i32* %12)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  br label %171

147:                                              ; preds = %140
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 100, %148
  %150 = load i32, i32* %11, align 4
  %151 = mul nsw i32 2, %150
  %152 = sub nsw i32 %149, %151
  %153 = sitofp i32 %152 to float
  store float %153, float* %15, align 4
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %154, -1000
  %156 = sitofp i32 %155 to float
  %157 = load float, float* %15, align 4
  %158 = fadd float %157, %156
  store float %158, float* %15, align 4
  %159 = load float, float* %15, align 4
  %160 = load float, float* %14, align 4
  %161 = fcmp ogt float %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %147
  %163 = load i32*, i32** %18, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @VectorCopy(i32* %163, i32* %164)
  %166 = load float, float* %20, align 4
  %167 = load float*, float** %6, align 8
  store float %166, float* %167, align 4
  %168 = load float, float* %15, align 4
  store float %168, float* %14, align 4
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %170

170:                                              ; preds = %162, %147
  br label %171

171:                                              ; preds = %170, %146, %139, %127, %102, %85
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %174, i64 %176
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %17, align 8
  br label %70

179:                                              ; preds = %70
  br label %180

180:                                              ; preds = %179, %61, %44
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %183, i64 %185
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  store %struct.TYPE_7__* %187, %struct.TYPE_7__** %16, align 8
  br label %29

188:                                              ; preds = %29
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i8*, i32, ...) @Log_Write(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %191, %188
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorInverse(i32*) #1

declare dso_local i64 @WindingIsTiny(i32) #1

declare dso_local i32 @Log_Write(i8*, i32, ...) #1

declare dso_local i64 @AAS_GapFace(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @FindPlaneSeperatingWindings(i32, i32, i32*, i32*, float*) #1

declare dso_local i32 @AAS_TestSplitPlane(%struct.TYPE_8__*, i32*, float, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
