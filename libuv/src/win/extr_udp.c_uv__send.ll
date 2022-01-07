; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv__send.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv__send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32* }
%struct.sockaddr = type { i32 }

@UV_UDP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32, %struct.sockaddr*, i32, i32)* @uv__send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__send(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, %struct.sockaddr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %16, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = load i32, i32* @UV_UDP_SEND, align 4
  %24 = call i32 @UV_REQ_INIT(%struct.TYPE_13__* %22, i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %27, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call i32 @memset(i32* %34, i32 0, i32 4)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = call i64 @WSASendTo(i32 %38, i32* %39, i32 %40, i64* %18, i32 0, %struct.sockaddr* %41, i32 %42, i32* %46, i32* null)
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @UV_SUCCEEDED_WITHOUT_IOCP(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %7
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = call i32 @REGISTER_HANDLE_REQ(i32* %77, %struct.TYPE_12__* %78, %struct.TYPE_13__* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = bitcast %struct.TYPE_13__* %82 to i32*
  %84 = call i32 @uv_insert_pending_req(i32* %81, i32* %83)
  br label %125

85:                                               ; preds = %7
  %86 = load i64, i64* %17, align 8
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @UV_SUCCEEDED_WITH_IOCP(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %85
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @uv__count_bufs(i32* %92, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i64 %94, i64* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = call i32 @REGISTER_HANDLE_REQ(i32* %118, %struct.TYPE_12__* %119, %struct.TYPE_13__* %120)
  br label %124

122:                                              ; preds = %85
  %123 = call i32 (...) @WSAGetLastError()
  store i32 %123, i32* %8, align 4
  br label %126

124:                                              ; preds = %91
  br label %125

125:                                              ; preds = %124, %53
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %125, %122
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @UV_REQ_INIT(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @WSASendTo(i32, i32*, i32, i64*, i32, %struct.sockaddr*, i32, i32*, i32*) #1

declare dso_local i64 @UV_SUCCEEDED_WITHOUT_IOCP(i32) #1

declare dso_local i32 @REGISTER_HANDLE_REQ(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @uv_insert_pending_req(i32*, i32*) #1

declare dso_local i64 @UV_SUCCEEDED_WITH_IOCP(i32) #1

declare dso_local i64 @uv__count_bufs(i32*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
