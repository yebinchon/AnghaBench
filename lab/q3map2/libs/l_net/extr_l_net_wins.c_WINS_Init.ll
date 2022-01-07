; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Init.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64* }
%struct.sockaddr_s = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@winsockdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Winsock initialization failed.\0A\00", align 1
@DEFAULTnet_hostport = common dso_local global i64 0, align 8
@net_hostport = common dso_local global i64 0, align 8
@myAddr = common dso_local global i32 0, align 4
@net_controlsocket = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"WINS_Init: Unable to open control socket\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@broadcastaddr = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@my_tcpip_address = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Winsock Initialized\0A\00", align 1

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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = call i32 @MAKEWORD(i32 1, i32 1)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @WSAStartup(i32 %16, i32* @winsockdata)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @WinPrint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %107

22:                                               ; preds = %0
  %23 = load i64, i64* @DEFAULTnet_hostport, align 8
  store i64 %23, i64* @net_hostport, align 8
  %24 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %25 = call i32 @gethostname(i8* %14, i32 %24)
  %26 = call %struct.hostent* @gethostbyname(i8* %14)
  store %struct.hostent* %26, %struct.hostent** %3, align 8
  %27 = load %struct.hostent*, %struct.hostent** %3, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @myAddr, align 4
  store i8* %14, i8** %7, align 8
  br label %34

34:                                               ; preds = %55, %22
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp slt i32 %41, 48
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sgt i32 %46, 57
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 46
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %58

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  br label %34

58:                                               ; preds = %53, %34
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %2, align 4
  %65 = icmp slt i32 %64, 15
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %14, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %78

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %63

78:                                               ; preds = %73, %63
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %14, i64 %80
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %78, %58
  %83 = call i32 @WINS_OpenSocket(i32 0)
  store i32 %83, i32* @net_controlsocket, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @WinError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* @AF_INET, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @broadcastaddr to %struct.sockaddr_in*), i32 0, i32 2), align 4
  %89 = load i32, i32* @INADDR_BROADCAST, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @broadcastaddr to %struct.sockaddr_in*), i32 0, i32 1, i32 0), align 4
  %90 = load i64, i64* @net_hostport, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @htons(i32 %91)
  store i32 %92, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @broadcastaddr to %struct.sockaddr_in*), i32 0, i32 0), align 4
  %93 = load i32, i32* @net_controlsocket, align 4
  %94 = call i32 @WINS_GetSocketAddr(i32 %93, %struct.sockaddr_s* %6)
  %95 = load i32, i32* @my_tcpip_address, align 4
  %96 = call i32 @WINS_AddrToString(%struct.sockaddr_s* %6)
  %97 = call i32 @strcpy(i32 %95, i32 %96)
  %98 = load i32, i32* @my_tcpip_address, align 4
  %99 = call i8* @strrchr(i32 %98, i8 signext 58)
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i8*, i8** %7, align 8
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %102, %87
  %105 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @net_controlsocket, align 4
  store i32 %106, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %20
  %108 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MAKEWORD(i32, i32) #2

declare dso_local i32 @WSAStartup(i32, i32*) #2

declare dso_local i32 @WinPrint(i8*) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @WINS_OpenSocket(i32) #2

declare dso_local i32 @WinError(i8*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @WINS_GetSocketAddr(i32, %struct.sockaddr_s*) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i32 @WINS_AddrToString(%struct.sockaddr_s*) #2

declare dso_local i8* @strrchr(i32, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
