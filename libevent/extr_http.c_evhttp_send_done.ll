; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send_done.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32, i32, i32, i32 (%struct.evhttp_request*, i32)* }

@next = common dso_local global i32 0, align 4
@EVHTTP_REQ_OWN_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, i8*)* @evhttp_send_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_send_done(%struct.evhttp_connection* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %8 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %7, i32 0, i32 0
  %9 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %8)
  store %struct.evhttp_request* %9, %struct.evhttp_request** %6, align 8
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 0
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %13 = load i32, i32* @next, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.evhttp_request* %12, i32 %13)
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %16 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %15, i32 0, i32 3
  %17 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.evhttp_request*, i32)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 3
  %22 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %21, align 8
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %25 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(%struct.evhttp_request* %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %2
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %30 = call i64 @REQ_VERSION_BEFORE(%struct.evhttp_request* %29, i32 1, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %34 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @evhttp_is_connection_keepalive(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %28
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %40 = call i64 @evhttp_is_request_connection_close(%struct.evhttp_request* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ true, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %46 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EVHTTP_REQ_OWN_CONNECTION, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @EVUTIL_ASSERT(i32 %49)
  %51 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %52 = call i32 @evhttp_request_free(%struct.evhttp_request* %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %57 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %56)
  br label %65

58:                                               ; preds = %42
  %59 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %60 = call i32 @evhttp_associate_new_request_with_connection(%struct.evhttp_connection* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %64 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %63)
  br label %65

65:                                               ; preds = %55, %62, %58
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i64 @REQ_VERSION_BEFORE(%struct.evhttp_request*, i32, i32) #1

declare dso_local i32 @evhttp_is_connection_keepalive(i32) #1

declare dso_local i64 @evhttp_is_request_connection_close(%struct.evhttp_request*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_associate_new_request_with_connection(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
