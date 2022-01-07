; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_do_write_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_do_write_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.st_h2o_http3client_req_t = type { %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @do_write_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_req(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  store i32* %0, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.st_h2o_http3client_req_t*
  store %struct.st_h2o_http3client_req_t* %12, %struct.st_h2o_http3client_req_t** %7, align 8
  %13 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = call i64 @quicly_sendstate_is_open(%struct.TYPE_13__* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i1 [ false, %3 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @emit_data(%struct.st_h2o_http3client_req_t* %35, i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %24
  %42 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %47 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %51, %52
  %54 = call i32 @quicly_sendstate_shutdown(%struct.TYPE_13__* %45, i64 %53)
  br label %55

55:                                               ; preds = %41, %24
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %62 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call i32 @quicly_stream_sync_sendbuf(%struct.TYPE_12__* %63, i32 1)
  %65 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %66 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @h2o_http3_schedule_timer(i32* %68)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @quicly_sendstate_is_open(%struct.TYPE_13__*) #1

declare dso_local i64 @emit_data(%struct.st_h2o_http3client_req_t*, i64) #1

declare dso_local i32 @quicly_sendstate_shutdown(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @quicly_stream_sync_sendbuf(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @h2o_http3_schedule_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
