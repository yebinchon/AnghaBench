; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send_page_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send_page_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32, i64, i32 }
%struct.evbuffer = type { i32 }

@EVHTTP_RESPONSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_send_page_(%struct.evhttp_request* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %5 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %6 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %16 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %18 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EVHTTP_RESPONSE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %27 = call i32 @evhttp_response_code_(%struct.evhttp_request* %26, i32 200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %30 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @evhttp_clear_headers(i32 %31)
  %33 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %34 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @evhttp_add_header(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @evhttp_add_header(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %42 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %43 = call i32 @evhttp_send(%struct.evhttp_request* %41, %struct.evbuffer* %42)
  ret void
}

declare dso_local i32 @evhttp_response_code_(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @evhttp_clear_headers(i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_send(%struct.evhttp_request*, %struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
