; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_file.c_on_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_file.c_on_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, %struct.TYPE_27__, i32, %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i32* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_31__ = type { i64, i32, i32, %struct.TYPE_30__*, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_25__ = type { i64, i32* }
%struct.st_h2o_sendfile_generator_t = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Moved Permanently\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Moved Permantently\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@H2O_FILE_FLAG_DIR_LISTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@ENFILE = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Service Unavailable\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"please try again later\00", align 1
@ENOTDIR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"Access Forbidden\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"access forbidden\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_29__*)* @on_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_req(i32* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.st_h2o_sendfile_generator_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca %struct.TYPE_30__, align 8
  %15 = alloca %struct.TYPE_30__, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_30__, align 8
  %18 = alloca %struct.TYPE_30__, align 8
  %19 = alloca %struct.TYPE_30__, align 8
  %20 = alloca %struct.TYPE_30__, align 8
  %21 = alloca %struct.TYPE_30__, align 8
  %22 = alloca %struct.TYPE_30__, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_30__, align 8
  %25 = alloca %struct.TYPE_30__, align 8
  %26 = alloca %struct.TYPE_30__, align 8
  %27 = alloca %struct.TYPE_30__, align 8
  %28 = alloca %struct.TYPE_30__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = bitcast i8* %30 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %31, %struct.TYPE_31__** %6, align 8
  store %struct.st_h2o_sendfile_generator_t* null, %struct.st_h2o_sendfile_generator_t** %10, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %113

41:                                               ; preds = %2
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call { i64, i32* } @h2o_uri_escape(i32* %43, i32* %47, i64 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = bitcast %struct.TYPE_30__* %12 to { i64, i32* }*
  %54 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %53, i32 0, i32 0
  %55 = extractvalue { i64, i32* } %52, 0
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %53, i32 0, i32 1
  %57 = extractvalue { i64, i32* } %52, 1
  store i32* %57, i32** %56, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SIZE_MAX, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %41
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call { i64, i32* } (i64, ...) @h2o_iovec_init(i64 %73, i64 %81)
  %83 = bitcast %struct.TYPE_30__* %14 to { i64, i32* }*
  %84 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %83, i32 0, i32 0
  %85 = extractvalue { i64, i32* } %82, 0
  store i64 %85, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %83, i32 0, i32 1
  %87 = extractvalue { i64, i32* } %82, 1
  store i32* %87, i32** %86, align 8
  %88 = bitcast %struct.TYPE_30__* %12 to { i64, i32* }*
  %89 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %88, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast %struct.TYPE_30__* %14 to { i64, i32* }*
  %94 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %93, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call { i64, i32* } (i32*, i64, i32*, i64, i32*, ...) @h2o_concat(i32* %65, i64 %90, i32* %92, i64 %95, i32* %97)
  %99 = bitcast %struct.TYPE_30__* %13 to { i64, i32* }*
  %100 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %99, i32 0, i32 0
  %101 = extractvalue { i64, i32* } %98, 0
  store i64 %101, i64* %100, align 8
  %102 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %99, i32 0, i32 1
  %103 = extractvalue { i64, i32* } %98, 1
  store i32* %103, i32** %102, align 8
  %104 = bitcast %struct.TYPE_30__* %12 to i8*
  %105 = bitcast %struct.TYPE_30__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  br label %106

106:                                              ; preds = %63, %41
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @h2o_send_redirect(%struct.TYPE_29__* %107, i32 301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %109, i64 %111)
  store i32 0, i32* %3, align 4
  br label %596

113:                                              ; preds = %2
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %9, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %125, %126
  %128 = add i64 %121, %127
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %128, %131
  %133 = add i64 %132, 1
  %134 = call i8* @alloca(i64 %133)
  store i8* %134, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @memcpy(i8* %137, i32* %141, i64 %145)
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %8, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = sub i64 %165, %166
  %168 = call i32 @memcpy(i8* %155, i32* %161, i64 %167)
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = sub i64 %172, %173
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %8, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %178 = call i32 @h2o_resp_add_date_header(%struct.TYPE_29__* %177)
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 3
  %181 = bitcast %struct.TYPE_30__* %15 to i8*
  %182 = bitcast %struct.TYPE_30__* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 16, i1 false)
  %183 = load i8*, i8** %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = sub i64 %184, 1
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 47
  br i1 %189, label %190, label %424

190:                                              ; preds = %113
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %192, align 8
  store %struct.TYPE_30__* %193, %struct.TYPE_30__** %16, align 8
  br label %194

194:                                              ; preds = %366, %190
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %369

199:                                              ; preds = %194
  %200 = load i8*, i8** %7, align 8
  %201 = load i64, i64* %8, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @memcpy(i8* %202, i32* %205, i64 %208)
  %210 = load i8*, i8** %7, align 8
  %211 = load i64, i64* %8, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %211, %214
  %216 = getelementptr inbounds i8, i8* %210, i64 %215
  store i8 0, i8* %216, align 1
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = load i64, i64* %8, align 8
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %219, %222
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call %struct.st_h2o_sendfile_generator_t* @create_generator(%struct.TYPE_29__* %217, i8* %218, i64 %223, i32* %11, i32 %226)
  store %struct.st_h2o_sendfile_generator_t* %227, %struct.st_h2o_sendfile_generator_t** %10, align 8
  %228 = icmp ne %struct.st_h2o_sendfile_generator_t* %227, null
  br i1 %228, label %229, label %258

229:                                              ; preds = %199
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %8, align 8
  %234 = add i64 %233, %232
  store i64 %234, i64* %8, align 8
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %240 = bitcast %struct.TYPE_30__* %238 to { i64, i32* }*
  %241 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %240, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = bitcast %struct.TYPE_30__* %239 to { i64, i32* }*
  %246 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %245, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = call { i64, i32* } (i32*, i64, i32*, i64, i32*, ...) @h2o_concat(i32* %236, i64 %242, i32* %244, i64 %247, i32* %249)
  %251 = bitcast %struct.TYPE_30__* %17 to { i64, i32* }*
  %252 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %251, i32 0, i32 0
  %253 = extractvalue { i64, i32* } %250, 0
  store i64 %253, i64* %252, align 8
  %254 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %251, i32 0, i32 1
  %255 = extractvalue { i64, i32* } %250, 1
  store i32* %255, i32** %254, align 8
  %256 = bitcast %struct.TYPE_30__* %15 to i8*
  %257 = bitcast %struct.TYPE_30__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %256, i8* align 8 %257, i64 16, i1 false)
  br label %578

