; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_reset_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_reset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32, i32, i32, i32 (%struct.evhttp_connection*, i32)* }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"setfd\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"drain output\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"drain input\00", align 1
@EVHTTP_CON_READING_ERROR = common dso_local global i32 0, align 4
@EVCON_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_reset_(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %5 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %6 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bufferevent_setcb(i32 %7, i32* null, i32* null, i32* null, i32* null)
  %9 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %10 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EV_READ, align 4
  %13 = load i32, i32* @EV_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @bufferevent_disable_hard_(i32 %11, i32 %14)
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %17 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %22 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bufferevent_getfd(i32 %23)
  %25 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %26 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %29 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %34 = call i64 @evhttp_connected(%struct.evhttp_connection* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %38 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %37, i32 0, i32 5
  %39 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.evhttp_connection*, i32)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %43 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %42, i32 0, i32 5
  %44 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %43, align 8
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %46 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %47 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %44(%struct.evhttp_connection* %45, i32 %48)
  br label %50

50:                                               ; preds = %41, %36, %32
  %51 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %52 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %55 = call i32 @shutdown(i32 %53, i32 %54)
  %56 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %57 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @evutil_closesocket(i32 %58)
  %60 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %61 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  br label %62

62:                                               ; preds = %50, %27
  %63 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %64 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bufferevent_setfd(i32 %65, i32 -1)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %62
  %71 = phi i1 [ false, %62 ], [ true, %69 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @EVUTIL_ASSERT(i32 %72)
  %74 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %75 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.evbuffer* @bufferevent_get_output(i32 %76)
  store %struct.evbuffer* %77, %struct.evbuffer** %3, align 8
  %78 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %79 = call i32 @evbuffer_drain(%struct.evbuffer* %78, i32 -1)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %70
  %84 = phi i1 [ false, %70 ], [ true, %82 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @EVUTIL_ASSERT(i32 %85)
  %87 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %88 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.evbuffer* @bufferevent_get_input(i32 %89)
  store %struct.evbuffer* %90, %struct.evbuffer** %3, align 8
  %91 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %92 = call i32 @evbuffer_drain(%struct.evbuffer* %91, i32 -1)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %83
  %97 = phi i1 [ false, %83 ], [ true, %95 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @EVUTIL_ASSERT(i32 %98)
  %100 = load i32, i32* @EVHTTP_CON_READING_ERROR, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %103 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @EVCON_DISCONNECTED, align 4
  %107 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %108 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  ret void
}

declare dso_local i32 @bufferevent_setcb(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bufferevent_disable_hard_(i32, i32) #1

declare dso_local i32 @bufferevent_getfd(i32) #1

declare dso_local i64 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @bufferevent_setfd(i32, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
