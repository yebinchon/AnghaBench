; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_reset_stream_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_reset_stream_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.st_quicly_handle_payload_state_t = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.st_quicly_handle_payload_state_t*)* @handle_reset_stream_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_reset_stream_frame(%struct.TYPE_19__* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %10 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %10, i32 0, i32 1
  %12 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %13 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @quicly_decode_reset_stream_frame(i32* %11, i32 %14, %struct.TYPE_18__* %6)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_stream_or_open_if_new(%struct.TYPE_19__* %20, i32 %22, %struct.TYPE_17__** %7)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = icmp eq %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = call i32 @quicly_recvstate_transfer_complete(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @quicly_recvstate_reset(i32* %37, i32 %39, i64* %9)
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %76

44:                                               ; preds = %35
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %45
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 %61)
  %63 = call i32 %58(%struct.TYPE_17__* %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %44
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %76

67:                                               ; preds = %44
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = call i64 @stream_is_destroyable(%struct.TYPE_17__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = call i32 @destroy_stream(%struct.TYPE_17__* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74, %30
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %65, %42, %28, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @quicly_decode_reset_stream_frame(i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @get_stream_or_open_if_new(%struct.TYPE_19__*, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_recvstate_reset(i32*, i32, i64*) #1

declare dso_local i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32) #1

declare dso_local i64 @stream_is_destroyable(%struct.TYPE_17__*) #1

declare dso_local i32 @destroy_stream(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
