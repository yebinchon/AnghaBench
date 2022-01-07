; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_make_header_request.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_make_header_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s %s HTTP/%d.%d\0D\0A\00", align 1
@EVHTTP_METHOD_HAS_BODY = common dso_local global i32 0, align 4
@EVHTTP_REQ_POST = common dso_local global i64 0, align 8
@EVHTTP_REQ_PUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@EV_SIZE_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_make_header_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_make_header_request(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [22 x i8], align 16
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %8 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %9 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @evhttp_remove_header(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %14 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i8* @evhttp_method_(%struct.evhttp_connection* %12, i64 %15, i32* %6)
  store i8* %16, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bufferevent_get_output(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %29 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @evbuffer_add_printf(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %27, i32 %30, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EVHTTP_METHOD_HAS_BODY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %19
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @evbuffer_get_length(i32 %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %47 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EVHTTP_REQ_POST, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %53 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EVHTTP_REQ_PUT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51, %45, %39
  %58 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %59 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @evhttp_find_header(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 0
  %65 = load i32, i32* @EV_SIZE_FMT, align 4
  %66 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %67 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @evbuffer_get_length(i32 %68)
  %70 = call i32 @EV_SIZE_ARG(i64 %69)
  %71 = call i32 @evutil_snprintf(i8* %64, i32 22, i32 %65, i32 %70)
  %72 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %73 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 0
  %76 = call i32 @evhttp_add_header(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %63, %57, %51, %19
  ret void
}

declare dso_local i32 @evhttp_remove_header(i32, i8*) #1

declare dso_local i8* @evhttp_method_(%struct.evhttp_connection*, i64, i32*) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @bufferevent_get_output(i32) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @EV_SIZE_ARG(i64) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
