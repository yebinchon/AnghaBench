; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_connect_tcp.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_connect_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }
%struct.timeval = type { i32, i64 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Unknown host\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@FIONBIO = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_connect_tcp(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 32)
  %17 = load i32, i32* @PF_UNSPEC, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @IPPROTO_TCP, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  store i8* null, i8** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %148

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @getaddrinfo(i8* %28, i8* %29, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ -1, %41 ]
  store i32 %43, i32* %3, align 4
  br label %148

44:                                               ; preds = %27
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %45, %struct.addrinfo** %11, align 8
  br label %46

46:                                               ; preds = %131, %44
  %47 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %48 = icmp ne %struct.addrinfo* %47, null
  br i1 %48, label %49, label %135

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @socket(i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %131

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @F_GETFL, align 4
  %72 = call i64 (i32, i32, ...) @fcntl(i32 %70, i32 %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @F_SETFL, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @O_NONBLOCK, align 4
  %81 = or i32 %79, %80
  %82 = call i64 (i32, i32, ...) @fcntl(i32 %77, i32 %78, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @connect(i32 %85, i32 %88, i32 %91)
  %93 = icmp slt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* @errno, align 8
  %96 = load i64, i64* @EINPROGRESS, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %84, %76, %69
  br label %131

101:                                              ; preds = %84
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 500000, i32* %103, align 8
  %104 = call i32 @FD_ZERO(i32* %14)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @FD_SET(i32 %105, i32* %14)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @F_SETFL, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i64 (i32, i32, ...) @fcntl(i32 %107, i32 %108, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %131

113:                                              ; preds = %101
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i32 @select(i32 %115, i32* %14, i32* null, i32* null, %struct.timeval* %13)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %131

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @F_SETFL, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @O_NONBLOCK, align 4
  %125 = or i32 %123, %124
  %126 = call i64 (i32, i32, ...) @fcntl(i32 %121, i32 %122, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %9, align 4
  br label %135

131:                                              ; preds = %128, %119, %112, %100, %68
  %132 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %133 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %132, i32 0, i32 5
  %134 = load %struct.addrinfo*, %struct.addrinfo** %133, align 8
  store %struct.addrinfo* %134, %struct.addrinfo** %11, align 8
  br label %46

135:                                              ; preds = %129, %46
  %136 = load i32, i32* %10, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @close(i32 %142)
  br label %144

144:                                              ; preds = %141, %138, %135
  %145 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %146 = call i32 @freeaddrinfo(%struct.addrinfo* %145)
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %42, %26
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
