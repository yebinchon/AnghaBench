; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_serialize.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [135 x i8] c"a:%d:{s:5:\22views\22;i:%d;s:8:\22visitors\22;i:%d;s:7:\22deletes\22;i:%d;s:7:\22created\22;i:%d;s:7:\22expires\22;i:%d;s:3:\22sex\22;a:2:{i:1;i:%d;i:2;i:%d;}\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"s:26:\22last_month_unique_visitors\22;i:%d;\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"s:25:\22last_week_unique_visitors\22;i:%d;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@MAX_AGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"marital_status\00", align 1
@MAX_MSTATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"political_views\00", align 1
@MAX_POLIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@MAX_SECTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"sex_age\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cities\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"countries\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"geoip_countries\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sources\00", align 1
@MAX_SOURCE = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_serialize(%struct.counter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.counter* %0, %struct.counter** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  %9 = load %struct.counter*, %struct.counter** %4, align 8
  %10 = icmp ne %struct.counter* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %316

12:                                               ; preds = %2
  %13 = load %struct.counter*, %struct.counter** %4, align 8
  %14 = getelementptr inbounds %struct.counter, %struct.counter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -2, i32* %3, align 4
  br label %316

18:                                               ; preds = %12
  %19 = load %struct.counter*, %struct.counter** %4, align 8
  %20 = getelementptr inbounds %struct.counter, %struct.counter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add nsw i32 6, %23
  %25 = load %struct.counter*, %struct.counter** %4, align 8
  %26 = getelementptr inbounds %struct.counter, %struct.counter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %24, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.counter*, %struct.counter** %4, align 8
  %32 = getelementptr inbounds %struct.counter, %struct.counter* %31, i32 0, i32 18
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %18
  %39 = load %struct.counter*, %struct.counter** %4, align 8
  %40 = getelementptr inbounds %struct.counter, %struct.counter* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.counter*, %struct.counter** %4, align 8
  %48 = getelementptr inbounds %struct.counter, %struct.counter* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.counter*, %struct.counter** %4, align 8
  %56 = getelementptr inbounds %struct.counter, %struct.counter* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.counter*, %struct.counter** %4, align 8
  %64 = getelementptr inbounds %struct.counter, %struct.counter* %63, i32 0, i32 13
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.counter*, %struct.counter** %4, align 8
  %72 = getelementptr inbounds %struct.counter, %struct.counter* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.counter*, %struct.counter** %4, align 8
  %80 = getelementptr inbounds %struct.counter, %struct.counter* %79, i32 0, i32 12
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.counter*, %struct.counter** %4, align 8
  %88 = getelementptr inbounds %struct.counter, %struct.counter* %87, i32 0, i32 11
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.counter*, %struct.counter** %4, align 8
  %96 = getelementptr inbounds %struct.counter, %struct.counter* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.counter*, %struct.counter** %4, align 8
  %104 = getelementptr inbounds %struct.counter, %struct.counter* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.counter*, %struct.counter** %4, align 8
  %114 = getelementptr inbounds %struct.counter, %struct.counter* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.counter*, %struct.counter** %4, align 8
  %117 = getelementptr inbounds %struct.counter, %struct.counter* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.counter*, %struct.counter** %4, align 8
  %120 = getelementptr inbounds %struct.counter, %struct.counter* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.counter*, %struct.counter** %4, align 8
  %123 = getelementptr inbounds %struct.counter, %struct.counter* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.counter*, %struct.counter** %4, align 8
  %126 = getelementptr inbounds %struct.counter, %struct.counter* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.counter*, %struct.counter** %4, align 8
  %129 = getelementptr inbounds %struct.counter, %struct.counter* %128, i32 0, i32 8
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.counter*, %struct.counter** %4, align 8
  %134 = getelementptr inbounds %struct.counter, %struct.counter* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %132, i32 %137)
  %139 = load i8*, i8** %6, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %6, align 8
  %142 = load %struct.counter*, %struct.counter** %4, align 8
  %143 = getelementptr inbounds %struct.counter, %struct.counter* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %110
  %147 = load i8*, i8** %6, align 8
  %148 = load %struct.counter*, %struct.counter** %4, align 8
  %149 = getelementptr inbounds %struct.counter, %struct.counter* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i8*, i8** %6, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %6, align 8
  br label %155