258:                                              ; preds = %199
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %360

261:                                              ; preds = %258
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %267 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %268 = sext i32 %267 to i64
  %269 = call { i64, i32* } (i64, ...) @h2o_iovec_init(i64 %268)
  %270 = bitcast %struct.TYPE_30__* %19 to { i64, i32* }*
  %271 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %270, i32 0, i32 0
  %272 = extractvalue { i64, i32* } %269, 0
  store i64 %272, i64* %271, align 8
  %273 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %270, i32 0, i32 1
  %274 = extractvalue { i64, i32* } %269, 1
  store i32* %274, i32** %273, align 8
  %275 = bitcast %struct.TYPE_30__* %265 to { i64, i32* }*
  %276 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %275, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = bitcast %struct.TYPE_30__* %266 to { i64, i32* }*
  %281 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %280, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = call { i64, i32* } (i32*, i64, i32*, i64, i32*, ...) @h2o_concat(i32* %263, i64 %277, i32* %279, i64 %282, i32* %284, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %19)
  %286 = bitcast %struct.TYPE_30__* %18 to { i64, i32* }*
  %287 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %286, i32 0, i32 0
  %288 = extractvalue { i64, i32* } %285, 0
  store i64 %288, i64* %287, align 8
  %289 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %286, i32 0, i32 1
  %290 = extractvalue { i64, i32* } %285, 1
  store i32* %290, i32** %289, align 8
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call { i64, i32* } @h2o_uri_escape(i32* %292, i32* %294, i64 %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %298 = bitcast %struct.TYPE_30__* %20 to { i64, i32* }*
  %299 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %298, i32 0, i32 0
  %300 = extractvalue { i64, i32* } %297, 0
  store i64 %300, i64* %299, align 8
  %301 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %298, i32 0, i32 1
  %302 = extractvalue { i64, i32* } %297, 1
  store i32* %302, i32** %301, align 8
  %303 = bitcast %struct.TYPE_30__* %18 to i8*
  %304 = bitcast %struct.TYPE_30__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 16, i1 false)
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @SIZE_MAX, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %353

