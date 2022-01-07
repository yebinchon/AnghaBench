; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_lock_remote.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_lock_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.remote_lock*, i32 }
%struct.remote_lock = type { i32, i8*, i8*, i8*, %struct.remote_lock*, i32 }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64, i32 }
%struct.buffer = type { %struct.strbuf, i32, %struct.strbuf }
%struct.curl_slist = type { i32, i32 }
%struct.xml_ctx = type { i8*, %struct.remote_lock*, i32, i32*, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@repo = common dso_local global %struct.TYPE_2__* null, align 8
@DAV_MKCOL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to create branch path %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to start MKCOL request\0A\00", align 1
@LOCK_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Timeout: Second-%ld\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Content-Type: text/xml\00", align 1
@DAV_LOCK = common dso_local global i32 0, align 4
@fwrite_buffer = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_FILE = common dso_local global i32 0, align 4
@handle_new_lock_ctx = common dso_local global i32 0, align 4
@xml_start_tag = common dso_local global i32 0, align 4
@xml_end_tag = common dso_local global i32 0, align 4
@xml_cdata = common dso_local global i32 0, align 4
@XML_STATUS_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"XML error: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"error: curl result=%d, HTTP code=%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Unable to start LOCK request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.remote_lock* (i8*, i64)* @lock_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.remote_lock* @lock_remote(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.remote_lock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.active_request_slot*, align 8
  %7 = alloca %struct.slot_results, align 8
  %8 = alloca %struct.buffer, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [25 x i8], align 16
  %13 = alloca %struct.remote_lock*, align 8
  %14 = alloca %struct.curl_slist*, align 8
  %15 = alloca %struct.xml_ctx, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %21 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 2
  %24 = bitcast %struct.strbuf* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store %struct.remote_lock* null, %struct.remote_lock** %13, align 8
  %26 = call %struct.strbuf* (...) @http_copy_default_headers()
  %27 = bitcast %struct.strbuf* %26 to %struct.curl_slist*
  store %struct.curl_slist* %27, %struct.curl_slist** %14, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strlen(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %86, %2
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %93

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %17, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %50, align 1
  %51 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %51, %struct.active_request_slot** %6, align 8
  %52 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %53 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %52, i32 0, i32 1
  store %struct.slot_results* %7, %struct.slot_results** %53, align 8
  %54 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %55 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @DAV_MKCOL, align 4
  %59 = call i32 @curl_setup_http_get(i32 %56, i8* %57, i32 %58)
  %60 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %61 = call i64 @start_active_slot(%struct.active_request_slot* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %45
  %64 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %65 = call i32 @run_active_slot(%struct.active_request_slot* %64)
  %66 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CURLE_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 405
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @free(i8* %78)
  store %struct.remote_lock* null, %struct.remote_lock** %3, align 8
  br label %249

80:                                               ; preds = %70, %63
  br label %86

81:                                               ; preds = %45
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  store %struct.remote_lock* null, %struct.remote_lock** %3, align 8
  br label %249

86:                                               ; preds = %80
  %87 = load i8, i8* %17, align 1
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %87, i8* %89, align 1
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i8* @strchr(i8* %91, i8 signext 47)
  store i8* %92, i8** %11, align 8
  br label %42

93:                                               ; preds = %42
  %94 = call i32 (...) @ident_default_email()
  %95 = call i8* @xml_entities(i32 %94)
  store i8* %95, i8** %16, align 8
  %96 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %97 = load i32, i32* @LOCK_REQUEST, align 4
  %98 = load i8*, i8** %16, align 8
  %99 = call i32 @strbuf_addf(%struct.strbuf* %96, i32 %97, i8* %98)
  %100 = load i8*, i8** %16, align 8
  %101 = call i32 @free(i8* %100)
  %102 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @xsnprintf(i8* %102, i32 25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  %105 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %106 = bitcast %struct.curl_slist* %105 to %struct.strbuf*
  %107 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  %108 = call %struct.strbuf* @curl_slist_append(%struct.strbuf* %106, i8* %107)
  %109 = bitcast %struct.strbuf* %108 to %struct.curl_slist*
  store %struct.curl_slist* %109, %struct.curl_slist** %14, align 8
  %110 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %111 = bitcast %struct.curl_slist* %110 to %struct.strbuf*
  %112 = call %struct.strbuf* @curl_slist_append(%struct.strbuf* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %113 = bitcast %struct.strbuf* %112 to %struct.curl_slist*
  store %struct.curl_slist* %113, %struct.curl_slist** %14, align 8
  %114 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %114, %struct.active_request_slot** %6, align 8
  %115 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %116 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %115, i32 0, i32 1
  store %struct.slot_results* %7, %struct.slot_results** %116, align 8
  %117 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %118 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @DAV_LOCK, align 4
  %122 = load i32, i32* @fwrite_buffer, align 4
  %123 = call i32 @curl_setup_http(i32 %119, i8* %120, i32 %121, %struct.buffer* %8, i32 %122)
  %124 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %125 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %128 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %129 = bitcast %struct.curl_slist* %128 to %struct.strbuf*
  %130 = call i32 @curl_easy_setopt(i32 %126, i32 %127, %struct.strbuf* %129)
  %131 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %132 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @CURLOPT_FILE, align 4
  %135 = call i32 @curl_easy_setopt(i32 %133, i32 %134, %struct.strbuf* %9)
  %136 = call i8* @xcalloc(i32 1, i32 48)
  %137 = bitcast i8* %136 to %struct.remote_lock*
  store %struct.remote_lock* %137, %struct.remote_lock** %13, align 8
  %138 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %139 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %138, i32 0, i32 0
  store i32 -1, i32* %139, align 8
  %140 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %141 = call i64 @start_active_slot(%struct.active_request_slot* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %200

143:                                              ; preds = %93
  %144 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %145 = call i32 @run_active_slot(%struct.active_request_slot* %144)
  %146 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @CURLE_OK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %192

150:                                              ; preds = %143
  %151 = call i32 @XML_ParserCreate(i32* null)
  store i32 %151, i32* %18, align 4
  %152 = call i8* @xcalloc(i32 10, i32 1)
  %153 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 0
  store i8* %152, i8** %153, align 8
  %154 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 4
  store i64 0, i64* %154, align 8
  %155 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 3
  store i32* null, i32** %155, align 8
  %156 = load i32, i32* @handle_new_lock_ctx, align 4
  %157 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 2
  store i32 %156, i32* %157, align 8
  %158 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %159 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 1
  store %struct.remote_lock* %158, %struct.remote_lock** %159, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @XML_SetUserData(i32 %160, %struct.xml_ctx* %15)
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @xml_start_tag, align 4
  %164 = load i32, i32* @xml_end_tag, align 4
  %165 = call i32 @XML_SetElementHandler(i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* @xml_cdata, align 4
  %168 = call i32 @XML_SetCharacterDataHandler(i32 %166, i32 %167)
  %169 = load i32, i32* %18, align 4
  %170 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @XML_Parse(i32 %169, i32 %171, i32 %173, i32 1)
  store i32 %174, i32* %19, align 4
  %175 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* @XML_STATUS_OK, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %150
  %182 = load i32, i32* @stderr, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @XML_GetErrorCode(i32 %183)
  %185 = call i8* @XML_ErrorString(i32 %184)
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %185)
  %187 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %188 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %187, i32 0, i32 0
  store i32 -1, i32* %188, align 8
  br label %189

189:                                              ; preds = %181, %150
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @XML_ParserFree(i32 %190)
  br label %199

192:                                              ; preds = %143
  %193 = load i32, i32* @stderr, align 4
  %194 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %195, i32 %197)
  br label %199

199:                                              ; preds = %192, %189
  br label %203

200:                                              ; preds = %93
  %201 = load i32, i32* @stderr, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %199
  %204 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %205 = bitcast %struct.curl_slist* %204 to %struct.strbuf*
  %206 = call i32 @curl_slist_free_all(%struct.strbuf* %205)
  %207 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %208 = call i32 @strbuf_release(%struct.strbuf* %207)
  %209 = call i32 @strbuf_release(%struct.strbuf* %9)
  %210 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %211 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %203
  %215 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %216 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %214, %203
  %220 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %221 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %225 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @free(i8* %226)
  %228 = load i8*, i8** %10, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %231 = call i32 @FREE_AND_NULL(%struct.remote_lock* %230)
  br label %247

232:                                              ; preds = %214
  %233 = load i8*, i8** %10, align 8
  %234 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %235 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %234, i32 0, i32 3
  store i8* %233, i8** %235, align 8
  %236 = call i32 @time(i32* null)
  %237 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %238 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load %struct.remote_lock*, %struct.remote_lock** %240, align 8
  %242 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %243 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %242, i32 0, i32 4
  store %struct.remote_lock* %241, %struct.remote_lock** %243, align 8
  %244 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  store %struct.remote_lock* %244, %struct.remote_lock** %246, align 8
  br label %247

247:                                              ; preds = %232, %219
  %248 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  store %struct.remote_lock* %248, %struct.remote_lock** %3, align 8
  br label %249

249:                                              ; preds = %247, %81, %74
  %250 = load %struct.remote_lock*, %struct.remote_lock** %3, align 8
  ret %struct.remote_lock* %250
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.strbuf* @http_copy_default_headers(...) #2

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local %struct.active_request_slot* @get_active_slot(...) #2

declare dso_local i32 @curl_setup_http_get(i32, i8*, i32) #2

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #2

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xml_entities(i32) #2

declare dso_local i32 @ident_default_email(...) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i64) #2

declare dso_local %struct.strbuf* @curl_slist_append(%struct.strbuf*, i8*) #2

declare dso_local i32 @curl_setup_http(i32, i8*, i32, %struct.buffer*, i32) #2

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.strbuf*) #2

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i32 @XML_ParserCreate(i32*) #2

declare dso_local i32 @XML_SetUserData(i32, %struct.xml_ctx*) #2

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #2

declare dso_local i32 @XML_SetCharacterDataHandler(i32, i32) #2

declare dso_local i32 @XML_Parse(i32, i32, i32, i32) #2

declare dso_local i8* @XML_ErrorString(i32) #2

declare dso_local i32 @XML_GetErrorCode(i32) #2

declare dso_local i32 @XML_ParserFree(i32) #2

declare dso_local i32 @curl_slist_free_all(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @FREE_AND_NULL(%struct.remote_lock*) #2

declare dso_local i32 @time(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
