; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Grapple.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Grapple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_20__ = type { i32 (...)*, i32 (i32, i8*)*, i32 (i32, i32, i32, i32)* }
%struct.TYPE_22__ = type { i32, float, double, i32, i64, i64*, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64* }

@result = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@MFL_GRAPPLERESET = common dso_local global i32 0, align 4
@offhandgrapple = common dso_local global %struct.TYPE_26__* null, align 8
@cmd_grappleoff = common dso_local global %struct.TYPE_28__* null, align 8
@MFL_ACTIVEGRAPPLE = common dso_local global i32 0, align 4
@weapindex_grapple = common dso_local global %struct.TYPE_25__* null, align 8
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@cmd_grappleon = common dso_local global %struct.TYPE_27__* null, align 8
@LINECOLOR_BLUE = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_Grapple(%struct.TYPE_23__* noalias sret %0, %struct.TYPE_22__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %5, align 8
  %15 = call i32 @bot_moveresult_t_cleared(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 @result)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MFL_GRAPPLERESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** @offhandgrapple, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** @cmd_grappleoff, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @EA_Command(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = bitcast %struct.TYPE_23__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_23__* @result to i8*), i64 24, i1 false)
  br label %362

43:                                               ; preds = %3
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** @offhandgrapple, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** @weapindex_grapple, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 4), align 4
  %53 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 3), align 8
  %55 = or i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 3), align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %190

63:                                               ; preds = %56
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = call i32 @GrappleState(%struct.TYPE_22__* %64, %struct.TYPE_24__* %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 5
  %72 = load i64*, i64** %71, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = call i32 @VectorSubtract(i32 %69, i64* %72, i64* %73)
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  store i64 0, i64* %76, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = call i32 @VectorLength(i64* %77)
  %79 = sitofp i32 %78 to float
  store float %79, float* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %63
  %83 = load float, float* %6, align 4
  %84 = fcmp olt float %83, 4.800000e+01
  br i1 %84, label %85, label %121

85:                                               ; preds = %82
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = load float, float* %6, align 4
  %90 = fsub float %88, %89
  %91 = fcmp olt float %90, 1.000000e+00
  br i1 %91, label %92, label %120

92:                                               ; preds = %85
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** @offhandgrapple, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** @cmd_grappleoff, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @EA_Command(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @MFL_GRAPPLERESET, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = bitcast %struct.TYPE_23__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 bitcast (%struct.TYPE_23__* @result to i8*), i64 24, i1 false)
  br label %362

120:                                              ; preds = %85
  br label %175

121:                                              ; preds = %82, %63
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %170

127:                                              ; preds = %124
  %128 = load float, float* %6, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = fsub float %131, 2.000000e+00
  %133 = fcmp ogt float %128, %132
  br i1 %133, label %134, label %170

134:                                              ; preds = %127, %121
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  %137 = load double, double* %136, align 8
  %138 = call double (...) @AAS_Time()
  %139 = fsub double %138, 4.000000e-01
  %140 = fcmp olt double %137, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %134
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** @offhandgrapple, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** @cmd_grappleoff, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @EA_Command(i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @MFL_GRAPPLERESET, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 4
  store i64 0, i64* %167, align 8
  %168 = bitcast %struct.TYPE_23__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 bitcast (%struct.TYPE_23__* @result to i8*), i64 24, i1 false)
  br label %362

169:                                              ; preds = %134
  br label %174

170:                                              ; preds = %127, %124
  %171 = call double (...) @AAS_Time()
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 2
  store double %171, double* %173, align 8
  br label %174

174:                                              ; preds = %170, %169
  br label %175

175:                                              ; preds = %174, %120
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** @offhandgrapple, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @EA_Attack(i32 %184)
  br label %186

186:                                              ; preds = %181, %175
  %187 = load float, float* %6, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  store float %187, float* %189, align 4
  br label %360

190:                                              ; preds = %56
  %191 = call double (...) @AAS_Time()
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  store double %191, double* %193, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 5
  %199 = load i64*, i64** %198, align 8
  %200 = load i64*, i64** %8, align 8
  %201 = call i32 @VectorSubtract(i32 %196, i64* %199, i64* %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @MFL_SWIMMING, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %190
  %209 = load i64*, i64** %8, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 2
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %208, %190
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 5
  %214 = load i64*, i64** %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = load i64*, i64** %10, align 8
  %219 = call i32 @VectorAdd(i64* %214, i32 %217, i64* %218)
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i64*, i64** %10, align 8
  %224 = load i64*, i64** %9, align 8
  %225 = call i32 @VectorSubtract(i32 %222, i64* %223, i64* %224)
  %226 = load i64*, i64** %8, align 8
  %227 = call float @VectorNormalize(i64* %226)
  store float %227, float* %6, align 4
  %228 = load i64*, i64** %9, align 8
  %229 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 2), align 8
  %230 = call i32 @Vector2Angles(i64* %228, i32* %229)
  %231 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 3), align 8
  %233 = or i32 %232, %231
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 3), align 8
  %234 = load float, float* %6, align 4
  %235 = fcmp olt float %234, 5.000000e+00
  br i1 %235, label %236, label %320

