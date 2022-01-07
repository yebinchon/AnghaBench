; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_animation.c_R_MDRAddAnimSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_animation.c_R_MDRAddAnimSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32, %struct.TYPE_29__*, %struct.TYPE_28__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 (i32, i8*, i32, i32, i32)* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i64, i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_34__*, i32 }

@tr = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@RF_THIRD_PERSON = common dso_local global i32 0, align 4
@RF_WRAP_FRAMES = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"R_MDRAddAnimSurfaces: no such frame %d to %d for '%s'\0A\00", align 1
@CULL_OUT = common dso_local global i32 0, align 4
@r_shadows = common dso_local global %struct.TYPE_27__* null, align 8
@RF_NOSHADOW = common dso_local global i32 0, align 4
@RF_DEPTHHACK = common dso_local global i32 0, align 4
@SS_OPAQUE = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@RF_SHADOW_PLANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_MDRAddAnimSurfaces(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_32__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 5), align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %3, align 8
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RF_THIRD_PERSON, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 6, i32 0), align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i1 [ false, %1 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RF_WRAP_FRAMES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = srem i32 %54, %50
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %39, %29
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %86, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %75, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %80, %71, %65, %56
  %87 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ri, i32 0, i32 0), align 8
  %88 = load i32, i32* @PRINT_DEVELOPER, align 4
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 5), align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %87(i32 %88, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %96, i32 %99)
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 4
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 3
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %86, %80
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %110 = call i32 @R_MDRCullModel(%struct.TYPE_24__* %108, %struct.TYPE_32__* %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @CULL_OUT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %351

115:                                              ; preds = %107
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %117 = call i32 @R_ComputeLOD(%struct.TYPE_32__* %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %351

123:                                              ; preds = %115
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %129, %123
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %136 = bitcast %struct.TYPE_24__* %135 to i32*
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = bitcast i32* %141 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %142, %struct.TYPE_36__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %156, %134
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %149 = bitcast %struct.TYPE_36__* %148 to i32*
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = bitcast i32* %154 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %155, %struct.TYPE_36__** %5, align 8
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %143

159:                                              ; preds = %143
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_shadows, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %159
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %169 = call i32 @R_SetupEntityLighting(i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 4), %struct.TYPE_32__* %168)
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %173 = call i32 @R_MDRComputeFogNum(%struct.TYPE_24__* %171, %struct.TYPE_32__* %172)
  store i32 %173, i32* %11, align 4
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %175 = bitcast %struct.TYPE_36__* %174 to i32*
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = bitcast i32* %180 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %181, %struct.TYPE_35__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %348, %170
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %351

188:                                              ; preds = %182
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call %struct.TYPE_34__* @R_GetShaderByHandle(i64 %198)
  store %struct.TYPE_34__* %199, %struct.TYPE_34__** %6, align 8
  br label %268

200:                                              ; preds = %188
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %254

206:                                              ; preds = %200
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 0), align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %254

213:                                              ; preds = %206
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = call %struct.TYPE_33__* @R_GetSkinByHandle(i64 %217)
  store %struct.TYPE_33__* %218, %struct.TYPE_33__** %7, align 8
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 3), align 8
  store %struct.TYPE_34__* %219, %struct.TYPE_34__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %250, %213
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %253

226:                                              ; preds = %220
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @strcmp(i32 %234, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %226
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %247, align 8
  store %struct.TYPE_34__* %248, %struct.TYPE_34__** %6, align 8
  br label %253

249:                                              ; preds = %226
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %220

253:                                              ; preds = %240, %220
  br label %267

254:                                              ; preds = %206, %200
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call %struct.TYPE_34__* @R_GetShaderByHandle(i64 %262)
  store %struct.TYPE_34__* %263, %struct.TYPE_34__** %6, align 8
  br label %266

264:                                              ; preds = %254
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 3), align 8
  store %struct.TYPE_34__* %265, %struct.TYPE_34__** %6, align 8
  br label %266

266:                                              ; preds = %264, %259
  br label %267

267:                                              ; preds = %266, %253
  br label %268

268:                                              ; preds = %267, %194
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %301, label %271

271:                                              ; preds = %268
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_shadows, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 2
  br i1 %275, label %276, label %301

276:                                              ; preds = %271
  %277 = load i32, i32* %11, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %301

279:                                              ; preds = %276
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @RF_NOSHADOW, align 4
  %285 = load i32, i32* @RF_DEPTHHACK, align 4
  %286 = or i32 %284, %285
  %287 = and i32 %283, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %301, label %289

289:                                              ; preds = %279
  %290 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @SS_OPAQUE, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %297 = bitcast %struct.TYPE_35__* %296 to i8*
  %298 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 2), align 8
  %299 = load i32, i32* @qfalse, align 4
  %300 = call i32 @R_AddDrawSurf(i8* %297, %struct.TYPE_34__* %298, i32 0, i32 %299)
  br label %301

301:                                              ; preds = %295, %289, %279, %276, %271, %268
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_shadows, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 3
  br i1 %305, label %306, label %329

306:                                              ; preds = %301
  %307 = load i32, i32* %11, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %329

309:                                              ; preds = %306
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @RF_SHADOW_PLANE, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %329

317:                                              ; preds = %309
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @SS_OPAQUE, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %317
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %325 = bitcast %struct.TYPE_35__* %324 to i8*
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 1), align 8
  %327 = load i32, i32* @qfalse, align 4
  %328 = call i32 @R_AddDrawSurf(i8* %325, %struct.TYPE_34__* %326, i32 0, i32 %327)
  br label %329

329:                                              ; preds = %323, %317, %309, %306, %301
  %330 = load i32, i32* %13, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %329
  %333 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %334 = bitcast %struct.TYPE_35__* %333 to i8*
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* @qfalse, align 4
  %338 = call i32 @R_AddDrawSurf(i8* %334, %struct.TYPE_34__* %335, i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %332, %329
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %341 = bitcast %struct.TYPE_35__* %340 to i32*
  %342 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %341, i64 %345
  %347 = bitcast i32* %346 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %347, %struct.TYPE_35__** %4, align 8
  br label %348

348:                                              ; preds = %339
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %182

351:                                              ; preds = %114, %122, %182
  ret void
}

declare dso_local i32 @R_MDRCullModel(%struct.TYPE_24__*, %struct.TYPE_32__*) #1

declare dso_local i32 @R_ComputeLOD(%struct.TYPE_32__*) #1

declare dso_local i32 @R_SetupEntityLighting(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @R_MDRComputeFogNum(%struct.TYPE_24__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_34__* @R_GetShaderByHandle(i64) #1

declare dso_local %struct.TYPE_33__* @R_GetSkinByHandle(i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @R_AddDrawSurf(i8*, %struct.TYPE_34__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
