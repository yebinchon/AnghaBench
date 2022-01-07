; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_SetMulticast6.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_SetMulticast6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@net_mcast6addr = common dso_local global %struct.TYPE_6__* null, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"WARNING: NET_JoinMulticast6: Incorrect multicast address given, please set cvar %s to a sane value.\0A\00", align 1
@net_enabled = common dso_local global %struct.TYPE_7__* null, align 8
@NET_DISABLEMCAST = common dso_local global i32 0, align 4
@curgroup = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@net_mcast6iface = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_SetMulticast6() #0 {
  %1 = alloca %struct.sockaddr_in6, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @net_mcast6addr, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @net_mcast6addr, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast %struct.sockaddr_in6* %1 to %struct.sockaddr*
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = call i32 @Sys_StringToSockaddr(i32* %10, %struct.sockaddr* %11, i32 4, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %7, %0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @net_mcast6addr, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @Com_Printf(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_enabled, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_enabled, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NET_DISABLEMCAST, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @Cvar_SetValue(i32 %22, i32 %27)
  br label %43

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 0
  %31 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @curgroup, i32 0, i32 1), i32* %30, i32 4)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @net_mcast6iface, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @net_mcast6iface, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i64 @if_nametoindex(i64* %40)
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @curgroup, i32 0, i32 0), align 8
  br label %43

42:                                               ; preds = %29
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @curgroup, i32 0, i32 0), align 8
  br label %43

43:                                               ; preds = %15, %42, %37
  ret void
}

declare dso_local i32 @Sys_StringToSockaddr(i32*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @Cvar_SetValue(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @if_nametoindex(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
