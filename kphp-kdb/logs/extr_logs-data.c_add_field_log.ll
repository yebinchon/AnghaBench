; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_add_field_log.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_add_field_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.lev_logs_add_field = type { i32 }

@buff = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Wrong number of parameters.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Not a valid name [%s] for type_id.\00", align 1
@MAX_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Type_id [%d] not in range [1;%d].\00", align 1
@types = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Type [%d] doesn't exist. You need to create it first.\00", align 1
@map_type_id = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"There is no type named [%s].\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Not enough parameters in field description.\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Wrond type of new field [%s].\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Not a valid name [%s] for field_name.\00", align 1
@t_string = common dso_local global i32 0, align 4
@ttt_size = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [89 x i8] c"Max size (248) of nunber fields of type [%s] exceeded. Contact soft developers for help.\00", align 1
@.str.10 = private unnamed_addr constant [91 x i8] c"Max number (64) of fields for type [%s] already created. Contact soft developers for help.\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Field with name [%s] already exists in type [%s].\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @add_field_log(%struct.lev_logs_add_field* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lev_logs_add_field*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lev_logs_add_field* %0, %struct.lev_logs_add_field** %3, align 8
  %12 = load i8*, i8** @buff, align 8
  %13 = load %struct.lev_logs_add_field*, %struct.lev_logs_add_field** %3, align 8
  %14 = getelementptr inbounds %struct.lev_logs_add_field, %struct.lev_logs_add_field* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcpy(i8* %12, i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i8*, i8** @buff, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 44
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i8*, i8** @buff, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ false, %17 ], [ %32, %25 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %17

38:                                               ; preds = %33
  %39 = load i8*, i8** @buff, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %2, align 8
  br label %301

48:                                               ; preds = %38
  %49 = load i8*, i8** @buff, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** @buff, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 49
  br i1 %57, label %58, label %97

58:                                               ; preds = %48
  %59 = load i8*, i8** @buff, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load i8*, i8** @buff, align 8
  %66 = call i32 @sscanf(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** @buff, align 8
  %72 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  store i8* %72, i8** %2, align 8
  br label %301

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = icmp sle i32 1, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MAX_TYPE, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MAX_TYPE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %83)
  store i8* %84, i8** %2, align 8
  br label %301

85:                                               ; preds = %76
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  %95 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  store i8* %95, i8** %2, align 8
  br label %301

96:                                               ; preds = %85
  br label %116

97:                                               ; preds = %58, %48
  %98 = load i8*, i8** @buff, align 8
  %99 = call i32 @is_name(i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** @buff, align 8
  %103 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  store i8* %103, i8** %2, align 8
  br label %301

104:                                              ; preds = %97
  %105 = load i8*, i8** @buff, align 8
  %106 = call i32 @dl_strhash(i8* %105)
  %107 = call i32* @map_ll_int_get(i32* @map_type_id, i32 %106)
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i8*, i8** @buff, align 8
  %112 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  store i8* %112, i8** %2, align 8
  br label %301

113:                                              ; preds = %104
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %96
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %137, %116
  %120 = load i8*, i8** @buff, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 58
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load i8*, i8** @buff, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %127, %119
  %136 = phi i1 [ false, %119 ], [ %134, %127 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %119

140:                                              ; preds = %135
  %141 = load i8*, i8** @buff, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 58
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  store i8* %149, i8** %2, align 8
  br label %301

150:                                              ; preds = %140
  %151 = load i8*, i8** @buff, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** @buff, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = call i32 @get_type(i8* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %170

163:                                              ; preds = %150
  %164 = load i8*, i8** @buff, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %168)
  store i8* %169, i8** %2, align 8
  br label %301

170:                                              ; preds = %150
  %171 = load i8*, i8** @buff, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  store i8* %175, i8** %10, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @is_name(i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %170
  %180 = load i8*, i8** %10, align 8
  %181 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %180)
  store i8* %181, i8** %2, align 8
  br label %301

182:                                              ; preds = %170
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @t_string, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %249

186:                                              ; preds = %182
  %187 = load i32*, i32** @ttt_size, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %234, %186
  %193 = load i32, i32* %4, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %193, %199
  br i1 %200, label %201, label %237

201:                                              ; preds = %192
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @t_string, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %201
  %216 = load i32*, i32** @ttt_size, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %216, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %215, %201
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  br label %192

237:                                              ; preds = %192
  %238 = load i32, i32* %11, align 4
  %239 = icmp sge i32 %238, 248
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.9, i64 0, i64 0), i32* %246)
  store i8* %247, i8** %2, align 8
  br label %301

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %182
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp sge i32 %255, 64
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load i8*, i8** @buff, align 8
  %259 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.10, i64 0, i64 0), i8* %258)
  store i8* %259, i8** %2, align 8
  br label %301

260:                                              ; preds = %249
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %290, %260
  %262 = load i32, i32* %4, align 4
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %262, %268
  br i1 %269, label %270, label %293

270:                                              ; preds = %261
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %275, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i8*, i8** %10, align 8
  %283 = call i64 @strcmp(i32 %281, i8* %282)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %270
  %286 = load i8*, i8** %10, align 8
  %287 = load i8*, i8** @buff, align 8
  %288 = call i8* (i8*, ...) @dl_pstr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* %286, i8* %287)
  store i8* %288, i8** %2, align 8
  br label %301

289:                                              ; preds = %270
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %4, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %4, align 4
  br label %261

293:                                              ; preds = %261
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i64 %296
  %298 = load i8*, i8** %10, align 8
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @add_field(%struct.TYPE_5__* %297, i8* %298, i32 %299)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %301

301:                                              ; preds = %293, %285, %257, %240, %179, %163, %148, %110, %101, %93, %80, %70, %46
  %302 = load i8*, i8** %2, align 8
  ret i8* %302
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @dl_pstr(i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @is_name(i8*) #1

declare dso_local i32* @map_ll_int_get(i32*, i32) #1

declare dso_local i32 @dl_strhash(i8*) #1

declare dso_local i32 @get_type(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @add_field(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
