; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_connect.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.bufferevent_private = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_FINALIZE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@bufferevent_writecb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_socket_connect(%struct.bufferevent* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %13 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %12)
  store %struct.bufferevent_private* %13, %struct.bufferevent_private** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %15 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %14)
  %16 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %17 = call i64 @bufferevent_getfd(%struct.bufferevent* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = icmp ne %struct.sockaddr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %91

24:                                               ; preds = %20
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @evutil_socket_(i32 %27, i32 %30, i32 0)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %84

35:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = icmp ne %struct.sockaddr* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @evutil_socket_connect_(i64* %8, %struct.sockaddr* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %84

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @bufferevent_setfd(%struct.bufferevent* %48, i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %55 = load i32, i32* @EV_WRITE, align 4
  %56 = call i32 @be_socket_enable(%struct.bufferevent* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %60 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  store i32 0, i32* %10, align 4
  br label %91

61:                                               ; preds = %53
  br label %83

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  %66 = load %struct.bufferevent_private*, %struct.bufferevent_private** %7, align 8
  %67 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %69 = load i32, i32* @EV_WRITE, align 4
  %70 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %71 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %68, i32 %69, i32 %70)
  br label %82

72:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  %73 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %74 = load i32, i32* @BEV_EVENT_ERROR, align 4
  %75 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %76 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %73, i32 %74, i32 %75)
  %77 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %78 = load i32, i32* @EV_WRITE, align 4
  %79 = load i32, i32* @EV_READ, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @bufferevent_disable(%struct.bufferevent* %77, i32 %80)
  br label %82

82:                                               ; preds = %72, %65
  br label %83

83:                                               ; preds = %82, %61
  br label %91

84:                                               ; preds = %45, %34
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @evutil_closesocket(i64 %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %83, %58, %23
  %92 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %93 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local i64 @bufferevent_getfd(%struct.bufferevent*) #1

declare dso_local i64 @evutil_socket_(i32, i32, i32) #1

declare dso_local i32 @evutil_socket_connect_(i64*, %struct.sockaddr*, i32) #1

declare dso_local i32 @bufferevent_setfd(%struct.bufferevent*, i64) #1

declare dso_local i32 @be_socket_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
