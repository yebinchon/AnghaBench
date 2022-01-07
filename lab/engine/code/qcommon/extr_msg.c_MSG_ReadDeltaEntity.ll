; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_ReadDeltaEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_ReadDeltaEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

@MAX_GENTITIES = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Bad delta entity number: %i\00", align 1
@GENTITYNUM_BITS = common dso_local global i32 0, align 4
@cl_shownet = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%3i: #%-3i remove\0A\00", align 1
@entityStateFields = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid entityState field count\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%3i: #%-3i \00", align 1
@FLOAT_INT_BITS = common dso_local global i32 0, align 4
@FLOAT_INT_BIAS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s:%i \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s:%f \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (%i bits)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_ReadDeltaEntity(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAX_GENTITIES, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %4
  %26 = load i32, i32* @ERR_DROP, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32, i8*, ...) @Com_Error(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 8
  %39 = load i32, i32* @GENTITYNUM_BITS, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %17, align 4
  br label %56

41:                                               ; preds = %29
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = mul nsw i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* @GENTITYNUM_BITS, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %41, %34
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %57, i32 1)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = call i32 @Com_Memset(%struct.TYPE_15__* %61, i32 0, i32 4)
  %63 = load i32, i32* @MAX_GENTITIES, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %68 = icmp ne %struct.TYPE_16__* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %85

79:                                               ; preds = %74, %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %74, %60
  br label %320

86:                                               ; preds = %56
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %87, i32 1)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = bitcast %struct.TYPE_15__* %91 to i8*
  %94 = bitcast %struct.TYPE_15__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %320

98:                                               ; preds = %86
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** @entityStateFields, align 8
  %100 = call i32 @ARRAY_LEN(%struct.TYPE_13__* %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = call i32 @MSG_ReadByte(%struct.TYPE_14__* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106, %98
  %110 = load i32, i32* @ERR_DROP, align 4
  %111 = call i32 (i32, i8*, ...) @Com_Error(i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %114 = icmp ne %struct.TYPE_16__* %113, null
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 2
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %133

125:                                              ; preds = %120, %115
  store i32 1, i32* %15, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %131)
  br label %134

133:                                              ; preds = %120, %112
  store i32 0, i32* %15, align 4
  br label %134

134:                                              ; preds = %133, %125
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %9, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** @entityStateFields, align 8
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %12, align 8
  br label %139

139:                                              ; preds = %247, %134
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %252

143:                                              ; preds = %139
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = bitcast %struct.TYPE_15__* %144 to i32*
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  store i32* %150, i32** %13, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = bitcast %struct.TYPE_15__* %151 to i32*
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  store i32* %157, i32** %14, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %158, i32 1)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %143
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %14, align 8
  store i32 %163, i32* %164, align 4
  br label %246

165:                                              ; preds = %143
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %221

170:                                              ; preds = %165
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %171, i32 1)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32*, i32** %14, align 8
  %176 = bitcast i32* %175 to float*
  store float 0.000000e+00, float* %176, align 4
  br label %220

177:                                              ; preds = %170
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %179 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %178, i32 1)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = load i32, i32* @FLOAT_INT_BITS, align 4
  %184 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %182, i32 %183)
  store i32 %184, i32* %16, align 4
  %185 = load i64, i64* @FLOAT_INT_BIAS, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sitofp i32 %190 to float
  %192 = load i32*, i32** %14, align 8
  %193 = bitcast i32* %192 to float*
  store float %191, float* %193, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %181
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %16, align 4
  %201 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %196, %181
  br label %219

203:                                              ; preds = %177
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %205 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %204, i32 32)
  %206 = load i32*, i32** %14, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %203
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %14, align 8
  %214 = bitcast i32* %213 to float*
  %215 = load float, float* %214, align 4
  %216 = fpext float %215 to double
  %217 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %212, double %216)
  br label %218

218:                                              ; preds = %209, %203
  br label %219

219:                                              ; preds = %218, %202
  br label %220

220:                                              ; preds = %219, %174
  br label %245

221:                                              ; preds = %165
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %223 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %222, i32 1)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i32*, i32** %14, align 8
  store i32 0, i32* %226, align 4
  br label %244

227:                                              ; preds = %221
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @MSG_ReadBits(%struct.TYPE_14__* %228, i32 %231)
  %233 = load i32*, i32** %14, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* %15, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %227
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %14, align 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %239, i32 %241)
  br label %243

243:                                              ; preds = %236, %227
  br label %244

244:                                              ; preds = %243, %225
  br label %245

245:                                              ; preds = %244, %220
  br label %246

246:                                              ; preds = %245, %161
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 1
  store %struct.TYPE_13__* %251, %struct.TYPE_13__** %12, align 8
  br label %139

252:                                              ; preds = %139
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %9, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** @entityStateFields, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i64 %256
  store %struct.TYPE_13__* %257, %struct.TYPE_13__** %12, align 8
  br label %258

258:                                              ; preds = %280, %252
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %285

262:                                              ; preds = %258
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %264 = bitcast %struct.TYPE_15__* %263 to i32*
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  store i32* %269, i32** %13, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %271 = bitcast %struct.TYPE_15__* %270 to i32*
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  store i32* %276, i32** %14, align 8
  %277 = load i32*, i32** %13, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %14, align 8
  store i32 %278, i32* %279, align 4
  br label %280

280:                                              ; preds = %262
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %9, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 1
  store %struct.TYPE_13__* %284, %struct.TYPE_13__** %12, align 8
  br label %258

285:                                              ; preds = %258
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %320

288:                                              ; preds = %285
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = mul nsw i32 %296, 8
  %298 = load i32, i32* @GENTITYNUM_BITS, align 4
  %299 = sub nsw i32 %297, %298
  store i32 %299, i32* %18, align 4
  br label %315

300:                                              ; preds = %288
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, 1
  %305 = mul nsw i32 %304, 8
  %306 = sext i32 %305 to i64
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = add nsw i64 %306, %309
  %311 = load i32, i32* @GENTITYNUM_BITS, align 4
  %312 = sext i32 %311 to i64
  %313 = sub nsw i64 %310, %312
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %18, align 4
  br label %315

315:                                              ; preds = %300, %293
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* %17, align 4
  %318 = sub nsw i32 %316, %317
  %319 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %318)
  br label %320

320:                                              ; preds = %85, %90, %315, %285
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i32 @MSG_ReadBits(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_LEN(%struct.TYPE_13__*) #1

declare dso_local i32 @MSG_ReadByte(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
