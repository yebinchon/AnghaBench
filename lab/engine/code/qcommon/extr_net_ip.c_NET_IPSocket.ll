; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_IPSocket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_IPSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Opening IP socket: %s:%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Opening IP socket: 0.0.0.0:%i\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@socketError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"WARNING: NET_IPSocket: socket: %s\0A\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"WARNING: NET_IPSocket: ioctl FIONBIO: %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"WARNING: NET_IPSocket: setsockopt SO_BROADCAST: %s\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@PORT_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"WARNING: NET_IPSocket: bind: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_IPSocket(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @PF_INET, align 4
  %24 = load i32, i32* @SOCK_DGRAM, align 4
  %25 = load i32, i32* @IPPROTO_UDP, align 4
  %26 = call i32 @socket(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @INVALID_SOCKET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @socketError, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = call i32 (...) @NET_ErrorString()
  %33 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @FIONBIO, align 4
  %38 = call i64 @ioctlsocket(i32 %36, i32 %37, i32* %10)
  %39 = load i64, i64* @SOCKET_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = call i32 (...) @NET_ErrorString()
  %43 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @socketError, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @closesocket(i32 %46)
  %48 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %48, i32* %4, align 4
  br label %112

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SOL_SOCKET, align 4
  %52 = load i32, i32* @SO_BROADCAST, align 4
  %53 = bitcast i32* %11 to i8*
  %54 = call i64 @setsockopt(i32 %50, i32 %51, i32 %52, i8* %53, i32 4)
  %55 = load i64, i64* @SOCKET_ERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = call i32 (...) @NET_ErrorString()
  %59 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* @AF_INET, align 4
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @INADDR_ANY, align 4
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %85

74:                                               ; preds = %63
  %75 = load i8*, i8** %5, align 8
  %76 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %77 = load i32, i32* @AF_INET, align 4
  %78 = call i32 @Sys_StringToSockaddr(i8* %75, %struct.sockaddr* %76, i32 16, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @closesocket(i32 %81)
  %83 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %83, i32* %4, align 4
  br label %112

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PORT_ANY, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %96

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = trunc i32 %92 to i16
  %94 = call i64 @htons(i16 signext %93)
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %89
  %97 = load i32, i32* %8, align 4
  %98 = bitcast %struct.sockaddr_in* %9 to i8*
  %99 = call i64 @bind(i32 %97, i8* %98, i32 16)
  %100 = load i64, i64* @SOCKET_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = call i32 (...) @NET_ErrorString()
  %104 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @socketError, align 4
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @closesocket(i32 %107)
  %109 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %109, i32* %4, align 4
  br label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %102, %80, %41, %29
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i64 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @Sys_StringToSockaddr(i8*, %struct.sockaddr*, i32, i32) #1

declare dso_local i64 @htons(i16 signext) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
