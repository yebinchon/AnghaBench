; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_get_dns_error.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_get_dns_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_socket_get_dns_error(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %6 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %5)
  store %struct.bufferevent_private* %6, %struct.bufferevent_private** %4, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %8 = call i32 @BEV_LOCK(%struct.bufferevent* %7)
  %9 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %10 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %13 = call i32 @BEV_UNLOCK(%struct.bufferevent* %12)
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
