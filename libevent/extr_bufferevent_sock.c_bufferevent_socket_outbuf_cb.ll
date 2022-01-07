; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_outbuf_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_outbuf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_info = type { i64 }
%struct.bufferevent = type { i32, i32, i32 }
%struct.bufferevent_private = type { i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_cb_info*, i8*)* @bufferevent_socket_outbuf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_socket_outbuf_cb(%struct.evbuffer* %0, %struct.evbuffer_cb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_cb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.bufferevent_private*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_cb_info* %1, %struct.evbuffer_cb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent*
  store %struct.bufferevent* %10, %struct.bufferevent** %7, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %12 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %11)
  store %struct.bufferevent_private* %12, %struct.bufferevent_private** %8, align 8
  %13 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %14 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %19 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EV_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %26 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %25, i32 0, i32 2
  %27 = load i32, i32* @EV_WRITE, align 4
  %28 = call i32 @event_pending(i32* %26, i32 %27, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %32 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %37 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %36, i32 0, i32 2
  %38 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %39 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %38, i32 0, i32 1
  %40 = call i32 @bufferevent_add_event_(i32* %37, i32* %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %30, %24, %17, %3
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @event_pending(i32*, i32, i32*) #1

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
