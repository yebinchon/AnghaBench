; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_connect_getaddrinfo_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_connect_getaddrinfo_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i64, i32 }
%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { i32, i32* }

@BEV_SUSPEND_LOOKUP = common dso_local global i32 0, align 4
@EVUTIL_EAI_CANCEL = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.evutil_addrinfo*, i8*)* @bufferevent_connect_getaddrinfo_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_connect_getaddrinfo_cb(i32 %0, %struct.evutil_addrinfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evutil_addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.bufferevent_private*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bufferevent*
  store %struct.bufferevent* %11, %struct.bufferevent** %7, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %13 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %12)
  store %struct.bufferevent_private* %13, %struct.bufferevent_private** %8, align 8
  %14 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %15 = call i32 @BEV_LOCK(%struct.bufferevent* %14)
  %16 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %17 = load i32, i32* @BEV_SUSPEND_LOOKUP, align 4
  %18 = call i32 @bufferevent_unsuspend_write_(%struct.bufferevent* %16, i32 %17)
  %19 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %20 = load i32, i32* @BEV_SUSPEND_LOOKUP, align 4
  %21 = call i32 @bufferevent_unsuspend_read_(%struct.bufferevent* %19, i32 %20)
  %22 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %23 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EVUTIL_EAI_CANCEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %30 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %32 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %31)
  br label %81

33:                                               ; preds = %3
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %39 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %41 = load i32, i32* @BEV_EVENT_ERROR, align 4
  %42 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %40, i32 %41, i32 0)
  %43 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %44 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %43)
  %45 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %46 = icmp ne %struct.evutil_addrinfo* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %49 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %48)
  br label %50

50:                                               ; preds = %47, %36
  br label %81

51:                                               ; preds = %33
  %52 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %53 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %54 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %57 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @bufferevent_socket_set_conn_address_(%struct.bufferevent* %52, i32 %55, i32 %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %62 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %63 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %66 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @bufferevent_socket_connect(%struct.bufferevent* %61, i32 %64, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %51
  %73 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %74 = load i32, i32* @BEV_EVENT_ERROR, align 4
  %75 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %72, %51
  %77 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %78 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %77)
  %79 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %80 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %79)
  br label %81

81:                                               ; preds = %76, %50, %27
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_unsuspend_write_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_unsuspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

declare dso_local i32 @bufferevent_socket_set_conn_address_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_socket_connect(%struct.bufferevent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
