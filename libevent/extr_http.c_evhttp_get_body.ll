; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_get_body.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_get_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32 }
%struct.evhttp_request = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EVHTTP_REQUEST = common dso_local global i64 0, align 8
@EVCON_READING_BODY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@EVREQ_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@EV_INT64_MAX = common dso_local global i32 0, align 4
@HTTP_EXPECTATIONFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_get_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_get_body(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i8*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %6 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %7 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVHTTP_REQUEST, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %14 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @evhttp_method_may_have_body_(%struct.evhttp_connection* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %20 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %19)
  br label %115

21:                                               ; preds = %11, %2
  %22 = load i32, i32* @EVCON_READING_BODY, align 4
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @evhttp_find_header(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @evutil_ascii_strcasecmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %37 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %39 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  br label %63

40:                                               ; preds = %31, %21
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %42 = call i32 @evhttp_get_body_length(%struct.evhttp_request* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %46 = load i32, i32* @EVREQ_HTTP_INVALID_HEADER, align 4
  %47 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %45, i32 %46)
  br label %115

48:                                               ; preds = %40
  %49 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %50 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EVHTTP_REQUEST, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %56 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %61 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %60)
  br label %115

62:                                               ; preds = %54, %48
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %65 = call i32 @evhttp_have_expect(%struct.evhttp_request* %64, i32 1)
  switch i32 %65, label %111 [
    i32 130, label %66
    i32 128, label %106
    i32 129, label %110
  ]

66:                                               ; preds = %63
  %67 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %68 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %73 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EV_INT64_MAX, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %81 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %84 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %82, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %91 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %92 = call i32 @evhttp_lingering_fail(%struct.evhttp_connection* %90, %struct.evhttp_request* %91)
  br label %115

93:                                               ; preds = %79, %71
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %96 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bufferevent_get_input(i32 %97)
  %99 = call i32 @evbuffer_get_length(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %103 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %104 = call i32 @evhttp_send_continue(%struct.evhttp_connection* %102, %struct.evhttp_request* %103)
  br label %105

105:                                              ; preds = %101, %94
  br label %111

106:                                              ; preds = %63
  %107 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %108 = load i32, i32* @HTTP_EXPECTATIONFAILED, align 4
  %109 = call i32 @evhttp_send_error(%struct.evhttp_request* %107, i32 %108, i32* null)
  br label %115

110:                                              ; preds = %63
  br label %111

111:                                              ; preds = %63, %110, %105
  %112 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %113 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %114 = call i32 @evhttp_read_body(%struct.evhttp_connection* %112, %struct.evhttp_request* %113)
  br label %115

115:                                              ; preds = %111, %106, %89, %59, %44, %18
  ret void
}

declare dso_local i32 @evhttp_method_may_have_body_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_connection_done(%struct.evhttp_connection*) #1

declare dso_local i8* @evhttp_find_header(i32, i8*) #1

declare dso_local i64 @evutil_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @evhttp_get_body_length(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_have_expect(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_lingering_fail(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_input(i32) #1

declare dso_local i32 @evhttp_send_continue(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

declare dso_local i32 @evhttp_read_body(%struct.evhttp_connection*, %struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