155:                                              ; preds = %146, %110
  %156 = load %struct.counter*, %struct.counter** %4, align 8
  %157 = getelementptr inbounds %struct.counter, %struct.counter* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  %162 = load %struct.counter*, %struct.counter** %4, align 8
  %163 = getelementptr inbounds %struct.counter, %struct.counter* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %161, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  %166 = load i8*, i8** %6, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %6, align 8
  br label %169

169:                                              ; preds = %160, %155
  %170 = load %struct.counter*, %struct.counter** %4, align 8
  %171 = getelementptr inbounds %struct.counter, %struct.counter* %170, i32 0, i32 18
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = load %struct.counter*, %struct.counter** %4, align 8
  %177 = getelementptr inbounds %struct.counter, %struct.counter* %176, i32 0, i32 18
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MAX_AGE, align 4
  %180 = call i8* @serialize_list(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %179)
  store i8* %180, i8** %6, align 8
  br label %181

181:                                              ; preds = %174, %169
  %182 = load %struct.counter*, %struct.counter** %4, align 8
  %183 = getelementptr inbounds %struct.counter, %struct.counter* %182, i32 0, i32 17
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i8*, i8** %6, align 8
  %188 = load %struct.counter*, %struct.counter** %4, align 8
  %189 = getelementptr inbounds %struct.counter, %struct.counter* %188, i32 0, i32 17
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @MAX_MSTATUS, align 4
  %192 = call i8* @serialize_list(i8* %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %190, i32 %191)
  store i8* %192, i8** %6, align 8
  br label %193

193:                                              ; preds = %186, %181
  %194 = load %struct.counter*, %struct.counter** %4, align 8
  %195 = getelementptr inbounds %struct.counter, %struct.counter* %194, i32 0, i32 16
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i8*, i8** %6, align 8
  %200 = load %struct.counter*, %struct.counter** %4, align 8
  %201 = getelementptr inbounds %struct.counter, %struct.counter* %200, i32 0, i32 16
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @MAX_POLIT, align 4
  %204 = call i8* @serialize_list(i8* %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %202, i32 %203)
  store i8* %204, i8** %6, align 8
  br label %205

205:                                              ; preds = %198, %193
  %206 = load %struct.counter*, %struct.counter** %4, align 8
  %207 = getelementptr inbounds %struct.counter, %struct.counter* %206, i32 0, i32 15
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = load i8*, i8** %6, align 8
  %212 = load %struct.counter*, %struct.counter** %4, align 8
  %213 = getelementptr inbounds %struct.counter, %struct.counter* %212, i32 0, i32 15
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @MAX_SECTION, align 4
  %216 = call i8* @serialize_list(i8* %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %215)
  store i8* %216, i8** %6, align 8
  br label %217

217:                                              ; preds = %210, %205
  %218 = load %struct.counter*, %struct.counter** %4, align 8
  %219 = getelementptr inbounds %struct.counter, %struct.counter* %218, i32 0, i32 14
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load i8*, i8** %6, align 8
  %224 = load %struct.counter*, %struct.counter** %4, align 8
  %225 = getelementptr inbounds %struct.counter, %struct.counter* %224, i32 0, i32 14
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @MAX_AGE, align 4
  %228 = mul nsw i32 %227, 2
  %229 = call i8* @serialize_list(i8* %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %226, i32 %228)
  store i8* %229, i8** %6, align 8
  br label %230

230:                                              ; preds = %222, %217
  %231 = load %struct.counter*, %struct.counter** %4, align 8
  %232 = getelementptr inbounds %struct.counter, %struct.counter* %231, i32 0, i32 13
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = load i8*, i8** %6, align 8
  %237 = load %struct.counter*, %struct.counter** %4, align 8
  %238 = getelementptr inbounds %struct.counter, %struct.counter* %237, i32 0, i32 13
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.counter*, %struct.counter** %4, align 8
  %241 = getelementptr inbounds %struct.counter, %struct.counter* %240, i32 0, i32 13
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 -1
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @serialize_list2(i8* %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %239, i32 %244)
  store i8* %245, i8** %6, align 8
  br label %246

