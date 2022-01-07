; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_req_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_req_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@c_stop = common dso_local global i64 0, align 8
@s_proxy_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"upstream connection error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\05\05\00\01\00\00\00\00\00\00\00", align 1
@s_kill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @do_req_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_req_connect(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @c_stop, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @c_stop, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @c_stop, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @c_stop, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %9, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %1
  store i32 8, i32* %10, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %57 = bitcast i8* %56 to %struct.sockaddr*
  %58 = call i64 @uv_tcp_getsockname(i32* %55, %struct.sockaddr* %57, i32* %10)
  %59 = icmp eq i64 0, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @CHECK(i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 5, i8* %63, align 1
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %69, 8
  br i1 %70, label %71, label %88

71:                                               ; preds = %52
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 1, i8* %73, align 1
  %74 = bitcast [8 x i8]* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %74, %struct.sockaddr_in** %5, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 1
  %79 = call i32 @memcpy(i8* %76, i32* %78, i32 4)
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 0
  %84 = call i32 @memcpy(i8* %81, i32* %83, i32 2)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @conn_write(%struct.TYPE_9__* %85, i8* %86, i32 10)
  br label %112

88:                                               ; preds = %52
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8 4, i8* %94, align 1
  %95 = bitcast [8 x i8]* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %95, %struct.sockaddr_in6** %4, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 1
  %100 = call i32 @memcpy(i8* %97, i32* %99, i32 16)
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 20
  %103 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %103, i32 0, i32 0
  %105 = call i32 @memcpy(i8* %102, i32* %104, i32 2)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @conn_write(%struct.TYPE_9__* %106, i8* %107, i32 22)
  br label %111

109:                                              ; preds = %88
  %110 = call i32 (...) @UNREACHABLE()
  br label %111

111:                                              ; preds = %109, %92
  br label %112

112:                                              ; preds = %111, %71
  %113 = load i32, i32* @s_proxy_start, align 4
  store i32 %113, i32* %2, align 4
  br label %123

114:                                              ; preds = %1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @uv_strerror(i64 %117)
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = call i32 @conn_write(%struct.TYPE_9__* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %122 = load i32, i32* @s_kill, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %114, %112
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @uv_tcp_getsockname(i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @conn_write(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @UNREACHABLE(...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @uv_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
