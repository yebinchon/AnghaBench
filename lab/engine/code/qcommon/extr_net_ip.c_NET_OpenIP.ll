; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_OpenIP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_OpenIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@net_port = common dso_local global %struct.TYPE_9__* null, align 8
@net_port6 = common dso_local global %struct.TYPE_8__* null, align 8
@net_enabled = common dso_local global %struct.TYPE_12__* null, align 8
@NET_ENABLEV6 = common dso_local global i32 0, align 4
@net_ip6 = common dso_local global %struct.TYPE_10__* null, align 8
@boundto = common dso_local global i32 0, align 4
@ip6_socket = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"net_port6\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WARNING: Couldn't bind to a v6 ip address.\0A\00", align 1
@NET_ENABLEV4 = common dso_local global i32 0, align 4
@net_ip = common dso_local global %struct.TYPE_11__* null, align 8
@ip_socket = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"net_port\00", align 1
@net_socksEnabled = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"WARNING: Couldn't bind to a v4 ip address.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_OpenIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @net_port, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_port6, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @NET_GetLocalAddress()
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @net_enabled, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NET_ENABLEV6, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_ip6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i64 @NET_IP6Socket(i32 %25, i32 %28, i32* @boundto, i32* %2)
  store i64 %29, i64* @ip6_socket, align 8
  %30 = load i64, i64* @ip6_socket, align 8
  %31 = load i64, i64* @INVALID_SOCKET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %48

38:                                               ; preds = %22
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @EAFNOSUPPORT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %48

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %19

48:                                               ; preds = %42, %33, %19
  %49 = load i64, i64* @ip6_socket, align 8
  %50 = load i64, i64* @INVALID_SOCKET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @net_enabled, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NET_ENABLEV4, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %55
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %1, align 4
  %65 = icmp slt i32 %64, 10
  br i1 %65, label %66, label %102

66:                                               ; preds = %63
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @net_ip, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i64 @NET_IPSocket(i32 %69, i32 %72, i32* %2)
  store i64 %73, i64* @ip_socket, align 8
  %74 = load i64, i64* @ip_socket, align 8
  %75 = load i64, i64* @INVALID_SOCKET, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksEnabled, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @NET_OpenSocks(i32 %89)
  br label %91

91:                                               ; preds = %86, %77
  br label %102

92:                                               ; preds = %66
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @EAFNOSUPPORT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %102

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %63

102:                                              ; preds = %96, %91, %63
  %103 = load i64, i64* @ip_socket, align 8
  %104 = load i64, i64* @INVALID_SOCKET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %102
  br label %109

109:                                              ; preds = %108, %55
  ret void
}

declare dso_local i32 @NET_GetLocalAddress(...) #1

declare dso_local i64 @NET_IP6Socket(i32, i32, i32*, i32*) #1

declare dso_local i32 @Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i64 @NET_IPSocket(i32, i32, i32*) #1

declare dso_local i32 @NET_OpenSocks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
