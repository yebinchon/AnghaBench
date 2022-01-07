; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_connect_complete.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_async.c_connect_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_overlapped = type { i32 }
%struct.bufferevent_async = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bufferevent, i64 }
%struct.bufferevent = type { i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_UPDATE_CONNECT_CONTEXT = common dso_local global i32 0, align 4
@BEV_EVENT_CONNECTED = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_overlapped*, i32, i32, i32)* @connect_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_complete(%struct.event_overlapped* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.event_overlapped*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufferevent_async*, align 8
  %10 = alloca %struct.bufferevent*, align 8
  %11 = alloca i32, align 4
  store %struct.event_overlapped* %0, %struct.event_overlapped** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.event_overlapped*, %struct.event_overlapped** %5, align 8
  %13 = call %struct.bufferevent_async* @upcast_connect(%struct.event_overlapped* %12)
  store %struct.bufferevent_async* %13, %struct.bufferevent_async** %9, align 8
  %14 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %15 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.bufferevent* %16, %struct.bufferevent** %10, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %18 = call i32 @BEV_LOCK(%struct.bufferevent* %17)
  %19 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %20 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @EVUTIL_ASSERT(i64 %22)
  %24 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %25 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %28 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @evbuffer_overlapped_get_fd_(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_UPDATE_CONNECT_CONTEXT, align 4
  %36 = call i32 @setsockopt(i32 %33, i32 %34, i32 %35, i32* null, i32 0)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %41 = call i32 @bufferevent_async_set_connected_(%struct.bufferevent* %40)
  br label %46

42:                                               ; preds = %4
  %43 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %44 = load %struct.event_overlapped*, %struct.event_overlapped** %5, align 8
  %45 = call i32 @bev_async_set_wsa_error(%struct.bufferevent* %43, %struct.event_overlapped* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @BEV_EVENT_ERROR, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @be_async_run_eventcb(%struct.bufferevent* %47, i32 %55, i32 0)
  %57 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %58 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @event_base_del_virtual_(i32 %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %62 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %61)
  ret void
}

declare dso_local %struct.bufferevent_async* @upcast_connect(%struct.event_overlapped*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i64) #1

declare dso_local i32 @evbuffer_overlapped_get_fd_(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bufferevent_async_set_connected_(%struct.bufferevent*) #1

declare dso_local i32 @bev_async_set_wsa_error(%struct.bufferevent*, %struct.event_overlapped*) #1

declare dso_local i32 @be_async_run_eventcb(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @event_base_del_virtual_(i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
