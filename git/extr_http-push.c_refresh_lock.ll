; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_refresh_lock.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_refresh_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_lock = type { i32, i32, i32 }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64, i32 }
%struct.curl_slist = type { i32 }

@DAV_HEADER_IF = common dso_local global i32 0, align 4
@DAV_HEADER_TIMEOUT = common dso_local global i32 0, align 4
@DAV_LOCK = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LOCK HTTP error %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote_lock*)* @refresh_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refresh_lock(%struct.remote_lock* %0) #0 {
  %2 = alloca %struct.remote_lock*, align 8
  %3 = alloca %struct.active_request_slot*, align 8
  %4 = alloca %struct.slot_results, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca i32, align 4
  store %struct.remote_lock* %0, %struct.remote_lock** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %8 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %10 = load i32, i32* @DAV_HEADER_IF, align 4
  %11 = load i32, i32* @DAV_HEADER_TIMEOUT, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock* %9, i32 %12)
  store %struct.curl_slist* %13, %struct.curl_slist** %5, align 8
  %14 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %14, %struct.active_request_slot** %3, align 8
  %15 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %16 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %15, i32 0, i32 1
  store %struct.slot_results* %4, %struct.slot_results** %16, align 8
  %17 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %18 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %21 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DAV_LOCK, align 4
  %24 = call i32 @curl_setup_http_get(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %26 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %29 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %30 = call i32 @curl_easy_setopt(i32 %27, i32 %28, %struct.curl_slist* %29)
  %31 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %32 = call i64 @start_active_slot(%struct.active_request_slot* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %1
  %35 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %36 = call i32 @run_active_slot(%struct.active_request_slot* %35)
  %37 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CURLE_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @stderr, align 4
  %43 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %50

46:                                               ; preds = %34
  %47 = call i32 @time(i32* null)
  %48 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %49 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %53 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %55 = call i32 @curl_slist_free_all(%struct.curl_slist* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock*, i32) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http_get(i32, i32, i32) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.curl_slist*) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
