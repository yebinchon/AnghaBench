; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_CollapseStagesToLightall.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_CollapseStagesToLightall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__**, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_20__ = type { float }
%struct.TYPE_19__ = type { float }
%struct.TYPE_18__ = type { float }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_23__**, i64 }

@ST_GLSL = common dso_local global i32 0, align 4
@TB_LIGHTMAP = common dso_local global i64 0, align 8
@LIGHTDEF_USE_LIGHTMAP = common dso_local global i32 0, align 4
@LIGHTDEF_USE_LIGHT_VECTOR = common dso_local global i32 0, align 4
@LIGHTDEF_USE_LIGHT_VERTEX = common dso_local global i32 0, align 4
@r_deluxeMapping = common dso_local global %struct.TYPE_29__* null, align 8
@tr = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@shader = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@TB_DELUXEMAP = common dso_local global i64 0, align 8
@r_normalMapping = common dso_local global %struct.TYPE_28__* null, align 8
@TB_NORMALMAP = common dso_local global i64 0, align 8
@r_parallaxMapping = common dso_local global %struct.TYPE_27__* null, align 8
@LIGHTDEF_USE_PARALLAXMAP = common dso_local global i32 0, align 4
@TB_DIFFUSEMAP = common dso_local global i64 0, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@IMGFLAG_GENNORMALMAP = common dso_local global i32 0, align 4
@IMGFLAG_NOLIGHTSCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"_nh\00", align 1
@IMGTYPE_NORMALHEIGHT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@IMGTYPE_NORMAL = common dso_local global i32 0, align 4
@r_baseNormalX = common dso_local global %struct.TYPE_20__* null, align 8
@r_baseNormalY = common dso_local global %struct.TYPE_19__* null, align 8
@r_baseParallax = common dso_local global %struct.TYPE_18__* null, align 8
@r_specularMapping = common dso_local global %struct.TYPE_26__* null, align 8
@TB_SPECULARMAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"_s\00", align 1
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@LIGHTDEF_USE_TCGEN_AND_TCMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i64, i64, i64, i64)* @CollapseStagesToLightall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CollapseStagesToLightall(%struct.TYPE_22__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2, %struct.TYPE_22__* %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* @ST_GLSL, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %32 = icmp ne %struct.TYPE_22__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load i64, i64* @TB_LIGHTMAP, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %37
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i64 0
  %43 = bitcast %struct.TYPE_21__* %38 to i8*
  %44 = bitcast %struct.TYPE_21__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  %45 = load i32, i32* @LIGHTDEF_USE_LIGHTMAP, align 4
  %46 = load i32, i32* %17, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %17, align 4
  br label %64

48:                                               ; preds = %8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @LIGHTDEF_USE_LIGHT_VECTOR, align 4
  %53 = load i32, i32* %17, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %17, align 4
  br label %63

55:                                               ; preds = %48
  %56 = load i64, i64* %14, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @LIGHTDEF_USE_LIGHT_VERTEX, align 4
  %60 = load i32, i32* %17, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** @r_deluxeMapping, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tr, i32 0, i32 2), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %69
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %74 = icmp ne %struct.TYPE_22__* %73, null
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shader, i32 0, i32 0), align 8
  %77 = icmp uge i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = load i64, i64* @TB_DELUXEMAP, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i64 %82
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i64 0
  %88 = bitcast %struct.TYPE_21__* %83 to i8*
  %89 = bitcast %struct.TYPE_21__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  %90 = load %struct.TYPE_23__**, %struct.TYPE_23__*** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tr, i32 0, i32 1), align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shader, i32 0, i32 0), align 8
  %92 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %90, i64 %91
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = load i64, i64* @TB_DELUXEMAP, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %100, i64 0
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %101, align 8
  br label %102

102:                                              ; preds = %78, %75, %72, %69, %64
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** @r_normalMapping, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %255

107:                                              ; preds = %102
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = icmp ne %struct.TYPE_22__* %108, null
  br i1 %109, label %110, label %141