310:                                              ; preds = %261
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %316, %319
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = sub nsw i64 %324, %327
  %329 = call { i64, i32* } (i64, ...) @h2o_iovec_init(i64 %320, i64 %328)
  %330 = bitcast %struct.TYPE_30__* %22 to { i64, i32* }*
  %331 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %330, i32 0, i32 0
  %332 = extractvalue { i64, i32* } %329, 0
  store i64 %332, i64* %331, align 8
  %333 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %330, i32 0, i32 1
  %334 = extractvalue { i64, i32* } %329, 1
  store i32* %334, i32** %333, align 8
  %335 = bitcast %struct.TYPE_30__* %18 to { i64, i32* }*
  %336 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %335, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = bitcast %struct.TYPE_30__* %22 to { i64, i32* }*
  %341 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %340, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = call { i64, i32* } (i32*, i64, i32*, i64, i32*, ...) @h2o_concat(i32* %312, i64 %337, i32* %339, i64 %342, i32* %344)
  %346 = bitcast %struct.TYPE_30__* %21 to { i64, i32* }*
  %347 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %346, i32 0, i32 0
  %348 = extractvalue { i64, i32* } %345, 0
  store i64 %348, i64* %347, align 8
  %349 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %346, i32 0, i32 1
  %350 = extractvalue { i64, i32* } %345, 1
  store i32* %350, i32** %349, align 8
  %351 = bitcast %struct.TYPE_30__* %18 to i8*
  %352 = bitcast %struct.TYPE_30__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %351, i8* align 8 %352, i64 16, i1 false)
  br label %353

353:                                              ; preds = %310, %261
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @h2o_send_redirect(%struct.TYPE_29__* %354, i32 301, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %356, i64 %358)
  store i32 0, i32* %3, align 4
  br label %596

360:                                              ; preds = %258
  %361 = load i64, i64* @errno, align 8
  %362 = load i64, i64* @ENOENT, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  br label %369

365:                                              ; preds = %360
  br label %366

366:                                              ; preds = %365
  %367 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %368 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %367, i32 1
  store %struct.TYPE_30__* %368, %struct.TYPE_30__** %16, align 8
  br label %194

369:                                              ; preds = %364, %194
  %370 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = icmp eq i32* %372, null
  br i1 %373, label %374, label %423

374:                                              ; preds = %369
  %375 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @H2O_FILE_FLAG_DIR_LISTING, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %423

