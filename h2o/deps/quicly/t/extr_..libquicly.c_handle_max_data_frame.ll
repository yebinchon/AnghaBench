; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_max_data_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_max_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.st_quicly_handle_payload_state_t = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@MAX_DATA_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.st_quicly_handle_payload_state_t*)* @handle_max_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_max_data_frame(%struct.TYPE_11__* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %8 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %9 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %8, i32 0, i32 1
  %10 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @quicly_decode_max_data_frame(i32* %9, i32 %12, %struct.TYPE_10__* %6)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* @MAX_DATA_RECEIVE, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 (...) @probe_now()
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @QUICLY_PROBE(i32 %18, %struct.TYPE_11__* %19, i32 %20, i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %40

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %32, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @quicly_decode_max_data_frame(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @probe_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
