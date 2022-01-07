; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_be_async_ctrl.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_be_async_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32 }
%union.bufferevent_ctrl_data = type { i8* }
%struct.bufferevent_async = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.event_iocp_port = type { i32 }

@EVUTIL_INVALID_SOCKET = common dso_local global i8* null, align 8
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_async_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_async_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  %8 = alloca %struct.bufferevent_async*, align 8
  %9 = alloca %struct.event_iocp_port*, align 8
  %10 = alloca %struct.bufferevent_async*, align 8
  %11 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %104 [
    i32 130, label %13
    i32 128, label %20
    i32 131, label %74
    i32 129, label %103
  ]

13:                                               ; preds = %3
  %14 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @evbuffer_overlapped_get_fd_(i32 %16)
  %18 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %19 = bitcast %union.bufferevent_ctrl_data* %18 to i8**
  store i8* %17, i8** %19, align 8
  store i32 0, i32* %4, align 4
  br label %105

20:                                               ; preds = %3
  %21 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %22 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %21)
  store %struct.bufferevent_async* %22, %struct.bufferevent_async** %8, align 8
  %23 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %24 = bitcast %union.bufferevent_ctrl_data* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @evbuffer_overlapped_get_fd_(i32 %28)
  %30 = icmp eq i8* %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %105

32:                                               ; preds = %20
  %33 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %34 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.event_iocp_port* @event_base_get_iocp_(i32 %35)
  store %struct.event_iocp_port* %36, %struct.event_iocp_port** %9, align 8
  %37 = icmp ne %struct.event_iocp_port* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %105

39:                                               ; preds = %32
  %40 = load %struct.event_iocp_port*, %struct.event_iocp_port** %9, align 8
  %41 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %42 = bitcast %union.bufferevent_ctrl_data* %41 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @event_iocp_port_associate_(%struct.event_iocp_port* %40, i8* %43, i32 1)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 @fatal_error(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %105

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %54 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %57 = bitcast %union.bufferevent_ctrl_data* %56 to i8**
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @evbuffer_overlapped_set_fd_(i32 %55, i8* %58)
  %60 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %64 = bitcast %union.bufferevent_ctrl_data* %63 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @evbuffer_overlapped_set_fd_(i32 %62, i8* %65)
  %67 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %68 = bitcast %union.bufferevent_ctrl_data* %67 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = icmp uge i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %73 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %105

74:                                               ; preds = %3
  %75 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %76 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %75)
  store %struct.bufferevent_async* %76, %struct.bufferevent_async** %10, align 8
  %77 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %78 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @evbuffer_overlapped_get_fd_(i32 %79)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** @EVUTIL_INVALID_SOCKET, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %74
  %85 = load %struct.bufferevent_async*, %struct.bufferevent_async** %10, align 8
  %86 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @closesocket(i8* %93)
  %95 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %96 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** @EVUTIL_INVALID_SOCKET, align 8
  %99 = call i32 @evbuffer_overlapped_set_fd_(i32 %97, i8* %98)
  br label %100

100:                                              ; preds = %92, %84, %74
  %101 = load %struct.bufferevent_async*, %struct.bufferevent_async** %10, align 8
  %102 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %105

103:                                              ; preds = %3
  br label %104

104:                                              ; preds = %3, %103
  store i32 -1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %100, %52, %50, %38, %31, %13
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i8* @evbuffer_overlapped_get_fd_(i32) #1

declare dso_local %struct.bufferevent_async* @upcast(%struct.bufferevent*) #1

declare dso_local %struct.event_iocp_port* @event_base_get_iocp_(i32) #1

declare dso_local i32 @event_iocp_port_associate_(%struct.event_iocp_port*, i8*, i32) #1

declare dso_local i32 @fatal_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @evbuffer_overlapped_set_fd_(i32, i8*) #1

declare dso_local i32 @closesocket(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
