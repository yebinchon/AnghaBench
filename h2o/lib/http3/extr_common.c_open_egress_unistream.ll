; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_open_egress_unistream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_open_egress_unistream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.st_h2o_http3_egress_unistream_t = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.st_h2o_http3_egress_unistream_t* }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.st_h2o_http3_egress_unistream_t**, i64)* @open_egress_unistream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_egress_unistream(%struct.TYPE_10__* %0, %struct.st_h2o_http3_egress_unistream_t** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.st_h2o_http3_egress_unistream_t**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %2, i64* %10, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.st_h2o_http3_egress_unistream_t** %1, %struct.st_h2o_http3_egress_unistream_t*** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @quicly_open_stream(i32 %13, %struct.TYPE_8__** %8, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %20, align 8
  %22 = load %struct.st_h2o_http3_egress_unistream_t**, %struct.st_h2o_http3_egress_unistream_t*** %7, align 8
  store %struct.st_h2o_http3_egress_unistream_t* %21, %struct.st_h2o_http3_egress_unistream_t** %22, align 8
  %23 = load %struct.st_h2o_http3_egress_unistream_t**, %struct.st_h2o_http3_egress_unistream_t*** %7, align 8
  %24 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %23, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = icmp eq %struct.TYPE_8__* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.st_h2o_http3_egress_unistream_t**, %struct.st_h2o_http3_egress_unistream_t*** %7, align 8
  %32 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %31, align 8
  %33 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @h2o_buffer_append(i32* %33, i32 %35, i32 %37)
  %39 = load %struct.st_h2o_http3_egress_unistream_t**, %struct.st_h2o_http3_egress_unistream_t*** %7, align 8
  %40 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %39, align 8
  %41 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @quicly_stream_sync_sendbuf(%struct.TYPE_8__* %42, i32 1)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %18, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @quicly_open_stream(i32, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_buffer_append(i32*, i32, i32) #1

declare dso_local i32 @quicly_stream_sync_sendbuf(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