110:                                              ; preds = %107
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = load i64, i64* @TB_NORMALMAP, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i64 %114
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i64 0
  %120 = bitcast %struct.TYPE_21__* %115 to i8*
  %121 = bitcast %struct.TYPE_21__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 24, i1 false)
  %122 = load i64, i64* %15, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %110
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_parallaxMapping, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @LIGHTDEF_USE_PARALLAXMAP, align 4
  %131 = load i32, i32* %17, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %129, %124, %110
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @VectorCopy4(i32 %136, i32 %139)
  br label %254

141:                                              ; preds = %107
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %143 = icmp ne %struct.TYPE_22__* %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %13, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %14, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %253

150:                                              ; preds = %147, %144, %141
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  %154 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %157, i64 0
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %18, align 8
  %160 = icmp ne %struct.TYPE_23__* %159, null
  br i1 %160, label %161, label %253

161:                                              ; preds = %150
  %162 = load i32, i32* @MAX_QPATH, align 4
  %163 = zext i32 %162 to i64
  %164 = call i8* @llvm.stacksave()
  store i8* %164, i8** %19, align 8
  %165 = alloca i8, i64 %163, align 16
  store i64 %163, i64* %20, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IMGFLAG_GENNORMALMAP, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %168, %170
  %172 = load i32, i32* @IMGFLAG_NOLIGHTSCALE, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %22, align 4
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @MAX_QPATH, align 4
  %178 = call i32 @COM_StripExtension(i32 %176, i8* %165, i32 %177)
  %179 = load i32, i32* @MAX_QPATH, align 4
  %180 = call i32 @Q_strcat(i8* %165, i32 %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %181 = load i32, i32* @IMGTYPE_NORMALHEIGHT, align 4
  %182 = load i32, i32* %22, align 4
  %183 = call %struct.TYPE_23__* @R_FindImageFile(i8* %165, i32 %181, i32 %182)
  store %struct.TYPE_23__* %183, %struct.TYPE_23__** %21, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %185 = icmp ne %struct.TYPE_23__* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %161
  %187 = load i64, i64* @qtrue, align 8
  store i64 %187, i64* %15, align 8
  br label %196

188:                                              ; preds = %161
  %189 = call i32 @strlen(i8* %165)
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %165, i64 %191
  store i8 0, i8* %192, align 1
  %193 = load i32, i32* @IMGTYPE_NORMAL, align 4
  %194 = load i32, i32* %22, align 4
  %195 = call %struct.TYPE_23__* @R_FindImageFile(i8* %165, i32 %193, i32 %194)
  store %struct.TYPE_23__* %195, %struct.TYPE_23__** %21, align 8
  br label %196

196:                                              ; preds = %188, %186
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %198 = icmp ne %struct.TYPE_23__* %197, null
  br i1 %198, label %199, label %251

199:                                              ; preds = %196
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  %203 = load i64, i64* @TB_NORMALMAP, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i64 %203
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i64 0
  %209 = bitcast %struct.TYPE_21__* %204 to i8*
  %210 = bitcast %struct.TYPE_21__* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 24, i1 false)
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = load i64, i64* @TB_NORMALMAP, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = load i64, i64* @TB_NORMALMAP, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %224, i64 0
  store %struct.TYPE_23__* %217, %struct.TYPE_23__** %225, align 8
  %226 = load i64, i64* %15, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %199
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_parallaxMapping, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32, i32* @LIGHTDEF_USE_PARALLAXMAP, align 4
  %235 = load i32, i32* %17, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %17, align 4
  br label %237

237:                                              ; preds = %233, %228, %199
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_baseNormalX, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load float, float* %242, align 4
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_baseNormalY, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  %246 = load float, float* %245, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_baseParallax, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load float, float* %248, align 4
  %250 = call i32 @VectorSet4(i32 %240, float %243, float %246, float 1.000000e+00, float %249)
  br label %251

251:                                              ; preds = %237, %196
  %252 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %252)
  br label %253

253:                                              ; preds = %251, %150, %147
  br label %254

254:                                              ; preds = %253, %133
  br label %255

255:                                              ; preds = %254, %102
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** @r_specularMapping, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %362

