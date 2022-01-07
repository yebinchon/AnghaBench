; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_make_header_response.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_make_header_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.evhttp_request = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"HTTP/%d.%d %d %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@EVHTTP_PROXY_REQUEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_make_header_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_make_header_response(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %6 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %7 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @evhttp_is_connection_keepalive(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bufferevent_get_output(i32 %12)
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %15 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %18 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @evbuffer_add_printf(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %28 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %76

31:                                               ; preds = %2
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %33 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @evhttp_maybe_add_date_header(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %43 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %51 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @evhttp_add_header(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %46, %41
  %55 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %56 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59, %54
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %64 = call i64 @evhttp_response_needs_body(%struct.evhttp_request* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %68 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %71 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @evbuffer_get_length(i32 %72)
  %74 = call i32 @evhttp_maybe_add_content_length_header(i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %62, %59
  br label %76

76:                                               ; preds = %75, %2
  %77 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %78 = call i64 @evhttp_response_needs_body(%struct.evhttp_request* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %82 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32* @evhttp_find_header(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %88 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %95 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %98 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @evhttp_add_header(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %93, %86, %80
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %106 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %109 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @evhttp_is_connection_close(i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %104
  %114 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %115 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @evhttp_remove_header(i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %119 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EVHTTP_PROXY_REQUEST, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %113
  %125 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %126 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @evhttp_add_header(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %124, %113
  %130 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %131 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @evhttp_remove_header(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %104
  ret void
}

declare dso_local i32 @evhttp_is_connection_keepalive(i32) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bufferevent_get_output(i32) #1

declare dso_local i32 @evhttp_maybe_add_date_header(i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i64 @evhttp_response_needs_body(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_maybe_add_content_length_header(i32, i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i64 @evhttp_is_connection_close(i32, i32) #1

declare dso_local i32 @evhttp_remove_header(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
