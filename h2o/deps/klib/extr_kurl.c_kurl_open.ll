; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_kurl_open.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_kurl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"s3://\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_NOSIGNAL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_cb = common dso_local global i64 0, align 8
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_FOLLOWLOCATION = common dso_local global i32 0, align 4
@KU_DEF_BUFLEN = common dso_local global i32 0, align 4
@CURL_MAX_WRITE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @kurl_open(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %36, %23
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @isalnum(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %25

39:                                               ; preds = %34, %25
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %18, %2
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @O_RDONLY, align 4
  %51 = call i32 @open(i8* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %267

54:                                               ; preds = %48, %45
  %55 = call i64 @calloc(i32 1, i32 40)
  %56 = inttoptr i64 %55 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ -1, %61 ]
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = call i64 @kurl_isfile(%struct.TYPE_11__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %213, label %69

69:                                               ; preds = %62
  %70 = call i32 (...) @curl_multi_init()
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = call i32 (...) @curl_easy_init()
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i8* @strstr(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i8*, i8** %4, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %168

80:                                               ; preds = %69
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  br label %89

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8* [ %87, %84 ], [ null, %88 ]
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  br label %98

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i8* [ %96, %93 ], [ null, %97 ]
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = icmp ne %struct.TYPE_12__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  br label %107

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi i8* [ %105, %102 ], [ null, %106 ]
  call void @s3_parse(%struct.TYPE_10__* sret %13, i8* %81, i8* %90, i8* %99, i8* %108)
  %109 = bitcast %struct.TYPE_10__* %12 to i8*
  %110 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 24, i1 false)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %114, %107
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = call i32 @kurl_close(%struct.TYPE_11__* %123)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %267

125:                                              ; preds = %118
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @curl_slist_append(i64 %128, i64 %130)
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @curl_slist_append(i64 %137, i64 %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CURLOPT_URL, align 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %146, i32 %147, i64 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %153, i32 %154, i64 %157)
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @free(i64 %160)
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @free(i64 %163)
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @free(i64 %166)
  br label %175

168:                                              ; preds = %69
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CURLOPT_URL, align 4
  %173 = load i8*, i8** %4, align 8
  %174 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %171, i32 %172, i8* %173)
  br label %175

175:                                              ; preds = %168, %125
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %178, i32 %179, %struct.TYPE_11__* %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %186 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %184, i32 %185, i64 0)
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CURLOPT_NOSIGNAL, align 4
  %191 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %189, i32 %190, i64 1)
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %196 = load i64, i64* @write_cb, align 8
  %197 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %194, i32 %195, i64 %196)
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %202 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %200, i32 %201, i64 0)
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %207 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %205, i32 %206, i64 0)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CURLOPT_FOLLOWLOCATION, align 4
  %212 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %210, i32 %211, i64 1)
  br label %213

213:                                              ; preds = %175, %62
  %214 = load i32, i32* @KU_DEF_BUFLEN, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = call i64 @kurl_isfile(%struct.TYPE_11__* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %213
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CURL_MAX_WRITE_SIZE, align 4
  %225 = mul nsw i32 %224, 2
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load i32, i32* @CURL_MAX_WRITE_SIZE, align 4
  %229 = mul nsw i32 %228, 2
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %227, %220, %213
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @calloc(i32 %235, i32 1)
  %237 = inttoptr i64 %236 to i32*
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 3
  store i32* %237, i32** %239, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %241 = call i64 @kurl_isfile(%struct.TYPE_11__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %232
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %245 = call i64 @fill_buffer(%struct.TYPE_11__* %244)
  %246 = icmp sle i64 %245, 0
  %247 = zext i1 %246 to i32
  store i32 %247, i32* %11, align 4
  br label %259

248:                                              ; preds = %232
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %250 = call i64 @prepare(%struct.TYPE_11__* %249, i32 0)
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %254 = call i64 @fill_buffer(%struct.TYPE_11__* %253)
  %255 = icmp sle i64 %254, 0
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi i1 [ true, %248 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %256, %243
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = call i32 @kurl_close(%struct.TYPE_11__* %263)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %267

265:                                              ; preds = %259
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %266, %struct.TYPE_11__** %3, align 8
  br label %267

267:                                              ; preds = %265, %262, %122, %53
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %268
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @kurl_isfile(%struct.TYPE_11__*) #1

declare dso_local i32 @curl_multi_init(...) #1

declare dso_local i32 @curl_easy_init(...) #1

declare dso_local void @s3_parse(%struct.TYPE_10__* sret, i8*, i8*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kurl_close(%struct.TYPE_11__*) #1

declare dso_local i8* @curl_slist_append(i64, i64) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, ...) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @fill_buffer(%struct.TYPE_11__*) #1

declare dso_local i64 @prepare(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
