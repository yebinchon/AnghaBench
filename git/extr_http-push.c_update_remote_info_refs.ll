; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_update_remote_info_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_update_remote_info_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_lock = type { i32 }
%struct.buffer = type { i32, i32, i32 }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64, i32 }
%struct.curl_slist = type { i32 }

@STRBUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@PROCESS_FILES = common dso_local global i32 0, align 4
@RECURSIVE = common dso_local global i32 0, align 4
@add_remote_info_ref = common dso_local global i32 0, align 4
@aborted = common dso_local global i32 0, align 4
@DAV_HEADER_IF = common dso_local global i32 0, align 4
@DAV_PUT = common dso_local global i32 0, align 4
@fwrite_null = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PUT error: curl result=%d, HTTP code=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote_lock*)* @update_remote_info_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_remote_info_refs(%struct.remote_lock* %0) #0 {
  %2 = alloca %struct.remote_lock*, align 8
  %3 = alloca %struct.buffer, align 4
  %4 = alloca %struct.active_request_slot*, align 8
  %5 = alloca %struct.slot_results, align 8
  %6 = alloca %struct.curl_slist*, align 8
  store %struct.remote_lock* %0, %struct.remote_lock** %2, align 8
  %7 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %8 = load i32, i32* @STRBUF_INIT, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @PROCESS_FILES, align 4
  %12 = load i32, i32* @RECURSIVE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @add_remote_info_ref, align 4
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %16 = call i32 @remote_ls(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32* %15)
  %17 = load i32, i32* @aborted, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %60, label %19

19:                                               ; preds = %1
  %20 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %21 = load i32, i32* @DAV_HEADER_IF, align 4
  %22 = call %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock* %20, i32 %21)
  store %struct.curl_slist* %22, %struct.curl_slist** %6, align 8
  %23 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %23, %struct.active_request_slot** %4, align 8
  %24 = load %struct.active_request_slot*, %struct.active_request_slot** %4, align 8
  %25 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %24, i32 0, i32 1
  store %struct.slot_results* %5, %struct.slot_results** %25, align 8
  %26 = load %struct.active_request_slot*, %struct.active_request_slot** %4, align 8
  %27 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %30 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DAV_PUT, align 4
  %33 = load i32, i32* @fwrite_null, align 4
  %34 = call i32 @curl_setup_http(i32 %28, i32 %31, i32 %32, %struct.buffer* %3, i32 %33)
  %35 = load %struct.active_request_slot*, %struct.active_request_slot** %4, align 8
  %36 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %39 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %40 = call i32 @curl_easy_setopt(i32 %37, i32 %38, %struct.curl_slist* %39)
  %41 = load %struct.active_request_slot*, %struct.active_request_slot** %4, align 8
  %42 = call i64 @start_active_slot(%struct.active_request_slot* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %19
  %45 = load %struct.active_request_slot*, %struct.active_request_slot** %4, align 8
  %46 = call i32 @run_active_slot(%struct.active_request_slot* %45)
  %47 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CURLE_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @stderr, align 4
  %53 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %5, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  br label %59

59:                                               ; preds = %58, %19
  br label %60

60:                                               ; preds = %59, %1
  %61 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %62 = call i32 @strbuf_release(i32* %61)
  ret void
}

declare dso_local i32 @remote_ls(i8*, i32, i32, i32*) #1

declare dso_local %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock*, i32) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http(i32, i32, i32, %struct.buffer*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.curl_slist*) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32) #1

declare dso_local i32 @strbuf_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