236:                                              ; preds = %211
  %237 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 2), align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 9
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @AngleDiff(i32 %239, i32 %244)
  %246 = call i32 @fabs(i32 %245)
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %248, label %320

248:                                              ; preds = %236
  %249 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 2), align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @AngleDiff(i32 %251, i32 %256)
  %258 = call i32 @fabs(i32 %257)
  %259 = icmp slt i32 %258, 2
  br i1 %259, label %260, label %320

260:                                              ; preds = %248
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 5
  %263 = load i64*, i64** %262, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 8
  %267 = load i64*, i64** %10, align 8
  %268 = call i32 @VectorAdd(i64* %263, i32 %266, i64* %267)
  %269 = load i64*, i64** %10, align 8
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @CONTENTS_SOLID, align 4
  %277 = call i64* @AAS_Trace(i64* %269, i32* null, i32* null, i32 %272, i32 %275, i32 %276)
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i64* %277, i64** %278, align 8
  %279 = bitcast %struct.TYPE_21__* %13 to i8*
  %280 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %279, i8* align 8 %280, i64 8, i1 false)
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = load i64*, i64** %8, align 8
  %287 = call i32 @VectorSubtract(i32 %283, i64* %285, i64* %286)
  %288 = load i64*, i64** %8, align 8
  %289 = call i32 @VectorLength(i64* %288)
  %290 = icmp sgt i32 %289, 16
  br i1 %290, label %291, label %294

291:                                              ; preds = %260
  %292 = load i32, i32* @qtrue, align 4
  store i32 %292, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 1), align 4
  %293 = bitcast %struct.TYPE_23__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %293, i8* align 8 bitcast (%struct.TYPE_23__* @result to i8*), i64 24, i1 false)
  br label %362

294:                                              ; preds = %260
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** @offhandgrapple, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cmd_grappleon, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @EA_Command(i32 %302, i32 %305)
  br label %312

307:                                              ; preds = %294
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @EA_Attack(i32 %310)
  br label %312

312:                                              ; preds = %307, %299
  %313 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 1
  store float 9.999990e+05, float* %319, align 4
  br label %343

320:                                              ; preds = %248, %236, %211
  %321 = load float, float* %6, align 4
  %322 = fcmp olt float %321, 7.000000e+01
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load float, float* %6, align 4
  %325 = fmul float 4.000000e+00, %324
  %326 = fsub float 3.000000e+02, %325
  %327 = fsub float 3.000000e+02, %326
  store float %327, float* %7, align 4
  br label %329

328:                                              ; preds = %320
  store float 4.000000e+02, float* %7, align 4
  br label %329

329:                                              ; preds = %328, %323
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %331 = load i64*, i64** %8, align 8
  %332 = load i32, i32* @qtrue, align 4
  %333 = call i32 @BotCheckBlocked(%struct.TYPE_22__* %330, i64* %331, i32 %332, %struct.TYPE_23__* @result)
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = load i64*, i64** %8, align 8
  %338 = load float, float* %7, align 4
  %339 = call i32 @EA_Move(i32 %336, i64* %337, float %338)
  %340 = load i64*, i64** %8, align 8
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @result, i32 0, i32 0), align 8
  %342 = call i32 @VectorCopy(i64* %340, i32 %341)
  br label %343

343:                                              ; preds = %329, %312
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 5
  %346 = load i64*, i64** %345, align 8
  %347 = call i32 @AAS_PointAreaNum(i64* %346)
  store i32 %347, i32* %12, align 4
  %348 = load i32, i32* %12, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %343
  %351 = load i32, i32* %12, align 4
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %351, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %350
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 4
  store i64 0, i64* %358, align 8
  br label %359

359:                                              ; preds = %356, %350, %343
  br label %360

360:                                              ; preds = %359, %186
  %361 = bitcast %struct.TYPE_23__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %361, i8* align 8 bitcast (%struct.TYPE_23__* @result to i8*), i64 24, i1 false)
  br label %362

362:                                              ; preds = %360, %291, %154, %105, %35
  ret void
}

declare dso_local i32 @bot_moveresult_t_cleared(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

declare dso_local i32 @EA_Command(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GrappleState(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #1

declare dso_local i32 @VectorLength(i64*) #1

declare dso_local double @AAS_Time(...) #1

declare dso_local i32 @EA_Attack(i32) #1

declare dso_local i32 @VectorAdd(i64*, i32, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @Vector2Angles(i64*, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @AngleDiff(i32, i32) #1

declare dso_local i64* @AAS_Trace(i64*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_22__*, i64*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @AAS_PointAreaNum(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
