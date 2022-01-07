; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_update_remote.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_update_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.remote_lock = type { i32 }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64, i32 }
%struct.buffer = type { i32, i32, i32 }
%struct.curl_slist = type { i32 }

@STRBUF_INIT = common dso_local global i32 0, align 4
@DAV_HEADER_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DAV_PUT = common dso_local global i32 0, align 4
@fwrite_null = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PUT error: curl result=%d, HTTP code=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to start PUT request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.remote_lock*)* @update_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_remote(%struct.object_id* %0, %struct.remote_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.remote_lock*, align 8
  %6 = alloca %struct.active_request_slot*, align 8
  %7 = alloca %struct.slot_results, align 8
  %8 = alloca %struct.buffer, align 4
  %9 = alloca %struct.curl_slist*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.remote_lock* %1, %struct.remote_lock** %5, align 8
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %11 = load i32, i32* @STRBUF_INIT, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %15 = load i32, i32* @DAV_HEADER_IF, align 4
  %16 = call %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock* %14, i32 %15)
  store %struct.curl_slist* %16, %struct.curl_slist** %9, align 8
  %17 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %18 = load %struct.object_id*, %struct.object_id** %4, align 8
  %19 = call i32 @oid_to_hex(%struct.object_id* %18)
  %20 = call i32 @strbuf_addf(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %21, %struct.active_request_slot** %6, align 8
  %22 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %23 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %22, i32 0, i32 1
  store %struct.slot_results* %7, %struct.slot_results** %23, align 8
  %24 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %25 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %28 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DAV_PUT, align 4
  %31 = load i32, i32* @fwrite_null, align 4
  %32 = call i32 @curl_setup_http(i32 %26, i32 %29, i32 %30, %struct.buffer* %8, i32 %31)
  %33 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %34 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %37 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %38 = call i32 @curl_easy_setopt(i32 %35, i32 %36, %struct.curl_slist* %37)
  %39 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %40 = call i64 @start_active_slot(%struct.active_request_slot* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %2
  %43 = load %struct.active_request_slot*, %struct.active_request_slot** %6, align 8
  %44 = call i32 @run_active_slot(%struct.active_request_slot* %43)
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %46 = call i32 @strbuf_release(i32* %45)
  %47 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CURLE_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* @stderr, align 4
  %53 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %7, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %56)
  store i32 0, i32* %3, align 4
  br label %65

58:                                               ; preds = %42
  br label %64

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %61 = call i32 @strbuf_release(i32* %60)
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

64:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %51
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock*, i32) #1

declare dso_local i32 @strbuf_addf(i32*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http(i32, i32, i32, %struct.buffer*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.curl_slist*) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
