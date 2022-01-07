; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_free.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, %struct.evhttp_connection*, %struct.evhttp_connection*, i32*, i32, i32, %struct.evhttp*, i32, i32, i32 (%struct.evhttp_connection*, i32)* }
%struct.evhttp = type { i32 }
%struct.evhttp_request = type { i32 }

@next = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_free(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %12 = call i64 @evhttp_connected(%struct.evhttp_connection* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %16 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %15, i32 0, i32 9
  %17 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.evhttp_connection*, i32)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 9
  %22 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %21, align 8
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %24 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %25 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %22(%struct.evhttp_connection* %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %14, %10
  br label %29

29:                                               ; preds = %28, %1
  br label %30

30:                                               ; preds = %35, %29
  %31 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %32 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %31, i32 0, i32 7
  %33 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %32)
  store %struct.evhttp_request* %33, %struct.evhttp_request** %3, align 8
  %34 = icmp ne %struct.evhttp_request* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %38 = call i32 @evhttp_request_free_(%struct.evhttp_connection* %36, %struct.evhttp_request* %37)
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %41 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %40, i32 0, i32 6
  %42 = load %struct.evhttp*, %struct.evhttp** %41, align 8
  %43 = icmp ne %struct.evhttp* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %46 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %45, i32 0, i32 6
  %47 = load %struct.evhttp*, %struct.evhttp** %46, align 8
  store %struct.evhttp* %47, %struct.evhttp** %5, align 8
  %48 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %49 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %48, i32 0, i32 0
  %50 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %51 = load i32, i32* @next, align 4
  %52 = call i32 @TAILQ_REMOVE(i32* %49, %struct.evhttp_connection* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %55 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %54, i32 0, i32 5
  %56 = call i64 @event_initialized(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %60 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %59, i32 0, i32 5
  %61 = call i32 @event_del(i32* %60)
  %62 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %63 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %62, i32 0, i32 5
  %64 = call i32 @event_debug_unassign(i32* %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %67 = call i32 @get_deferred_queue(%struct.evhttp_connection* %66)
  %68 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %69 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %68, i32 0, i32 4
  %70 = call i32 @event_deferred_cb_cancel_(i32 %67, i32* %69)
  %71 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %72 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %65
  %76 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %77 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bufferevent_get_options_(i32* %78)
  %80 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %86 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %91 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @bufferevent_getfd(i32* %92)
  %94 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %95 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %75
  %97 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %98 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @bufferevent_free(i32* %99)
  br label %101

101:                                              ; preds = %96, %65
  %102 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %103 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %108 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %111 = call i32 @shutdown(i32 %109, i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %116 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @evutil_closesocket(i32 %117)
  br label %119

119:                                              ; preds = %114, %106
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %122 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %121, i32 0, i32 2
  %123 = load %struct.evhttp_connection*, %struct.evhttp_connection** %122, align 8
  %124 = icmp ne %struct.evhttp_connection* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %127 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %126, i32 0, i32 2
  %128 = load %struct.evhttp_connection*, %struct.evhttp_connection** %127, align 8
  %129 = call i32 @mm_free(%struct.evhttp_connection* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %132 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %131, i32 0, i32 1
  %133 = load %struct.evhttp_connection*, %struct.evhttp_connection** %132, align 8
  %134 = icmp ne %struct.evhttp_connection* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %137 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %136, i32 0, i32 1
  %138 = load %struct.evhttp_connection*, %struct.evhttp_connection** %137, align 8
  %139 = call i32 @mm_free(%struct.evhttp_connection* %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %142 = call i32 @mm_free(%struct.evhttp_connection* %141)
  ret void
}

declare dso_local i64 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evhttp_request_free_(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_connection*, i32) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_debug_unassign(i32*) #1

declare dso_local i32 @event_deferred_cb_cancel_(i32, i32*) #1

declare dso_local i32 @get_deferred_queue(%struct.evhttp_connection*) #1

declare dso_local i32 @bufferevent_get_options_(i32*) #1

declare dso_local i32 @bufferevent_getfd(i32*) #1

declare dso_local i32 @bufferevent_free(i32*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @mm_free(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
