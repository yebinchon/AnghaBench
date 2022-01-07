; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_send.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_14__*, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@UV_UDP_SEND = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@UV_HANDLE_UDP_PROCESSING = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__udp_send(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.sockaddr* %2, i32 %3, %struct.sockaddr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ugt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %23 = icmp ne %struct.sockaddr* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %7
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_14__* %25, i32 %28, i32 0)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %8, align 4
  br label %174

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %7
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = load i32, i32* @UV_UDP_SEND, align 4
  %46 = call i32 @uv__req_init(i32 %43, %struct.TYPE_15__* %44, i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp ule i64 %48, 4
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %53 = icmp eq %struct.sockaddr* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load i32, i32* @AF_UNSPEC, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %65

59:                                               ; preds = %35
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 6
  %62 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @memcpy(%struct.TYPE_16__* %61, %struct.sockaddr* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %83)
  %85 = icmp ugt i32 %80, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %65
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call %struct.TYPE_16__* @uv__malloc(i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %93, align 8
  br label %94

94:                                               ; preds = %86, %65
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = icmp eq %struct.TYPE_16__* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = call i32 @uv__req_unregister(i32 %102, %struct.TYPE_15__* %103)
  %105 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %105, i32* %8, align 4
  br label %174

106:                                              ; preds = %94
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i32 @memcpy(%struct.TYPE_16__* %109, %struct.sockaddr* %110, i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @uv__count_bufs(%struct.TYPE_16__* %118, i32 %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = call i32 @QUEUE_INSERT_TAIL(i32* %134, i32* %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %139 = call i32 @uv__handle_start(%struct.TYPE_14__* %138)
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %106
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @UV_HANDLE_UDP_PROCESSING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %151 = call i32 @uv__udp_sendmsg(%struct.TYPE_14__* %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 4
  %154 = call i32 @QUEUE_EMPTY(i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i32, i32* @POLLOUT, align 4
  %163 = call i32 @uv__io_start(i32 %159, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %149
  br label %173

165:                                              ; preds = %142, %106
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* @POLLOUT, align 4
  %172 = call i32 @uv__io_start(i32 %168, i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %165, %164
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %173, %99, %32
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @uv__req_init(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @uv__malloc(i32) #1

declare dso_local i32 @uv__req_unregister(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @uv__count_bufs(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #1

declare dso_local i32 @uv__handle_start(%struct.TYPE_14__*) #1

declare dso_local i32 @uv__udp_sendmsg(%struct.TYPE_14__*) #1

declare dso_local i32 @QUEUE_EMPTY(i32*) #1

declare dso_local i32 @uv__io_start(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
