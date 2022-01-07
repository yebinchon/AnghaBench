; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_handle_request.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, %struct.TYPE_2__*, i32*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.evhttp = type { i32, i32, i32 (%struct.evhttp_request*, i32)*, i32 }
%struct.evhttp_cb = type { i32, i32 (%struct.evhttp_request*, i32)* }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Rejecting disallowed method %x (allowed: %x)\0A\00", align 1
@HTTP_NOTIMPLEMENTED = common dso_local global i32 0, align 4
@HTTP_NOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.2 = private unnamed_addr constant [144 x i8] c"<html><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL %s was not found on this server.</p></body></html>\0A\00", align 1
@ERR_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @evhttp_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_handle_request(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp*, align 8
  %6 = alloca %struct.evhttp_cb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.evhttp*
  store %struct.evhttp* %11, %struct.evhttp** %5, align 8
  store %struct.evhttp_cb* null, %struct.evhttp_cb** %6, align 8
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %13 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %15 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EV_READ, align 4
  %20 = call i32 @bufferevent_disable(i32 %18, i32 %19)
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %22 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %28 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @evhttp_send_error(%struct.evhttp_request* %26, i32 %29, i32* null)
  br label %126

31:                                               ; preds = %2
  %32 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %33 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %36 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %42 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %45 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @event_debug(i8* %48)
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %51 = load i32, i32* @HTTP_NOTIMPLEMENTED, align 4
  %52 = call i32 @evhttp_send_error(%struct.evhttp_request* %50, i32 %51, i32* null)
  br label %126

53:                                               ; preds = %31
  %54 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %55 = call i8* @evhttp_request_get_host(%struct.evhttp_request* %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @evhttp_find_vhost(%struct.evhttp* %59, %struct.evhttp** %5, i8* %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %64 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %63, i32 0, i32 3
  %65 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %66 = call %struct.evhttp_cb* @evhttp_dispatch_callback(i32* %64, %struct.evhttp_request* %65)
  store %struct.evhttp_cb* %66, %struct.evhttp_cb** %6, align 8
  %67 = icmp ne %struct.evhttp_cb* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.evhttp_cb*, %struct.evhttp_cb** %6, align 8
  %70 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %69, i32 0, i32 1
  %71 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %70, align 8
  %72 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %73 = load %struct.evhttp_cb*, %struct.evhttp_cb** %6, align 8
  %74 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %71(%struct.evhttp_request* %72, i32 %75)
  br label %126

77:                                               ; preds = %62
  %78 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %79 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %78, i32 0, i32 2
  %80 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.evhttp_request*, i32)* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %84 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %83, i32 0, i32 2
  %85 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %84, align 8
  %86 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %87 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %88 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %85(%struct.evhttp_request* %86, i32 %89)
  br label %126

91:                                               ; preds = %77
  %92 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %93 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @evhttp_htmlescape(i32* %94)
  store i8* %95, i8** %8, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %99 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = call i32 @evhttp_connection_free(%struct.TYPE_2__* %100)
  br label %126

102:                                              ; preds = %91
  %103 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %103, %struct.evbuffer** %9, align 8
  %104 = icmp eq %struct.evbuffer* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @mm_free(i8* %106)
  %108 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %109 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = call i32 @evhttp_connection_free(%struct.TYPE_2__* %110)
  br label %126

112:                                              ; preds = %102
  %113 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %114 = load i32, i32* @HTTP_NOTFOUND, align 4
  %115 = call i32 @evhttp_response_code_(%struct.evhttp_request* %113, i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @evbuffer_add_printf(%struct.evbuffer* %116, i32 ptrtoint ([144 x i8]* @.str.2 to i32), i8* %117)
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @mm_free(i8* %119)
  %121 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %122 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %123 = call i32 @evhttp_send_page_(%struct.evhttp_request* %121, %struct.evbuffer* %122)
  %124 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %125 = call i32 @evbuffer_free(%struct.evbuffer* %124)
  br label %126

126:                                              ; preds = %25, %40, %68, %82, %97, %105, %112
  ret void
}

declare dso_local i32 @bufferevent_disable(i32, i32) #1

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i8* @evhttp_request_get_host(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_find_vhost(%struct.evhttp*, %struct.evhttp**, i8*) #1

declare dso_local %struct.evhttp_cb* @evhttp_dispatch_callback(i32*, %struct.evhttp_request*) #1

declare dso_local i8* @evhttp_htmlescape(i32*) #1

declare dso_local i32 @evhttp_connection_free(%struct.TYPE_2__*) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @evhttp_response_code_(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i32, i8*) #1

declare dso_local i32 @evhttp_send_page_(%struct.evhttp_request*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
