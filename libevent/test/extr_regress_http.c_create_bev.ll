; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_create_bev.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_create_bev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@HTTP_SSL_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent* (%struct.event_base*, i32, i32)* @create_bev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent* @create_bev(%struct.event_base* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent*, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  store i32 %9, i32* %7, align 4
  store %struct.bufferevent* null, %struct.bufferevent** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.event_base*, %struct.event_base** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %13, i32 %14, i32 %15)
  store %struct.bufferevent* %16, %struct.bufferevent** %8, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  ret %struct.bufferevent* %19
}

declare dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
