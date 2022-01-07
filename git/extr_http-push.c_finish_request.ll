; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_finish_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.transfer_request = type { i64, i32, i64, i8*, i64, %struct.TYPE_6__*, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.http_pack_request = type { i32 }
%struct.http_object_request = type { i64 }

@RUN_PUT = common dso_local global i64 0, align 8
@RUN_FETCH_PACKED = common dso_local global i64 0, align 8
@RUN_MKCOL = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@remote_dir_exists = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MKCOL %s failed, aborting (%d/%ld)\0A\00", align 1
@ABORTED = common dso_local global i8* null, align 8
@aborted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PUT %s failed, aborting (%d/%ld)\0A\00", align 1
@RUN_MOVE = common dso_local global i64 0, align 8
@push_verbosely = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"    sent %s\0A\00", align 1
@REMOTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"MOVE %s failed, aborting (%d/%ld)\0A\00", align 1
@RUN_FETCH_LOOSE = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to get pack file %s\0A%s\00", align 1
@curl_errorstr = common dso_local global i8* null, align 8
@repo = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transfer_request*)* @finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_request(%struct.transfer_request* %0) #0 {
  %2 = alloca %struct.transfer_request*, align 8
  %3 = alloca %struct.http_pack_request*, align 8
  %4 = alloca %struct.http_object_request*, align 8
  %5 = alloca i32, align 4
  store %struct.transfer_request* %0, %struct.transfer_request** %2, align 8
  %6 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %7 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %6, i32 0, i32 7
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %12 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %14 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %13, i32 0, i32 7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %19 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %21 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %20, i32 0, i32 7
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %21, align 8
  %22 = call i32 (...) @check_locks()
  %23 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %24 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %29 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @curl_slist_free_all(i32* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %34 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RUN_PUT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %40 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RUN_FETCH_PACKED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %46 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @FREE_AND_NULL(i8* %47)
  br label %49

49:                                               ; preds = %44, %38, %32
  %50 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %51 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RUN_MKCOL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %49
  %56 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %57 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CURLE_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %63 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 405
  br i1 %65, label %66, label %79

66:                                               ; preds = %61, %55
  %67 = load i32*, i32** @remote_dir_exists, align 8
  %68 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %69 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %67, i64 %75
  store i32 1, i32* %76, align 4
  %77 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %78 = call i32 @start_put(%struct.transfer_request* %77)
  br label %97

79:                                               ; preds = %61
  %80 = load i32, i32* @stderr, align 4
  %81 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %82 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = call i8* @oid_to_hex(%struct.TYPE_8__* %84)
  %86 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %87 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %90 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %85, i64 %88, i32 %91)
  %93 = load i8*, i8** @ABORTED, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %96 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  store i32 1, i32* @aborted, align 4
  br label %97

97:                                               ; preds = %79, %66
  br label %280

98:                                               ; preds = %49
  %99 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %100 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RUN_PUT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  %105 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %106 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CURLE_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %112 = call i32 @start_move(%struct.transfer_request* %111)
  br label %131

113:                                              ; preds = %104
  %114 = load i32, i32* @stderr, align 4
  %115 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %116 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %115, i32 0, i32 5
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = call i8* @oid_to_hex(%struct.TYPE_8__* %118)
  %120 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %121 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %124 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %119, i64 %122, i32 %125)
  %127 = load i8*, i8** @ABORTED, align 8
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %130 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  store i32 1, i32* @aborted, align 4
  br label %131

131:                                              ; preds = %113, %110
  br label %279

132:                                              ; preds = %98
  %133 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %134 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RUN_MOVE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %184

138:                                              ; preds = %132
  %139 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %140 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CURLE_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %138
  %145 = load i64, i64* @push_verbosely, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32, i32* @stderr, align 4
  %149 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %150 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = call i8* @oid_to_hex(%struct.TYPE_8__* %152)
  %154 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %147, %144
  %156 = load i32, i32* @REMOTE, align 4
  %157 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %158 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %157, i32 0, i32 5
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %156
  store i32 %162, i32* %160, align 8
  %163 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %164 = call i32 @release_request(%struct.transfer_request* %163)
  br label %183

