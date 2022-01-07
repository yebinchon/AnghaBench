; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_BestReachableArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_BestReachableArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, i8*)* }
%struct.TYPE_5__ = type { float*, i32 }

@aasworld = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@botimport = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"AAS_BestReachableArea: aas not loaded\0A\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@LINECOLOR_RED = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_BestReachableArea(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca %struct.TYPE_5__, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @botimport, i32 0, i32 0), align 8
  %26 = load i32, i32* @PRT_ERROR, align 4
  %27 = call i32 %25(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %192

28:                                               ; preds = %4
  %29 = load float*, float** %6, align 8
  %30 = load float*, float** %18, align 8
  %31 = call i32 @VectorCopy(float* %29, float* %30)
  %32 = load float*, float** %18, align 8
  %33 = call i32 @AAS_PointAreaNum(float* %32)
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %118, %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %121

43:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %114, %43
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 5
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %117

53:                                               ; preds = %51
  store i32 -1, i32* %13, align 4
  br label %54

54:                                               ; preds = %110, %53
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %63, label %113

63:                                               ; preds = %61
  store i32 -1, i32* %14, align 4
  br label %64

64:                                               ; preds = %106, %63
  %65 = load i32, i32* %14, align 4
  %66 = icmp sle i32 %65, 1
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %73, label %109

73:                                               ; preds = %71
  %74 = load float*, float** %6, align 8
  %75 = load float*, float** %18, align 8
  %76 = call i32 @VectorCopy(float* %74, float* %75)
  %77 = load i32, i32* %12, align 4
  %78 = sitofp i32 %77 to float
  %79 = fmul float %78, 4.000000e+00
  %80 = load i32, i32* %13, align 4
  %81 = sitofp i32 %80 to float
  %82 = fmul float %79, %81
  %83 = load float*, float** %18, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %82
  store float %86, float* %84, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sitofp i32 %87 to float
  %89 = fmul float %88, 4.000000e+00
  %90 = load i32, i32* %14, align 4
  %91 = sitofp i32 %90 to float
  %92 = fmul float %89, %91
  %93 = load float*, float** %18, align 8
  %94 = getelementptr inbounds float, float* %93, i64 1
  %95 = load float, float* %94, align 4
  %96 = fadd float %95, %92
  store float %96, float* %94, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sitofp i32 %97 to float
  %99 = fmul float %98, 4.000000e+00
  %100 = load float*, float** %18, align 8
  %101 = getelementptr inbounds float, float* %100, i64 2
  %102 = load float, float* %101, align 4
  %103 = fadd float %102, %99
  store float %103, float* %101, align 4
  %104 = load float*, float** %18, align 8
  %105 = call i32 @AAS_PointAreaNum(float* %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %73
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %64

109:                                              ; preds = %71
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %54

113:                                              ; preds = %61
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %44

117:                                              ; preds = %51
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %34

121:                                              ; preds = %41
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %171

124:                                              ; preds = %121
  %125 = load float*, float** %18, align 8
  %126 = load float*, float** %19, align 8
  %127 = call i32 @VectorCopy(float* %125, float* %126)
  %128 = load float*, float** %18, align 8
  %129 = getelementptr inbounds float, float* %128, i64 2
  %130 = load float, float* %129, align 4
  %131 = fpext float %130 to double
  %132 = fadd double %131, 2.500000e-01
  %133 = fptrunc double %132 to float
  store float %133, float* %129, align 4
  %134 = load float*, float** %19, align 8
  %135 = getelementptr inbounds float, float* %134, i64 2
  %136 = load float, float* %135, align 4
  %137 = fsub float %136, 5.000000e+01
  store float %137, float* %135, align 4
  %138 = load float*, float** %18, align 8
  %139 = load float*, float** %19, align 8
  %140 = load i32, i32* @PRESENCE_CROUCH, align 4
  %141 = call { float*, i32 } @AAS_TraceClientBBox(float* %138, float* %139, i32 %140, i32 -1)
  %142 = bitcast %struct.TYPE_5__* %21 to { float*, i32 }*
  %143 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %142, i32 0, i32 0
  %144 = extractvalue { float*, i32 } %141, 0
  store float* %144, float** %143, align 8
  %145 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %142, i32 0, i32 1
  %146 = extractvalue { float*, i32 } %141, 1
  store i32 %146, i32* %145, align 8
  %147 = bitcast %struct.TYPE_5__* %20 to i8*
  %148 = bitcast %struct.TYPE_5__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %124
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = call i32 @AAS_PointAreaNum(float* %154)
  store i32 %155, i32* %10, align 4
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %157 = load float*, float** %156, align 8
  %158 = load float*, float** %9, align 8
  %159 = call i32 @VectorCopy(float* %157, float* %158)
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %192

164:                                              ; preds = %152
  br label %170

165:                                              ; preds = %124
  %166 = load float*, float** %18, align 8
  %167 = load float*, float** %9, align 8
  %168 = call i32 @VectorCopy(float* %166, float* %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %5, align 4
  br label %192

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %121
  %172 = load float*, float** %6, align 8
  %173 = load float*, float** %9, align 8
  %174 = call i32 @VectorCopy(float* %172, float* %173)
  %175 = load float*, float** %6, align 8
  %176 = load float*, float** %7, align 8
  %177 = load float*, float** %16, align 8
  %178 = call i32 @VectorAdd(float* %175, float* %176, float* %177)
  %179 = load float*, float** %6, align 8
  %180 = load float*, float** %8, align 8
  %181 = load float*, float** %17, align 8
  %182 = call i32 @VectorAdd(float* %179, float* %180, float* %181)
  %183 = load float*, float** %16, align 8
  %184 = load float*, float** %17, align 8
  %185 = load i32, i32* @PRESENCE_CROUCH, align 4
  %186 = call i32* @AAS_LinkEntityClientBBox(float* %183, float* %184, i32 -1, i32 %185)
  store i32* %186, i32** %15, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = call i32 @AAS_BestReachableLinkArea(i32* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32*, i32** %15, align 8
  %190 = call i32 @AAS_UnlinkFromAreas(i32* %189)
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %171, %165, %162, %24
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @AAS_PointAreaNum(float*) #1

declare dso_local { float*, i32 } @AAS_TraceClientBBox(float*, float*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32* @AAS_LinkEntityClientBBox(float*, float*, i32, i32) #1

declare dso_local i32 @AAS_BestReachableLinkArea(i32*) #1

declare dso_local i32 @AAS_UnlinkFromAreas(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
