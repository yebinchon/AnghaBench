; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_Sys_StringToSockaddr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_Sys_StringToSockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@net_enabled = common dso_local global %struct.TYPE_2__* null, align 8
@NET_PRIOV6 = common dso_local global i32 0, align 4
@NET_ENABLEV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NET_ENABLEV4 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Sys_StringToSockaddr: Error resolving %s: No address of required type found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Sys_StringToSockaddr: Error resolving %s: %s\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr*, i32, i32)* @Sys_StringToSockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Sys_StringToSockaddr(i8* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo, align 4
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = call i32 @memset(%struct.sockaddr* %15, i8 signext 0, i32 16)
  %17 = bitcast %struct.addrinfo* %10 to %struct.sockaddr*
  %18 = call i32 @memset(%struct.sockaddr* %17, i8 signext 0, i32 16)
  store %struct.addrinfo* %10, %struct.addrinfo** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %27 = bitcast %struct.addrinfo* %26 to %struct.sockaddr*
  %28 = bitcast %struct.addrinfo** %11 to %struct.sockaddr**
  %29 = call i32 @getaddrinfo(i8* %25, i32* null, %struct.sockaddr* %27, %struct.sockaddr** %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %140, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AF_UNSPEC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NET_PRIOV6, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %36
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NET_ENABLEV6, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %52 = bitcast %struct.addrinfo* %51 to %struct.sockaddr*
  %53 = load i32, i32* @AF_INET6, align 4
  %54 = call %struct.sockaddr* @SearchAddrInfo(%struct.sockaddr* %52, i32 %53)
  %55 = bitcast %struct.sockaddr* %54 to %struct.addrinfo*
  store %struct.addrinfo* %55, %struct.addrinfo** %12, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %58 = icmp ne %struct.addrinfo* %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NET_ENABLEV4, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %68 = bitcast %struct.addrinfo* %67 to %struct.sockaddr*
  %69 = load i32, i32* @AF_INET, align 4
  %70 = call %struct.sockaddr* @SearchAddrInfo(%struct.sockaddr* %68, i32 %69)
  %71 = bitcast %struct.sockaddr* %70 to %struct.addrinfo*
  store %struct.addrinfo* %71, %struct.addrinfo** %12, align 8
  br label %72

72:                                               ; preds = %66, %59, %56
  br label %103

73:                                               ; preds = %36
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NET_ENABLEV4, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %82 = bitcast %struct.addrinfo* %81 to %struct.sockaddr*
  %83 = load i32, i32* @AF_INET, align 4
  %84 = call %struct.sockaddr* @SearchAddrInfo(%struct.sockaddr* %82, i32 %83)
  %85 = bitcast %struct.sockaddr* %84 to %struct.addrinfo*
  store %struct.addrinfo* %85, %struct.addrinfo** %12, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %88 = icmp ne %struct.addrinfo* %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NET_ENABLEV6, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %98 = bitcast %struct.addrinfo* %97 to %struct.sockaddr*
  %99 = load i32, i32* @AF_INET6, align 4
  %100 = call %struct.sockaddr* @SearchAddrInfo(%struct.sockaddr* %98, i32 %99)
  %101 = bitcast %struct.sockaddr* %100 to %struct.addrinfo*
  store %struct.addrinfo* %101, %struct.addrinfo** %12, align 8
  br label %102

102:                                              ; preds = %96, %89, %86
  br label %103

103:                                              ; preds = %102, %72
  br label %110

104:                                              ; preds = %32
  %105 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %106 = bitcast %struct.addrinfo* %105 to %struct.sockaddr*
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.sockaddr* @SearchAddrInfo(%struct.sockaddr* %106, i32 %107)
  %109 = bitcast %struct.sockaddr* %108 to %struct.addrinfo*
  store %struct.addrinfo* %109, %struct.addrinfo** %12, align 8
  br label %110

110:                                              ; preds = %104, %103
  %111 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %112 = icmp ne %struct.addrinfo* %111, null
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %125 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memcpy(%struct.sockaddr* %124, i32 %127, i32 %130)
  %132 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %133 = bitcast %struct.addrinfo* %132 to %struct.sockaddr*
  %134 = call i32 @freeaddrinfo(%struct.sockaddr* %133)
  %135 = load i32, i32* @qtrue, align 4
  store i32 %135, i32* %5, align 4
  br label %154

136:                                              ; preds = %110
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136
  br label %145

140:                                              ; preds = %4
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @gai_strerror(i32 %142)
  %144 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %141, i32 %143)
  br label %145

145:                                              ; preds = %140, %139
  %146 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %147 = icmp ne %struct.addrinfo* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %150 = bitcast %struct.addrinfo* %149 to %struct.sockaddr*
  %151 = call i32 @freeaddrinfo(%struct.sockaddr* %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i32, i32* @qfalse, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %123
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @memset(%struct.sockaddr*, i8 signext, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.sockaddr*, %struct.sockaddr**) #1

declare dso_local %struct.sockaddr* @SearchAddrInfo(%struct.sockaddr*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.sockaddr*) #1

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
