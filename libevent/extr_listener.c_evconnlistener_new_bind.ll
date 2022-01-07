; ModuleID = '/home/carl/AnghaBench/libevent/extr_listener.c_evconnlistener_new_bind.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_listener.c_evconnlistener_new_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.event_base = type { i32 }
%struct.sockaddr = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_EXEC = common dso_local global i32 0, align 4
@EVUTIL_SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE_PORT = common dso_local global i32 0, align 4
@LEV_OPT_DEFERRED_ACCEPT = common dso_local global i32 0, align 4
@LEV_OPT_BIND_IPV6ONLY = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.sockaddr* %5, i32 %6) #0 {
  %8 = alloca %struct.evconnlistener*, align 8
  %9 = alloca %struct.event_base*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.evconnlistener*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.sockaddr* %5, %struct.sockaddr** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %18, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %23 = icmp ne %struct.sockaddr* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @AF_UNSPEC, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  br label %137

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @LEV_OPT_CLOSE_ON_EXEC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %45 = load i32, i32* %20, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %20, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i32 @evutil_socket_(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  br label %137

54:                                               ; preds = %47
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @SOL_SOCKET, align 4
  %60 = load i32, i32* @SO_KEEPALIVE, align 4
  %61 = bitcast i32* %18 to i8*
  %62 = call i64 @setsockopt(i32 %58, i32 %59, i32 %60, i8* %61, i32 4)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %134

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @LEV_OPT_REUSEABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* %17, align 4
  %73 = call i64 @evutil_make_listen_socket_reuseable(i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %134

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @LEV_OPT_REUSEABLE_PORT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %17, align 4
  %84 = call i64 @evutil_make_listen_socket_reuseable_port(i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %134

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @LEV_OPT_DEFERRED_ACCEPT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %17, align 4
  %95 = call i64 @evutil_make_tcp_listen_socket_deferred(i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %134

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @LEV_OPT_BIND_IPV6ONLY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %17, align 4
  %106 = call i64 @evutil_make_listen_socket_ipv6only(i32 %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %134

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %99
  %111 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %112 = icmp ne %struct.sockaddr* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i64 @bind(i32 %114, %struct.sockaddr* %115, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %134

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %110
  %122 = load %struct.event_base*, %struct.event_base** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %17, align 4
  %128 = call %struct.evconnlistener* @evconnlistener_new(%struct.event_base* %122, i32 %123, i8* %124, i32 %125, i32 %126, i32 %127)
  store %struct.evconnlistener* %128, %struct.evconnlistener** %16, align 8
  %129 = load %struct.evconnlistener*, %struct.evconnlistener** %16, align 8
  %130 = icmp ne %struct.evconnlistener* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %121
  br label %134

132:                                              ; preds = %121
  %133 = load %struct.evconnlistener*, %struct.evconnlistener** %16, align 8
  store %struct.evconnlistener* %133, %struct.evconnlistener** %8, align 8
  br label %137

134:                                              ; preds = %131, %119, %108, %97, %86, %75, %64
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @evutil_closesocket(i32 %135)
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  br label %137

137:                                              ; preds = %134, %132, %53, %37
  %138 = load %struct.evconnlistener*, %struct.evconnlistener** %8, align 8
  ret %struct.evconnlistener* %138
}

declare dso_local i32 @evutil_socket_(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @evutil_make_listen_socket_reuseable(i32) #1

declare dso_local i64 @evutil_make_listen_socket_reuseable_port(i32) #1

declare dso_local i64 @evutil_make_tcp_listen_socket_deferred(i32) #1

declare dso_local i64 @evutil_make_listen_socket_ipv6only(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local %struct.evconnlistener* @evconnlistener_new(%struct.event_base*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
