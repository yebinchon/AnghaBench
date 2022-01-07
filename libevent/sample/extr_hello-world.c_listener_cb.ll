; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_hello-world.c_listener_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_hello-world.c_listener_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error constructing bufferevent!\00", align 1
@conn_writecb = common dso_local global i32 0, align 4
@conn_eventcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @listener_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listener_cb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.event_base*, align 8
  %12 = alloca %struct.bufferevent*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.event_base*
  store %struct.event_base* %14, %struct.event_base** %11, align 8
  %15 = load %struct.event_base*, %struct.event_base** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %18 = call %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %15, i32 %16, i32 %17)
  store %struct.bufferevent* %18, %struct.bufferevent** %12, align 8
  %19 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %20 = icmp ne %struct.bufferevent* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.event_base*, %struct.event_base** %11, align 8
  %25 = call i32 @event_base_loopbreak(%struct.event_base* %24)
  br label %42

26:                                               ; preds = %5
  %27 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %28 = load i32, i32* @conn_writecb, align 4
  %29 = load i32, i32* @conn_eventcb, align 4
  %30 = call i32 @bufferevent_setcb(%struct.bufferevent* %27, i32* null, i32 %28, i32 %29, i32* null)
  %31 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %32 = load i32, i32* @EV_WRITE, align 4
  %33 = call i32 @bufferevent_enable(%struct.bufferevent* %31, i32 %32)
  %34 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %35 = load i32, i32* @EV_READ, align 4
  %36 = call i32 @bufferevent_disable(%struct.bufferevent* %34, i32 %35)
  %37 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %38 = load i32, i32* @MESSAGE, align 4
  %39 = load i32, i32* @MESSAGE, align 4
  %40 = call i32 @strlen(i32 %39)
  %41 = call i32 @bufferevent_write(%struct.bufferevent* %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %26, %21
  ret void
}

declare dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @event_base_loopbreak(%struct.event_base*) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32*, i32, i32, i32*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
