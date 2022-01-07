; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_be_socket_setfd.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_be_socket_setfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32, i32, i32 }
%struct.bufferevent_private = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@bufferevent_readcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@bufferevent_writecb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i32)* @be_socket_setfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_socket_setfd(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %6)
  store %struct.bufferevent_private* %7, %struct.bufferevent_private** %5, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = call i32 @BEV_LOCK(%struct.bufferevent* %8)
  %10 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %11 = call i32 @BEV_IS_SOCKET(%struct.bufferevent* %10)
  %12 = call i32 @EVUTIL_ASSERT(i32 %11)
  %13 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 3
  %15 = call i32 @event_del(i32* %14)
  %16 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %16, i32 0, i32 2
  %18 = call i32 @event_del(i32* %17)
  %19 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %20 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @evbuffer_unfreeze(i32 %21, i32 0)
  %23 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @evbuffer_unfreeze(i32 %25, i32 1)
  %27 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %28 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %27, i32 0, i32 3
  %29 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %30 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @EV_READ, align 4
  %34 = load i32, i32* @EV_PERSIST, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EV_FINALIZE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @bufferevent_readcb, align 4
  %39 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %40 = call i32 @event_assign(i32* %28, i32 %31, i32 %32, i32 %37, i32 %38, %struct.bufferevent* %39)
  %41 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %42 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %41, i32 0, i32 2
  %43 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %44 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @EV_WRITE, align 4
  %48 = load i32, i32* @EV_PERSIST, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @EV_FINALIZE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @bufferevent_writecb, align 4
  %53 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %54 = call i32 @event_assign(i32* %42, i32 %45, i32 %46, i32 %51, i32 %52, %struct.bufferevent* %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %2
  %58 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %59 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %60 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bufferevent_enable(%struct.bufferevent* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %2
  %64 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %65 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @evutil_getaddrinfo_cancel_async_(i32 %66)
  %68 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %69 = call i32 @BEV_UNLOCK(%struct.bufferevent* %68)
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @BEV_IS_SOCKET(%struct.bufferevent*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @evbuffer_unfreeze(i32, i32) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evutil_getaddrinfo_cancel_async_(i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