260:                                              ; preds = %255
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %262 = icmp ne %struct.TYPE_22__* %261, null
  br i1 %262, label %263, label %282

263:                                              ; preds = %260
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %265, align 8
  %267 = load i64, i64* @TB_SPECULARMAP, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i64 %267
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i64 0
  %273 = bitcast %struct.TYPE_21__* %268 to i8*
  %274 = bitcast %struct.TYPE_21__* %272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %273, i8* align 8 %274, i64 24, i1 false)
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @VectorCopy4(i32 %277, i32 %280)
  br label %361

282:                                              ; preds = %260
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %284 = icmp ne %struct.TYPE_22__* %283, null
  br i1 %284, label %291, label %285

285:                                              ; preds = %282
  %286 = load i64, i64* %13, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i64, i64* %14, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %360

291:                                              ; preds = %288, %285, %282
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %298, i64 0
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %299, align 8
  store %struct.TYPE_23__* %300, %struct.TYPE_23__** %23, align 8
  %301 = icmp ne %struct.TYPE_23__* %300, null
  br i1 %301, label %302, label %360

302:                                              ; preds = %291
  %303 = load i32, i32* @MAX_QPATH, align 4
  %304 = zext i32 %303 to i64
  %305 = call i8* @llvm.stacksave()
  store i8* %305, i8** %24, align 8
  %306 = alloca i8, i64 %304, align 16
  store i64 %304, i64* %25, align 8
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @IMGFLAG_GENNORMALMAP, align 4
  %311 = xor i32 %310, -1
  %312 = and i32 %309, %311
  %313 = load i32, i32* @IMGFLAG_NOLIGHTSCALE, align 4
  %314 = or i32 %312, %313
  store i32 %314, i32* %27, align 4
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @MAX_QPATH, align 4
  %319 = call i32 @COM_StripExtension(i32 %317, i8* %306, i32 %318)
  %320 = load i32, i32* @MAX_QPATH, align 4
  %321 = call i32 @Q_strcat(i8* %306, i32 %320, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %322 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %323 = load i32, i32* %27, align 4
  %324 = call %struct.TYPE_23__* @R_FindImageFile(i8* %306, i32 %322, i32 %323)
  store %struct.TYPE_23__* %324, %struct.TYPE_23__** %26, align 8
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %326 = icmp ne %struct.TYPE_23__* %325, null
  br i1 %326, label %327, label %358

327:                                              ; preds = %302
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %329, align 8
  %331 = load i64, i64* @TB_SPECULARMAP, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i64 %331
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i64 0
  %337 = bitcast %struct.TYPE_21__* %332 to i8*
  %338 = bitcast %struct.TYPE_21__* %336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %337, i8* align 8 %338, i64 24, i1 false)
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %340, align 8
  %342 = load i64, i64* @TB_SPECULARMAP, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 2
  store i64 0, i64* %344, align 8
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %346, i32 0, i32 2
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %347, align 8
  %349 = load i64, i64* @TB_SPECULARMAP, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %352, i64 0
  store %struct.TYPE_23__* %345, %struct.TYPE_23__** %353, align 8
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @VectorSet4(i32 %356, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)
  br label %358

358:                                              ; preds = %327, %302
  %359 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %359)
  br label %360

360:                                              ; preds = %358, %291, %288
  br label %361

361:                                              ; preds = %360, %263
  br label %362

362:                                              ; preds = %361, %255
  %363 = load i64, i64* %16, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %362
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i64 0
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %365, %362
  %374 = load i32, i32* @LIGHTDEF_USE_TCGEN_AND_TCMOD, align 4
  %375 = load i32, i32* %17, align 4
  %376 = or i32 %375, %374
  store i32 %376, i32* %17, align 4
  br label %377

377:                                              ; preds = %373, %365
  %378 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tr, i32 0, i32 0), align 8
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 1
  store i32 %378, i32* %380, align 4
  %381 = load i32, i32* %17, align 4
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 0
  store i32 %381, i32* %383, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorCopy4(i32, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @COM_StripExtension(i32, i8*, i32) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local %struct.TYPE_23__* @R_FindImageFile(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @VectorSet4(i32, float, float, float, float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
