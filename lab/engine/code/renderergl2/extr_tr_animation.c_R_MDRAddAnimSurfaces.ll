; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_R_MDRAddAnimSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_R_MDRAddAnimSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32, %struct.TYPE_29__*, %struct.TYPE_28__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32 (i32, i8*, i32, i32, i32)* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i64, i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_34__*, i32 }

@tr = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@RF_THIRD_PERSON = common dso_local global i32 0, align 4
@VPF_SHADOWMAP = common dso_local global i32 0, align 4
@VPF_DEPTHSHADOW = common dso_local global i32 0, align 4
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
  %14 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 5), align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %3, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RF_THIRD_PERSON, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 6, i32 1), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 6, i32 0), align 8
  %31 = load i32, i32* @VPF_SHADOWMAP, align 4
  %32 = load i32, i32* @VPF_DEPTHSHADOW, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %26
  %37 = phi i1 [ true, %26 ], [ %35, %29 ]
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %36, %1
  %40 = phi i1 [ false, %1 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RF_WRAP_FRAMES, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = srem i32 %56, %52
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %49, %39
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %96, label %75

75:                                               ; preds = %66
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %90, %81, %75, %66
  %97 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ri, i32 0, i32 0), align 8
  %98 = load i32, i32* @PRINT_DEVELOPER, align 4
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 5), align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %97(i32 %98, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %106, i32 %109)
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 5
  store i32 0, i32* %113, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 4
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %96, %90
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %120 = call i32 @R_MDRCullModel(%struct.TYPE_24__* %118, %struct.TYPE_32__* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @CULL_OUT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %370

125:                                              ; preds = %117
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %127 = call i32 @R_ComputeLOD(%struct.TYPE_32__* %126)
  store i32 %127, i32* %10, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %370

133:                                              ; preds = %125
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %139, %133
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %146 = bitcast %struct.TYPE_24__* %145 to i32*
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = bitcast i32* %151 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %152, %struct.TYPE_36__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %166, %144
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %159 = bitcast %struct.TYPE_36__* %158 to i32*
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = bitcast i32* %164 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %165, %struct.TYPE_36__** %5, align 8
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %153

169:                                              ; preds = %153
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_shadows, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %172, %169
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %179 = call i32 @R_SetupEntityLighting(i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 4), %struct.TYPE_32__* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %183 = call i32 @R_MDRComputeFogNum(%struct.TYPE_24__* %181, %struct.TYPE_32__* %182)
  store i32 %183, i32* %11, align 4
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @R_CubemapForPoint(i32 %187)
  store i32 %188, i32* %13, align 4
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %190 = bitcast %struct.TYPE_36__* %189 to i32*
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = bitcast i32* %195 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %196, %struct.TYPE_35__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %367, %180
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %370

203:                                              ; preds = %197
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call %struct.TYPE_34__* @R_GetShaderByHandle(i64 %213)
  store %struct.TYPE_34__* %214, %struct.TYPE_34__** %6, align 8
  br label %283

215:                                              ; preds = %203
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %269

221:                                              ; preds = %215
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 0), align 8
  %227 = icmp slt i64 %225, %226
  br i1 %227, label %228, label %269

228:                                              ; preds = %221
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = call %struct.TYPE_33__* @R_GetSkinByHandle(i64 %232)
  store %struct.TYPE_33__* %233, %struct.TYPE_33__** %7, align 8
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 3), align 8
  store %struct.TYPE_34__* %234, %struct.TYPE_34__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %235

235:                                              ; preds = %265, %228
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %268

241:                                              ; preds = %235
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %243, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @strcmp(i32 %249, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %241
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %257, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %262, align 8
  store %struct.TYPE_34__* %263, %struct.TYPE_34__** %6, align 8
  br label %268

264:                                              ; preds = %241
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %235

268:                                              ; preds = %255, %235
  br label %282

269:                                              ; preds = %221, %215
  %270 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %269
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call %struct.TYPE_34__* @R_GetShaderByHandle(i64 %277)
  store %struct.TYPE_34__* %278, %struct.TYPE_34__** %6, align 8
  br label %281

279:                                              ; preds = %269
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 3), align 8
  store %struct.TYPE_34__* %280, %struct.TYPE_34__** %6, align 8
  br label %281

281:                                              ; preds = %279, %274
  br label %282

282:                                              ; preds = %281, %268
  br label %283

283:                                              ; preds = %282, %209
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %317, label %286

286:                                              ; preds = %283
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_shadows, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %291, label %317

291:                                              ; preds = %286
  %292 = load i32, i32* %11, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %317

294:                                              ; preds = %291
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @RF_NOSHADOW, align 4
  %300 = load i32, i32* @RF_DEPTHHACK, align 4
  %301 = or i32 %299, %300
  %302 = and i32 %298, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %317, label %304

304:                                              ; preds = %294
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @SS_OPAQUE, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %317

310:                                              ; preds = %304
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %312 = bitcast %struct.TYPE_35__* %311 to i8*
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 2), align 8
  %314 = load i32, i32* @qfalse, align 4
  %315 = load i32, i32* @qfalse, align 4
  %316 = call i32 @R_AddDrawSurf(i8* %312, %struct.TYPE_34__* %313, i32 0, i32 %314, i32 %315, i32 0)
  br label %317

317:                                              ; preds = %310, %304, %294, %291, %286, %283
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_shadows, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 3
  br i1 %321, label %322, label %346

322:                                              ; preds = %317
  %323 = load i32, i32* %11, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %346

325:                                              ; preds = %322
  %326 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @RF_SHADOW_PLANE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %325
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @SS_OPAQUE, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %333
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %341 = bitcast %struct.TYPE_35__* %340 to i8*
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @tr, i32 0, i32 1), align 8
  %343 = load i32, i32* @qfalse, align 4
  %344 = load i32, i32* @qfalse, align 4
  %345 = call i32 @R_AddDrawSurf(i8* %341, %struct.TYPE_34__* %342, i32 0, i32 %343, i32 %344, i32 0)
  br label %346

346:                                              ; preds = %339, %333, %325, %322, %317
  %347 = load i32, i32* %14, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %346
  %350 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %351 = bitcast %struct.TYPE_35__* %350 to i8*
  %352 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* @qfalse, align 4
  %355 = load i32, i32* @qfalse, align 4
  %356 = load i32, i32* %13, align 4
  %357 = call i32 @R_AddDrawSurf(i8* %351, %struct.TYPE_34__* %352, i32 %353, i32 %354, i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %349, %346
  %359 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %360 = bitcast %struct.TYPE_35__* %359 to i32*
  %361 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %360, i64 %364
  %366 = bitcast i32* %365 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %366, %struct.TYPE_35__** %4, align 8
  br label %367

367:                                              ; preds = %358
  %368 = load i32, i32* %8, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %8, align 4
  br label %197

370:                                              ; preds = %124, %132, %197
  ret void
}

declare dso_local i32 @R_MDRCullModel(%struct.TYPE_24__*, %struct.TYPE_32__*) #1

declare dso_local i32 @R_ComputeLOD(%struct.TYPE_32__*) #1

declare dso_local i32 @R_SetupEntityLighting(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @R_MDRComputeFogNum(%struct.TYPE_24__*, %struct.TYPE_32__*) #1

declare dso_local i32 @R_CubemapForPoint(i32) #1

declare dso_local %struct.TYPE_34__* @R_GetShaderByHandle(i64) #1

declare dso_local %struct.TYPE_33__* @R_GetSkinByHandle(i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @R_AddDrawSurf(i8*, %struct.TYPE_34__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
