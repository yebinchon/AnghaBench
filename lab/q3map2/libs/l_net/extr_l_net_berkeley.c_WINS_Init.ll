; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_Init.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64* }
%struct.sockaddr_s = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@DEFAULTnet_hostport = common dso_local global i64 0, align 8
@net_hostport = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"WINS_Init: Unable to resolve hostname\0A\00", align 1
@myAddr = common dso_local global i32 0, align 4
@net_controlsocket = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"WINS_Init: Unable to open control socket\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@broadcastaddr = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@my_tcpip_address = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Winsock Initialized\0A\00", align 1
@winsockdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_s, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i64, i64* @DEFAULTnet_hostport, align 8
  store i64 %13, i64* @net_hostport, align 8
  %14 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %15 = call i32 @gethostname(i8* %12, i32 %14)
  %16 = call %struct.hostent* @gethostbyname(i8* %12)
  store %struct.hostent* %16, %struct.hostent** %3, align 8
  %17 = load %struct.hostent*, %struct.hostent** %3, align 8
  %18 = icmp eq %struct.hostent* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @WinError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %103

21:                                               ; preds = %0
  %22 = load %struct.hostent*, %struct.hostent** %3, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @myAddr, align 4
  store i8* %12, i8** %7, align 8
  br label %29

29:                                               ; preds = %50, %21
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp slt i32 %36, 48
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sgt i32 %41, 57
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %33
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  br label %29

53:                                               ; preds = %48, %29
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %2, align 4
  %60 = icmp slt i32 %59, 15
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %12, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %73

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %58

73:                                               ; preds = %68, %58
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %12, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %73, %53
  %78 = call i32 @WINS_OpenSocket(i32 0)
  store i32 %78, i32* @net_controlsocket, align 4
  %79 = load i32, i32* @SOCKET_ERROR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @WinError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* @AF_INET, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @broadcastaddr to %struct.sockaddr_in*), i32 0, i32 2), align 4
  %85 = load i32, i32* @INADDR_BROADCAST, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @broadcastaddr to %struct.sockaddr_in*), i32 0, i32 1, i32 0), align 4
  %86 = load i64, i64* @net_hostport, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @htons(i32 %87)
  store i32 %88, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @broadcastaddr to %struct.sockaddr_in*), i32 0, i32 0), align 4
  %89 = load i32, i32* @net_controlsocket, align 4
  %90 = call i32 @WINS_GetSocketAddr(i32 %89, %struct.sockaddr_s* %6)
  %91 = load i32, i32* @my_tcpip_address, align 4
  %92 = call i32 @WINS_AddrToString(%struct.sockaddr_s* %6)
  %93 = call i32 @strcpy(i32 %91, i32 %92)
  %94 = load i32, i32* @my_tcpip_address, align 4
  %95 = call i8* @strrchr(i32 %94, i8 signext 58)
  store i8* %95, i8** %7, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i8*, i8** %7, align 8
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %98, %83
  %101 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @net_controlsocket, align 4
  store i32 %102, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %19
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %1, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @WinError(i8*) #2

declare dso_local i32 @WINS_OpenSocket(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @WINS_GetSocketAddr(i32, %struct.sockaddr_s*) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i32 @WINS_AddrToString(%struct.sockaddr_s*) #2

declare dso_local i8* @strrchr(i32, i8 signext) #2

declare dso_local i32 @WinPrint(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
