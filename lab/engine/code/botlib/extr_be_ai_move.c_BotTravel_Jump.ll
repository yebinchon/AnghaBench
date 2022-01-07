; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Jump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32* }

@result = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BotTravel_Jump(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %17 = call i32 @bot_moveresult_t_cleared(i32* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @AAS_JumpReachRunStart(%struct.TYPE_12__* %18, i32* %19)
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %34, %39
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call float @VectorNormalize(i32* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @VectorCopy(i32* %49, i32* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @VectorMA(i32* %58, i32 80, i32* %59, i32* %60)
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %84, %2
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 80
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 10
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @VectorMA(i32* %66, i32 %68, i32* %69, i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i64 @AAS_PointAreaNum(i32* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %87

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 10
  store i32 %86, i32* %12, align 4
  br label %62

87:                                               ; preds = %82, %62
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 80
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @VectorMA(i32* %93, i32 %94, i32* %95, i32* %96)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @VectorSubtract(i32* %101, i32* %104, i32* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 0, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call float @VectorNormalize(i32* %109)
  store float %110, float* %13, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @VectorSubtract(i32* %113, i32* %114, i32* %115)
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 0, i32* %118, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call float @VectorNormalize(i32* %119)
  store float %120, float* %14, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = call double @DotProduct(i32* %121, i32* %122)
  %124 = fcmp olt double %123, -8.000000e-01
  br i1 %124, label %128, label %125

125:                                              ; preds = %98
  %126 = load float, float* %14, align 4
  %127 = fcmp olt float %126, 5.000000e+00
  br i1 %127, label %128, label %186

128:                                              ; preds = %125, %98
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %133, %138
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %146, %151
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32 0, i32* %156, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = call float @VectorNormalize(i32* %157)
  %159 = load float, float* %13, align 4
  %160 = fcmp olt float %159, 2.400000e+01
  br i1 %160, label %161, label %166

161:                                              ; preds = %128
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @EA_Jump(i32 %164)
  br label %175

166:                                              ; preds = %128
  %167 = load float, float* %13, align 4
  %168 = fcmp olt float %167, 3.200000e+01
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @EA_DelayedJump(i32 %172)
  br label %174

174:                                              ; preds = %169, %166
  br label %175

175:                                              ; preds = %174, %161
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @EA_Move(i32 %178, i32* %179, float 6.000000e+02)
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  br label %227

186:                                              ; preds = %125
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %189, %194
  %196 = load i32*, i32** %6, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %11, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %200, %205
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  store i32 0, i32* %210, align 4
  %211 = load i32*, i32** %6, align 8
  %212 = call float @VectorNormalize(i32* %211)
  %213 = load float, float* %14, align 4
  %214 = fcmp ogt float %213, 8.000000e+01
  br i1 %214, label %215, label %216

215:                                              ; preds = %186
  store float 8.000000e+01, float* %14, align 4
  br label %216

216:                                              ; preds = %215, %186
  %217 = load float, float* %14, align 4
  %218 = fmul float 5.000000e+00, %217
  %219 = fsub float 4.000000e+02, %218
  %220 = fsub float 4.000000e+02, %219
  store float %220, float* %15, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = load float, float* %15, align 4
  %226 = call i32 @EA_Move(i32 %223, i32* %224, float %225)
  br label %227

227:                                              ; preds = %216, %175
  %228 = load i32*, i32** %6, align 8
  %229 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %230 = call i32 @VectorCopy(i32* %228, i32* %229)
  %231 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 bitcast (%struct.TYPE_11__* @result to i8*), i64 8, i1 false)
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  ret i32* %233
}

declare dso_local i32 @bot_moveresult_t_cleared(i32*) #1

declare dso_local i32 @AAS_JumpReachRunStart(%struct.TYPE_12__*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i64 @AAS_PointAreaNum(i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local double @DotProduct(i32*, i32*) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_DelayedJump(i32) #1

declare dso_local i32 @EA_Move(i32, i32*, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
