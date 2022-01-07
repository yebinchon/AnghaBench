; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send_reply_start.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send_reply_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_send_reply_start(%struct.evhttp_request* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @evhttp_response_code_(%struct.evhttp_request* %7, i32 %8, i8* %9)
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %18 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @evhttp_find_header(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = call i64 @REQ_VERSION_ATLEAST(%struct.evhttp_request* %23, i32 1, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %28 = call i64 @evhttp_response_needs_body(%struct.evhttp_request* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @evhttp_add_header(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %36 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %40

37:                                               ; preds = %26, %22, %16
  %38 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %39 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %42 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %45 = call i32 @evhttp_make_header(i32* %43, %struct.evhttp_request* %44)
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %47 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @evhttp_write_buffer(i32* %48, i32* null, i32* null)
  br label %50

50:                                               ; preds = %40, %15
  ret void
}

declare dso_local i32 @evhttp_response_code_(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i64 @REQ_VERSION_ATLEAST(%struct.evhttp_request*, i32, i32) #1

declare dso_local i64 @evhttp_response_needs_body(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_make_header(i32*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_write_buffer(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