246:                                              ; preds = %235, %230
  %247 = load %struct.counter*, %struct.counter** %4, align 8
  %248 = getelementptr inbounds %struct.counter, %struct.counter* %247, i32 0, i32 12
  %249 = load i32*, i32** %248, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %262

251:                                              ; preds = %246
  %252 = load i8*, i8** %6, align 8
  %253 = load %struct.counter*, %struct.counter** %4, align 8
  %254 = getelementptr inbounds %struct.counter, %struct.counter* %253, i32 0, i32 12
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.counter*, %struct.counter** %4, align 8
  %257 = getelementptr inbounds %struct.counter, %struct.counter* %256, i32 0, i32 12
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 -1
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @serialize_list2a(i8* %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %255, i32 %260)
  store i8* %261, i8** %6, align 8
  br label %262

262:                                              ; preds = %251, %246
  %263 = load %struct.counter*, %struct.counter** %4, align 8
  %264 = getelementptr inbounds %struct.counter, %struct.counter* %263, i32 0, i32 11
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %278

267:                                              ; preds = %262
  %268 = load i8*, i8** %6, align 8
  %269 = load %struct.counter*, %struct.counter** %4, align 8
  %270 = getelementptr inbounds %struct.counter, %struct.counter* %269, i32 0, i32 11
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.counter*, %struct.counter** %4, align 8
  %273 = getelementptr inbounds %struct.counter, %struct.counter* %272, i32 0, i32 11
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 -1
  %276 = load i32, i32* %275, align 4
  %277 = call i8* @serialize_list2a(i8* %268, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* %271, i32 %276)
  store i8* %277, i8** %6, align 8
  br label %278

278:                                              ; preds = %267, %262
  %279 = load %struct.counter*, %struct.counter** %4, align 8
  %280 = getelementptr inbounds %struct.counter, %struct.counter* %279, i32 0, i32 10
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i8*, i8** %6, align 8
  %285 = load %struct.counter*, %struct.counter** %4, align 8
  %286 = getelementptr inbounds %struct.counter, %struct.counter* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @MAX_SOURCE, align 4
  %289 = call i8* @serialize_list(i8* %284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %287, i32 %288)
  store i8* %289, i8** %6, align 8
  br label %290

290:                                              ; preds = %283, %278
  %291 = load %struct.counter*, %struct.counter** %4, align 8
  %292 = getelementptr inbounds %struct.counter, %struct.counter* %291, i32 0, i32 9
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load i8*, i8** %6, align 8
  %297 = load %struct.counter*, %struct.counter** %4, align 8
  %298 = call i8* @serialize_subcnt_list(i8* %296, %struct.counter* %297)
  store i8* %298, i8** %6, align 8
  br label %299

299:                                              ; preds = %295, %290
  %300 = load i8*, i8** %6, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %6, align 8
  store i8 125, i8* %300, align 1
  %302 = load i8*, i8** %6, align 8
  store i8 0, i8* %302, align 1
  %303 = load i32, i32* @verbosity, align 4
  %304 = icmp sge i32 %303, 4
  br i1 %304, label %305, label %309

305:                                              ; preds = %299
  %306 = load i32, i32* @stderr, align 4
  %307 = load i8*, i8** %5, align 8
  %308 = call i32 @fprintf(i32 %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %307)
  br label %309

309:                                              ; preds = %305, %299
  %310 = load i8*, i8** %6, align 8
  %311 = load i8*, i8** %5, align 8
  %312 = ptrtoint i8* %310 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %309, %17, %11
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i8* @serialize_list(i8*, i8*, i32, i32) #1

declare dso_local i8* @serialize_list2(i8*, i8*, i32*, i32) #1

declare dso_local i8* @serialize_list2a(i8*, i8*, i32*, i32) #1

declare dso_local i8* @serialize_subcnt_list(i8*, %struct.counter*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
