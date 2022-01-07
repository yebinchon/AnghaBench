; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_deferred_read_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_deferred_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_callback = type { i32 }
%struct.evhttp_connection = type { %struct.bufferevent* }
%struct.bufferevent = type { i32 (%struct.bufferevent*, %struct.evhttp_connection*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_callback*, i8*)* @evhttp_deferred_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_deferred_read_cb(%struct.event_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.event_callback*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  store %struct.event_callback* %0, %struct.event_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %8, %struct.evhttp_connection** %5, align 8
  %9 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %10 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %9, i32 0, i32 0
  %11 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  store %struct.bufferevent* %11, %struct.bufferevent** %6, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %13 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %12, i32 0, i32 0
  %14 = load i32 (%struct.bufferevent*, %struct.evhttp_connection*)*, i32 (%struct.bufferevent*, %struct.evhttp_connection*)** %13, align 8
  %15 = icmp ne i32 (%struct.bufferevent*, %struct.evhttp_connection*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 0
  %19 = load i32 (%struct.bufferevent*, %struct.evhttp_connection*)*, i32 (%struct.bufferevent*, %struct.evhttp_connection*)** %18, align 8
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 0
  %22 = load %struct.bufferevent*, %struct.bufferevent** %21, align 8
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %24 = call i32 %19(%struct.bufferevent* %22, %struct.evhttp_connection* %23)
  br label %25

25:                                               ; preds = %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
