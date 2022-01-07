; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32, i32 }
%struct.event_base = type { i32 }
%struct.bufferevent_private = type { %struct.bufferevent }

@bufferevent_ops_socket = common dso_local global i32 0, align 4
@EVBUFFER_FLAG_DRAINS_TO_FD = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@bufferevent_readcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@bufferevent_writecb = common dso_local global i32 0, align 4
@bufferevent_socket_outbuf_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent_private*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.bufferevent_private* @mm_calloc(i32 1, i32 20)
  store %struct.bufferevent_private* %10, %struct.bufferevent_private** %8, align 8
  %11 = icmp eq %struct.bufferevent_private* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %73

13:                                               ; preds = %3
  %14 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %15 = load %struct.event_base*, %struct.event_base** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @bufferevent_init_common_(%struct.bufferevent_private* %14, %struct.event_base* %15, i32* @bufferevent_ops_socket, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %21 = call i32 @mm_free(%struct.bufferevent_private* %20)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %73

22:                                               ; preds = %13
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  store %struct.bufferevent* %24, %struct.bufferevent** %9, align 8
  %25 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %26 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EVBUFFER_FLAG_DRAINS_TO_FD, align 4
  %29 = call i32 @evbuffer_set_flags(i32 %27, i32 %28)
  %30 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 4
  %32 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EV_READ, align 4
  %37 = load i32, i32* @EV_PERSIST, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EV_FINALIZE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @bufferevent_readcb, align 4
  %42 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %43 = call i32 @event_assign(i32* %31, i32 %34, i32 %35, i32 %40, i32 %41, %struct.bufferevent* %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 3
  %46 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EV_WRITE, align 4
  %51 = load i32, i32* @EV_PERSIST, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EV_FINALIZE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @bufferevent_writecb, align 4
  %56 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %57 = call i32 @event_assign(i32* %45, i32 %48, i32 %49, i32 %54, i32 %55, %struct.bufferevent* %56)
  %58 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %59 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @bufferevent_socket_outbuf_cb, align 4
  %62 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %63 = call i32 @evbuffer_add_cb(i32 %60, i32 %61, %struct.bufferevent* %62)
  %64 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %65 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @evbuffer_freeze(i32 %66, i32 0)
  %68 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %69 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @evbuffer_freeze(i32 %70, i32 1)
  %72 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  store %struct.bufferevent* %72, %struct.bufferevent** %4, align 8
  br label %73

73:                                               ; preds = %22, %19, %12
  %74 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  ret %struct.bufferevent* %74
}

declare dso_local %struct.bufferevent_private* @mm_calloc(i32, i32) #1

declare dso_local i64 @bufferevent_init_common_(%struct.bufferevent_private*, %struct.event_base*, i32*, i32) #1

declare dso_local i32 @mm_free(%struct.bufferevent_private*) #1

declare dso_local i32 @evbuffer_set_flags(i32, i32) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @evbuffer_add_cb(i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @evbuffer_freeze(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
