; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_start_move.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_start_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_request = type { i8*, i32, i32, %struct.active_request_slot* }
%struct.active_request_slot = type { i32, %struct.transfer_request*, i32 }
%struct.curl_slist = type { i32 }

@process_response = common dso_local global i32 0, align 4
@DAV_MOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Overwrite: T\00", align 1
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@RUN_MOVE = common dso_local global i32 0, align 4
@ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transfer_request*)* @start_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_move(%struct.transfer_request* %0) #0 {
  %2 = alloca %struct.transfer_request*, align 8
  %3 = alloca %struct.active_request_slot*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  store %struct.transfer_request* %0, %struct.transfer_request** %2, align 8
  %5 = call %struct.curl_slist* (...) @http_copy_default_headers()
  store %struct.curl_slist* %5, %struct.curl_slist** %4, align 8
  %6 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %6, %struct.active_request_slot** %3, align 8
  %7 = load i32, i32* @process_response, align 4
  %8 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %9 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %11 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %12 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %11, i32 0, i32 1
  store %struct.transfer_request* %10, %struct.transfer_request** %12, align 8
  %13 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %14 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %17 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DAV_MOVE, align 4
  %20 = call i32 @curl_setup_http_get(i32 %15, i32 %18, i32 %19)
  %21 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %22 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %23 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %21, i8* %24)
  store %struct.curl_slist* %25, %struct.curl_slist** %4, align 8
  %26 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %27 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.curl_slist* %27, %struct.curl_slist** %4, align 8
  %28 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %29 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %32 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %33 = call i32 @curl_easy_setopt(i32 %30, i32 %31, %struct.curl_slist* %32)
  %34 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %35 = call i64 @start_active_slot(%struct.active_request_slot* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %39 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %40 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %39, i32 0, i32 3
  store %struct.active_request_slot* %38, %struct.active_request_slot** %40, align 8
  %41 = load i32, i32* @RUN_MOVE, align 4
  %42 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %43 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %52

44:                                               ; preds = %1
  %45 = load i32, i32* @ABORTED, align 4
  %46 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %47 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %49 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @FREE_AND_NULL(i32 %50)
  br label %52

52:                                               ; preds = %44, %37
  ret void
}

declare dso_local %struct.curl_slist* @http_copy_default_headers(...) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http_get(i32, i32, i32) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.curl_slist*) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
