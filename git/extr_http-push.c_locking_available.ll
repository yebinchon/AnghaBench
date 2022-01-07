; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_locking_available.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_locking_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64 }
%struct.buffer = type { %struct.strbuf, i32, %struct.strbuf }
%struct.curl_slist = type { i32, i32 }
%struct.xml_ctx = type { i8*, i32*, i32, i32*, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@repo = common dso_local global %struct.TYPE_2__* null, align 8
@PROPFIND_SUPPORTEDLOCK_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Depth: 0\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Content-Type: text/xml\00", align 1
@DAV_PROPFIND = common dso_local global i32 0, align 4
@fwrite_buffer = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_FILE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@handle_lockprop_ctx = common dso_local global i32 0, align 4
@xml_start_tag = common dso_local global i32 0, align 4
@xml_end_tag = common dso_local global i32 0, align 4
@XML_STATUS_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"XML error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no DAV locking support on %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot access URL %s, return code %d\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unable to start PROPFIND request on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @locking_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locking_available() #0 {
  %1 = alloca %struct.active_request_slot*, align 8
  %2 = alloca %struct.slot_results, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca %struct.buffer, align 4
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca %struct.xml_ctx, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %13 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 2
  %16 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = call %struct.strbuf* (...) @http_copy_default_headers()
  %18 = bitcast %struct.strbuf* %17 to %struct.curl_slist*
  store %struct.curl_slist* %18, %struct.curl_slist** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @xml_entities(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %24 = load i32, i32* @PROPFIND_SUPPORTEDLOCK_REQUEST, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strbuf_addf(%struct.strbuf* %23, i32 %24, i8* %25)
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %30 = bitcast %struct.curl_slist* %29 to %struct.strbuf*
  %31 = call %struct.strbuf* @curl_slist_append(%struct.strbuf* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = bitcast %struct.strbuf* %31 to %struct.curl_slist*
  store %struct.curl_slist* %32, %struct.curl_slist** %5, align 8
  %33 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %34 = bitcast %struct.curl_slist* %33 to %struct.strbuf*
  %35 = call %struct.strbuf* @curl_slist_append(%struct.strbuf* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = bitcast %struct.strbuf* %35 to %struct.curl_slist*
  store %struct.curl_slist* %36, %struct.curl_slist** %5, align 8
  %37 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %37, %struct.active_request_slot** %1, align 8
  %38 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %39 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %38, i32 0, i32 1
  store %struct.slot_results* %2, %struct.slot_results** %39, align 8
  %40 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %41 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DAV_PROPFIND, align 4
  %47 = load i32, i32* @fwrite_buffer, align 4
  %48 = call i32 @curl_setup_http(i32 %42, i32 %45, i32 %46, %struct.buffer* %4, i32 %47)
  %49 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %50 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %53 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %54 = bitcast %struct.curl_slist* %53 to %struct.strbuf*
  %55 = call i32 @curl_easy_setopt(i32 %51, i32 %52, %struct.strbuf* %54)
  %56 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %57 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CURLOPT_FILE, align 4
  %60 = call i32 @curl_easy_setopt(i32 %58, i32 %59, %struct.strbuf* %3)
  %61 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %62 = call i64 @start_active_slot(%struct.active_request_slot* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %123

64:                                               ; preds = %0
  %65 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %66 = call i32 @run_active_slot(%struct.active_request_slot* %65)
  %67 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %2, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CURLE_OK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %64
  %72 = call i32 @XML_ParserCreate(i32* null)
  store i32 %72, i32* %9, align 4
  %73 = call i8* @xcalloc(i32 10, i32 1)
  %74 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* @handle_lockprop_ctx, align 4
  %78 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 1
  store i32* %7, i32** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @XML_SetUserData(i32 %80, %struct.xml_ctx* %6)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @xml_start_tag, align 4
  %84 = load i32, i32* @xml_end_tag, align 4
  %85 = call i32 @XML_SetElementHandler(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @XML_Parse(i32 %86, i32 %88, i32 %90, i32 1)
  store i32 %91, i32* %10, align 4
  %92 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @XML_STATUS_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %71
  %99 = load i32, i32* @stderr, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @XML_GetErrorCode(i32 %100)
  %102 = call i8* @XML_ErrorString(i32 %101)
  %103 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %98, %71
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @XML_ParserFree(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %122

115:                                              ; preds = %64
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %2, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %118, i64 %120)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %115, %114
  br label %128

123:                                              ; preds = %0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %122
  %129 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %130 = call i32 @strbuf_release(%struct.strbuf* %129)
  %131 = call i32 @strbuf_release(%struct.strbuf* %3)
  %132 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %133 = bitcast %struct.curl_slist* %132 to %struct.strbuf*
  %134 = call i32 @curl_slist_free_all(%struct.strbuf* %133)
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.strbuf* @http_copy_default_headers(...) #2

declare dso_local i8* @xml_entities(i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local %struct.strbuf* @curl_slist_append(%struct.strbuf*, i8*) #2

declare dso_local %struct.active_request_slot* @get_active_slot(...) #2

declare dso_local i32 @curl_setup_http(i32, i32, i32, %struct.buffer*, i32) #2

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.strbuf*) #2

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #2

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #2

declare dso_local i32 @XML_ParserCreate(i32*) #2

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i32 @XML_SetUserData(i32, %struct.xml_ctx*) #2

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #2

declare dso_local i32 @XML_Parse(i32, i32, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @XML_ErrorString(i32) #2

declare dso_local i32 @XML_GetErrorCode(i32) #2

declare dso_local i32 @XML_ParserFree(i32) #2

declare dso_local i32 @error(i8*, i32, ...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @curl_slist_free_all(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
