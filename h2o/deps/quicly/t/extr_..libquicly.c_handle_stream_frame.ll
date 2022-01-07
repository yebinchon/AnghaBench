; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_stream_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_stream_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_handle_payload_state_t = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@QUICTRACE_RECV_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.st_quicly_handle_payload_state_t*)* @handle_stream_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stream_frame(i32* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %9 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %13 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %12, i32 0, i32 1
  %14 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %15 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @quicly_decode_stream_frame(i32 %11, i32* %13, i32 %16, %struct.TYPE_6__* %6)
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load i32, i32* @QUICTRACE_RECV_STREAM, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (...) @probe_now()
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @QUICLY_PROBE(i32 %22, i32* %23, i32 %24, i32 %26, i32 %28, i32 %31, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_stream_or_open_if_new(i32* %36, i32 %38, i32** %7)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %21
  %42 = load i32*, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %21
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @apply_stream_frame(i32* %47, %struct.TYPE_6__* %6)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %44, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @quicly_decode_stream_frame(i32, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @QUICLY_PROBE(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i32 @get_stream_or_open_if_new(i32*, i32, i32**) #1

declare dso_local i32 @apply_stream_frame(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