165:                                              ; preds = %138
  %166 = load i32, i32* @stderr, align 4
  %167 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %168 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %167, i32 0, i32 5
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = call i8* @oid_to_hex(%struct.TYPE_8__* %170)
  %172 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %173 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %176 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %171, i64 %174, i32 %177)
  %179 = load i8*, i8** @ABORTED, align 8
  %180 = ptrtoint i8* %179 to i64
  %181 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %182 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %181, i32 0, i32 2
  store i64 %180, i64* %182, align 8
  store i32 1, i32* @aborted, align 4
  br label %183

183:                                              ; preds = %165, %155
  br label %278

184:                                              ; preds = %132
  %185 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %186 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @RUN_FETCH_LOOSE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %232

190:                                              ; preds = %184
  %191 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %192 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to %struct.http_object_request*
  store %struct.http_object_request* %194, %struct.http_object_request** %4, align 8
  %195 = load %struct.http_object_request*, %struct.http_object_request** %4, align 8
  %196 = call i64 @finish_http_object_request(%struct.http_object_request* %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %190
  %199 = load %struct.http_object_request*, %struct.http_object_request** %4, align 8
  %200 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load i32, i32* @LOCAL, align 4
  %205 = load i32, i32* @REMOTE, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %208 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %207, i32 0, i32 5
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %206
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %203, %198
  br label %214

214:                                              ; preds = %213, %190
  %215 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %216 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %215, i32 0, i32 5
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @LOCAL, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %214
  %224 = load %struct.http_object_request*, %struct.http_object_request** %4, align 8
  %225 = call i32 @release_http_object_request(%struct.http_object_request* %224)
  %226 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %227 = call i32 @release_request(%struct.transfer_request* %226)
  br label %231

228:                                              ; preds = %214
  %229 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %230 = call i32 @start_fetch_packed(%struct.transfer_request* %229)
  br label %231

231:                                              ; preds = %228, %223
  br label %277

232:                                              ; preds = %184
  %233 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %234 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @RUN_FETCH_PACKED, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %276

238:                                              ; preds = %232
  store i32 1, i32* %5, align 4
  %239 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %240 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @CURLE_OK, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %238
  %245 = load i32, i32* @stderr, align 4
  %246 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %247 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = load i8*, i8** @curl_errorstr, align 8
  %250 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %248, i8* %249)
  br label %267

251:                                              ; preds = %238
  %252 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %253 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to %struct.http_pack_request*
  store %struct.http_pack_request* %255, %struct.http_pack_request** %3, align 8
  %256 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %257 = icmp ne %struct.http_pack_request* %256, null
  br i1 %257, label %258, label %266

258:                                              ; preds = %251
  %259 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %260 = call i64 @finish_http_pack_request(%struct.http_pack_request* %259)
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %262, %258
  %264 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %265 = call i32 @release_http_pack_request(%struct.http_pack_request* %264)
  br label %266

266:                                              ; preds = %263, %251
  br label %267

267:                                              ; preds = %266, %244
  %268 = load i32, i32* %5, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i64 0, i64* %272, align 8
  br label %273

273:                                              ; preds = %270, %267
  %274 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %275 = call i32 @release_request(%struct.transfer_request* %274)
  br label %276

276:                                              ; preds = %273, %232
  br label %277

277:                                              ; preds = %276, %231
  br label %278

278:                                              ; preds = %277, %183
  br label %279

279:                                              ; preds = %278, %131
  br label %280

280:                                              ; preds = %279, %97
  ret void
}

declare dso_local i32 @check_locks(...) #1

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

declare dso_local i32 @start_put(%struct.transfer_request*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.TYPE_8__*) #1

declare dso_local i32 @start_move(%struct.transfer_request*) #1

declare dso_local i32 @release_request(%struct.transfer_request*) #1

declare dso_local i64 @finish_http_object_request(%struct.http_object_request*) #1

declare dso_local i32 @release_http_object_request(%struct.http_object_request*) #1

declare dso_local i32 @start_fetch_packed(%struct.transfer_request*) #1

declare dso_local i64 @finish_http_pack_request(%struct.http_pack_request*) #1

declare dso_local i32 @release_http_pack_request(%struct.http_pack_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