381:                                              ; preds = %374
  %382 = load i8*, i8** %7, align 8
  %383 = load i64, i64* %8, align 8
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8 0, i8* %384, align 1
  store i32 0, i32* %23, align 4
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 4
  %391 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %394 = call i64 @h2o_memis(i32 %388, i32 %392, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %381
  store i32 1, i32* %23, align 4
  br label %414

397:                                              ; preds = %381
  %398 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %398, i32 0, i32 4
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %407 = call i64 @h2o_memis(i32 %401, i32 %405, i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %397
  br label %413

410:                                              ; preds = %397
  %411 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %412 = call i32 @send_method_not_allowed(%struct.TYPE_29__* %411)
  store i32 0, i32* %3, align 4
  br label %596

413:                                              ; preds = %409
  br label %414

414:                                              ; preds = %413, %396
  %415 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %416 = load i8*, i8** %7, align 8
  %417 = load i64, i64* %8, align 8
  %418 = load i32, i32* %23, align 4
  %419 = call i64 @send_dir_listing(%struct.TYPE_29__* %415, i8* %416, i64 %417, i32 %418)
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %414
  store i32 0, i32* %3, align 4
  br label %596

422:                                              ; preds = %414
  br label %423

423:                                              ; preds = %422, %374, %369
  br label %539

424:                                              ; preds = %113
  %425 = load i8*, i8** %7, align 8
  %426 = load i64, i64* %8, align 8
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  store i8 0, i8* %427, align 1
  %428 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %429 = load i8*, i8** %7, align 8
  %430 = load i64, i64* %8, align 8
  %431 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = call %struct.st_h2o_sendfile_generator_t* @create_generator(%struct.TYPE_29__* %428, i8* %429, i64 %430, i32* %11, i32 %433)
  store %struct.st_h2o_sendfile_generator_t* %434, %struct.st_h2o_sendfile_generator_t** %10, align 8
  %435 = icmp ne %struct.st_h2o_sendfile_generator_t* %434, null
  br i1 %435, label %436, label %437

436:                                              ; preds = %424
  br label %578

437:                                              ; preds = %424
  %438 = load i32, i32* %11, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %538

440:                                              ; preds = %437
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 2
  %443 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 3
  %445 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %446 = sext i32 %445 to i64
  %447 = call { i64, i32* } (i64, ...) @h2o_iovec_init(i64 %446)
  %448 = bitcast %struct.TYPE_30__* %25 to { i64, i32* }*
  %449 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %448, i32 0, i32 0
  %450 = extractvalue { i64, i32* } %447, 0
  store i64 %450, i64* %449, align 8
  %451 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %448, i32 0, i32 1
  %452 = extractvalue { i64, i32* } %447, 1
  store i32* %452, i32** %451, align 8
  %453 = bitcast %struct.TYPE_30__* %444 to { i64, i32* }*
  %454 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %453, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = bitcast %struct.TYPE_30__* %25 to { i64, i32* }*
  %459 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %458, i32 0, i32 1
  %462 = load i32*, i32** %461, align 8
  %463 = call { i64, i32* } (i32*, i64, i32*, i64, i32*, ...) @h2o_concat(i32* %442, i64 %455, i32* %457, i64 %460, i32* %462)
  %464 = bitcast %struct.TYPE_30__* %24 to { i64, i32* }*
  %465 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %464, i32 0, i32 0
  %466 = extractvalue { i64, i32* } %463, 0
  store i64 %466, i64* %465, align 8
  %467 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %464, i32 0, i32 1
  %468 = extractvalue { i64, i32* } %463, 1
  store i32* %468, i32** %467, align 8
  %469 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = call { i64, i32* } @h2o_uri_escape(i32* %470, i32* %472, i64 %474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %476 = bitcast %struct.TYPE_30__* %26 to { i64, i32* }*
  %477 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %476, i32 0, i32 0
  %478 = extractvalue { i64, i32* } %475, 0
  store i64 %478, i64* %477, align 8
  %479 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %476, i32 0, i32 1
  %480 = extractvalue { i64, i32* } %475, 1
  store i32* %480, i32** %479, align 8
  %481 = bitcast %struct.TYPE_30__* %24 to i8*
  %482 = bitcast %struct.TYPE_30__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %481, i8* align 8 %482, i64 16, i1 false)
  %483 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @SIZE_MAX, align 8
  %487 = icmp ne i64 %485, %486
  br i1 %487, label %488, label %531

488:                                              ; preds = %440
  %489 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %489, i32 0, i32 2
  %491 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = add nsw i64 %494, %497
  %499 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = sub nsw i64 %502, %505
  %507 = call { i64, i32* } (i64, ...) @h2o_iovec_init(i64 %498, i64 %506)
  %508 = bitcast %struct.TYPE_30__* %28 to { i64, i32* }*
  %509 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %508, i32 0, i32 0
  %510 = extractvalue { i64, i32* } %507, 0
  store i64 %510, i64* %509, align 8
  %511 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %508, i32 0, i32 1
  %512 = extractvalue { i64, i32* } %507, 1
  store i32* %512, i32** %511, align 8
  %513 = bitcast %struct.TYPE_30__* %24 to { i64, i32* }*
  %514 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %513, i32 0, i32 1
  %517 = load i32*, i32** %516, align 8
  %518 = bitcast %struct.TYPE_30__* %28 to { i64, i32* }*
  %519 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %518, i32 0, i32 1
  %522 = load i32*, i32** %521, align 8
  %523 = call { i64, i32* } (i32*, i64, i32*, i64, i32*, ...) @h2o_concat(i32* %490, i64 %515, i32* %517, i64 %520, i32* %522)
  %524 = bitcast %struct.TYPE_30__* %27 to { i64, i32* }*
  %525 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %524, i32 0, i32 0
  %526 = extractvalue { i64, i32* } %523, 0
  store i64 %526, i64* %525, align 8
  %527 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %524, i32 0, i32 1
  %528 = extractvalue { i64, i32* } %523, 1
  store i32* %528, i32** %527, align 8
  %529 = bitcast %struct.TYPE_30__* %24 to i8*
  %530 = bitcast %struct.TYPE_30__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %529, i8* align 8 %530, i64 16, i1 false)
  br label %531

531:                                              ; preds = %488, %440
  %532 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 1
  %534 = load i32*, i32** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = call i32 @h2o_send_redirect(%struct.TYPE_29__* %532, i32 301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %534, i64 %536)
  store i32 0, i32* %3, align 4
  br label %596

538:                                              ; preds = %437
  br label %539

539:                                              ; preds = %538, %423
  %540 = load i64, i64* @errno, align 8
  %541 = load i64, i64* @ENFILE, align 8
  %542 = icmp eq i64 %540, %541
  br i1 %542, label %547, label %543

543:                                              ; preds = %539
  %544 = load i64, i64* @errno, align 8
  %545 = load i64, i64* @EMFILE, align 8
  %546 = icmp eq i64 %544, %545
  br i1 %546, label %547, label %550

547:                                              ; preds = %543, %539
  %548 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %549 = call i32 @h2o_send_error_503(%struct.TYPE_29__* %548, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %577

550:                                              ; preds = %543
  %551 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %552 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 4
  %554 = call i64 @h2o_mimemap_has_dynamic_type(i32 %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %564

556:                                              ; preds = %550
  %557 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %558 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %559 = load i8*, i8** %7, align 8
  %560 = load i64, i64* %8, align 8
  %561 = call i64 @try_dynamic_request(%struct.TYPE_31__* %557, %struct.TYPE_29__* %558, i8* %559, i64 %560)
  %562 = icmp eq i64 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %556
  store i32 0, i32* %3, align 4
  br label %596

564:                                              ; preds = %556, %550
  %565 = load i64, i64* @errno, align 8
  %566 = load i64, i64* @ENOENT, align 8
  %567 = icmp eq i64 %565, %566
  br i1 %567, label %572, label %568

568:                                              ; preds = %564
  %569 = load i64, i64* @errno, align 8
  %570 = load i64, i64* @ENOTDIR, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %573

572:                                              ; preds = %568, %564
  store i32 -1, i32* %3, align 4
  br label %596

573:                                              ; preds = %568
  %574 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %575 = call i32 @h2o_send_error_403(%struct.TYPE_29__* %574, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %576

576:                                              ; preds = %573
  br label %577

577:                                              ; preds = %576, %547
  store i32 0, i32* %3, align 4
  br label %596

578:                                              ; preds = %436, %229
  %579 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %10, align 8
  %580 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %581 = load i8*, i8** %7, align 8
  %582 = load i64, i64* %8, align 8
  %583 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 4
  %586 = load i8*, i8** %7, align 8
  %587 = load i64, i64* %8, align 8
  %588 = call i32 @h2o_get_filext(i8* %586, i64 %587)
  %589 = call i32 @h2o_mimemap_get_type_by_extension(i32 %585, i32 %588)
  %590 = bitcast %struct.TYPE_30__* %15 to { i64, i32* }*
  %591 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %590, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %590, i32 0, i32 1
  %594 = load i32*, i32** %593, align 8
  %595 = call i32 @serve_with_generator(%struct.st_h2o_sendfile_generator_t* %579, %struct.TYPE_29__* %580, i64 %592, i32* %594, i8* %581, i64 %582, i32 %589)
  store i32 %595, i32* %3, align 4
  br label %596

596:                                              ; preds = %578, %577, %572, %563, %531, %421, %410, %353, %106
  %597 = load i32, i32* %3, align 4
  ret i32 %597
}

declare dso_local { i64, i32* } @h2o_uri_escape(i32*, i32*, i64, i8*) #1

declare dso_local { i64, i32* } @h2o_concat(i32*, i64, i32*, i64, i32*, ...) #1

declare dso_local { i64, i32* } @h2o_iovec_init(i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_send_redirect(%struct.TYPE_29__*, i32, i8*, i32*, i64) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @h2o_resp_add_date_header(%struct.TYPE_29__*) #1

declare dso_local %struct.st_h2o_sendfile_generator_t* @create_generator(%struct.TYPE_29__*, i8*, i64, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @send_method_not_allowed(%struct.TYPE_29__*) #1

declare dso_local i64 @send_dir_listing(%struct.TYPE_29__*, i8*, i64, i32) #1

declare dso_local i32 @h2o_send_error_503(%struct.TYPE_29__*, i8*, i8*, i32) #1

declare dso_local i64 @h2o_mimemap_has_dynamic_type(i32) #1

declare dso_local i64 @try_dynamic_request(%struct.TYPE_31__*, %struct.TYPE_29__*, i8*, i64) #1

declare dso_local i32 @h2o_send_error_403(%struct.TYPE_29__*, i8*, i8*, i32) #1

declare dso_local i32 @serve_with_generator(%struct.st_h2o_sendfile_generator_t*, %struct.TYPE_29__*, i64, i32*, i8*, i64, i32) #1

declare dso_local i32 @h2o_mimemap_get_type_by_extension(i32, i32) #1

declare dso_local i32 @h2o_get_filext(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
