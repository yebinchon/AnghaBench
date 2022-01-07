; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__fast_poll_submit_poll_req.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__fast_poll_submit_poll_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i32 0, align 4
@AFD_POLL_RECEIVE = common dso_local global i32 0, align 4
@AFD_POLL_DISCONNECT = common dso_local global i32 0, align 4
@AFD_POLL_ACCEPT = common dso_local global i32 0, align 4
@AFD_POLL_ABORT = common dso_local global i32 0, align 4
@UV_DISCONNECT = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4
@AFD_POLL_SEND = common dso_local global i32 0, align 4
@AFD_POLL_CONNECT_FAIL = common dso_local global i32 0, align 4
@WSA_IO_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*)* @uv__fast_poll_submit_poll_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__fast_poll_submit_poll_req(i32* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 10
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 9
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  br label %55

30:                                               ; preds = %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %5, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 7
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %6, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  store i32 0, i32* %52, align 8
  br label %54

53:                                               ; preds = %30
  br label %169

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @INT64_MAX, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  store i64 %67, i64* %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UV_READABLE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %55
  %90 = load i32, i32* @AFD_POLL_RECEIVE, align 4
  %91 = load i32, i32* @AFD_POLL_DISCONNECT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @AFD_POLL_ACCEPT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @AFD_POLL_ABORT, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %96
  store i32 %103, i32* %101, align 8
  br label %121

104:                                              ; preds = %55
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UV_DISCONNECT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i32, i32* @AFD_POLL_DISCONNECT, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %112
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %111, %104
  br label %121

121:                                              ; preds = %120, %89
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @UV_WRITABLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32, i32* @AFD_POLL_SEND, align 4
  %130 = load i32, i32* @AFD_POLL_CONNECT_FAIL, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %131
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %128, %121
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = call i32 @memset(i32* %143, i32 0, i32 4)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = call i32 @uv_msafd_poll(i32 %148, %struct.TYPE_19__* %149, %struct.TYPE_19__* %150, i32* %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %139
  %159 = call i64 (...) @WSAGetLastError()
  %160 = load i64, i64* @WSA_IO_PENDING, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = call i64 (...) @WSAGetLastError()
  %165 = call i32 @SET_REQ_ERROR(%struct.TYPE_17__* %163, i64 %164)
  %166 = load i32*, i32** %3, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = call i32 @uv_insert_pending_req(i32* %166, %struct.TYPE_17__* %167)
  br label %169

169:                                              ; preds = %53, %162, %158, %139
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uv_msafd_poll(i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @SET_REQ_ERROR(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @uv_insert_pending_req(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
