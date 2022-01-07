; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_remote_ls.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_remote_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.remote_ls_ctx = type { i32, i8*, {}*, i8*, i64, i32* }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64 }
%struct.buffer = type { %struct.strbuf, i32, %struct.strbuf }
%struct.curl_slist = type { i32, i32 }
%struct.xml_ctx = type { i8*, %struct.remote_ls_ctx*, i32, i32*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@repo = common dso_local global %struct.TYPE_2__* null, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@PROPFIND_ALL_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Depth: 1\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Content-Type: text/xml\00", align 1
@DAV_PROPFIND = common dso_local global i32 0, align 4
@fwrite_buffer = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_FILE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@handle_remote_ls_ctx = common dso_local global i32 0, align 4
@xml_start_tag = common dso_local global i32 0, align 4
@xml_end_tag = common dso_local global i32 0, align 4
@xml_cdata = common dso_local global i32 0, align 4
@XML_STATUS_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"XML error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to start PROPFIND request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, void (%struct.remote_ls_ctx*)*, i8*)* @remote_ls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_ls(i8* %0, i32 %1, void (%struct.remote_ls_ctx*)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.remote_ls_ctx*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.active_request_slot*, align 8
  %11 = alloca %struct.slot_results, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.buffer, align 4
  %14 = alloca %struct.curl_slist*, align 8
  %15 = alloca %struct.xml_ctx, align 8
  %16 = alloca %struct.remote_ls_ctx, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.remote_ls_ctx*)* %2, void (%struct.remote_ls_ctx*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  store i8* %23, i8** %9, align 8
  %24 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %25 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %26 = bitcast %struct.strbuf* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 2
  %29 = bitcast %struct.strbuf* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = call %struct.strbuf* (...) @http_copy_default_headers()
  %31 = bitcast %struct.strbuf* %30 to %struct.curl_slist*
  store %struct.curl_slist* %31, %struct.curl_slist** %14, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @xstrdup(i8* %34)
  %36 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load void (%struct.remote_ls_ctx*)*, void (%struct.remote_ls_ctx*)** %7, align 8
  %42 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 2
  %43 = bitcast {}** %42 to void (%struct.remote_ls_ctx*)**
  store void (%struct.remote_ls_ctx*)* %41, void (%struct.remote_ls_ctx*)** %43, align 8
  %44 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %45 = load i32, i32* @PROPFIND_ALL_REQUEST, align 4
  %46 = call i32 @strbuf_addstr(%struct.strbuf* %44, i32 %45)
  %47 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %48 = bitcast %struct.curl_slist* %47 to %struct.strbuf*
  %49 = call %struct.strbuf* @curl_slist_append(%struct.strbuf* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %50 = bitcast %struct.strbuf* %49 to %struct.curl_slist*
  store %struct.curl_slist* %50, %struct.curl_slist** %14, align 8
  %51 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %52 = bitcast %struct.curl_slist* %51 to %struct.strbuf*
  %53 = call %struct.strbuf* @curl_slist_append(%struct.strbuf* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %54 = bitcast %struct.strbuf* %53 to %struct.curl_slist*
  store %struct.curl_slist* %54, %struct.curl_slist** %14, align 8
  %55 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %55, %struct.active_request_slot** %10, align 8
  %56 = load %struct.active_request_slot*, %struct.active_request_slot** %10, align 8
  %57 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %56, i32 0, i32 1
  store %struct.slot_results* %11, %struct.slot_results** %57, align 8
  %58 = load %struct.active_request_slot*, %struct.active_request_slot** %10, align 8
  %59 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @DAV_PROPFIND, align 4
  %63 = load i32, i32* @fwrite_buffer, align 4
  %64 = call i32 @curl_setup_http(i32 %60, i8* %61, i32 %62, %struct.buffer* %13, i32 %63)
  %65 = load %struct.active_request_slot*, %struct.active_request_slot** %10, align 8
  %66 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %69 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %70 = bitcast %struct.curl_slist* %69 to %struct.strbuf*
  %71 = call i32 @curl_easy_setopt(i32 %67, i32 %68, %struct.strbuf* %70)
  %72 = load %struct.active_request_slot*, %struct.active_request_slot** %10, align 8
  %73 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CURLOPT_FILE, align 4
  %76 = call i32 @curl_easy_setopt(i32 %74, i32 %75, %struct.strbuf* %12)
  %77 = load %struct.active_request_slot*, %struct.active_request_slot** %10, align 8
  %78 = call i64 @start_active_slot(%struct.active_request_slot* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %4
  %81 = load %struct.active_request_slot*, %struct.active_request_slot** %10, align 8
  %82 = call i32 @run_active_slot(%struct.active_request_slot* %81)
  %83 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CURLE_OK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %80
  %88 = call i32 @XML_ParserCreate(i32* null)
  store i32 %88, i32* %17, align 4
  %89 = call i8* @xcalloc(i32 10, i32 1)
  %90 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 3
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @handle_remote_ls_ctx, align 4
  %94 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 1
  store %struct.remote_ls_ctx* %16, %struct.remote_ls_ctx** %95, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @XML_SetUserData(i32 %96, %struct.xml_ctx* %15)
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @xml_start_tag, align 4
  %100 = load i32, i32* @xml_end_tag, align 4
  %101 = call i32 @XML_SetElementHandler(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @xml_cdata, align 4
  %104 = call i32 @XML_SetCharacterDataHandler(i32 %102, i32 %103)
  %105 = load i32, i32* %17, align 4
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @XML_Parse(i32 %105, i32 %107, i32 %109, i32 1)
  store i32 %110, i32* %18, align 4
  %111 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @XML_STATUS_OK, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %87
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @XML_GetErrorCode(i32 %119)
  %121 = call i8* @XML_ErrorString(i32 %120)
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %117, %87
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @XML_ParserFree(i32 %124)
  br label %126

126:                                              ; preds = %123, %80
  br label %130

127:                                              ; preds = %4
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %126
  %131 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @free(i8* %134)
  %136 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %137 = call i32 @strbuf_release(%struct.strbuf* %136)
  %138 = call i32 @strbuf_release(%struct.strbuf* %12)
  %139 = load %struct.curl_slist*, %struct.curl_slist** %14, align 8
  %140 = bitcast %struct.curl_slist* %139 to %struct.strbuf*
  %141 = call i32 @curl_slist_free_all(%struct.strbuf* %140)
  ret void
}

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.strbuf* @http_copy_default_headers(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local %struct.strbuf* @curl_slist_append(%struct.strbuf*, i8*) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http(i32, i8*, i32, %struct.buffer*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.strbuf*) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @XML_ParserCreate(i32*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @XML_SetUserData(i32, %struct.xml_ctx*) #1

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i32, i32) #1

declare dso_local i32 @XML_Parse(i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @XML_ErrorString(i32) #1

declare dso_local i32 @XML_GetErrorCode(i32) #1

declare dso_local i32 @XML_ParserFree(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @curl_slist_free_all(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
