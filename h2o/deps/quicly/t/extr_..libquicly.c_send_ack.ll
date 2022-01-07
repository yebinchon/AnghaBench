; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_send_ack.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.st_quicly_pn_space_t = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@now = common dso_local global i64 0, align 8
@QUICLY_LOCAL_ACK_DELAY_EXPONENT = common dso_local global i64 0, align 8
@QUICLY_ACK_FRAME_CAPACITY = common dso_local global i32 0, align 4
@on_ack_ack = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.st_quicly_pn_space_t*, %struct.TYPE_20__*)* @send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_ack(%struct.TYPE_21__* %0, %struct.st_quicly_pn_space_t* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.st_quicly_pn_space_t*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.st_quicly_pn_space_t* %1, %struct.st_quicly_pn_space_t** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %13 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %14 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %21 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @now, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i64, i64* @now, align 8
  %27 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %28 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = mul nsw i64 %30, 1000
  %32 = load i64, i64* @QUICLY_LOCAL_ACK_DELAY_EXPONENT, align 8
  %33 = ashr i64 %31, %32
  store i64 %33, i64* %8, align 8
  br label %35

34:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %64, %35
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = load i32, i32* @QUICLY_ACK_FRAME_CAPACITY, align 4
  %40 = call i32 @allocate_frame(%struct.TYPE_21__* %37, %struct.TYPE_20__* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %104

44:                                               ; preds = %36
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %52 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %51, i32 0, i32 2
  %53 = load i64, i64* %8, align 8
  %54 = call i32* @quicly_encode_ack_frame(i32* %47, i32 %50, %struct.TYPE_15__* %52, i64 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = call i32 @commit_send_packet(%struct.TYPE_21__* %58, %struct.TYPE_20__* %59, i32 0)
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %104

64:                                               ; preds = %57
  br label %36

65:                                               ; preds = %44
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %97, %65
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %72 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %69
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* @on_ack_ack, align 4
  %81 = call %struct.TYPE_19__* @quicly_sentmap_allocate(i32* %79, i32 %80)
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %12, align 8
  %82 = icmp eq %struct.TYPE_19__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %84, i32* %4, align 4
  br label %104

85:                                               ; preds = %76
  %86 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %87 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %85
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %69

100:                                              ; preds = %69
  %101 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %6, align 8
  %102 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %83, %62, %42, %18
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @allocate_frame(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32* @quicly_encode_ack_frame(i32*, i32, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @commit_send_packet(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @quicly_sentmap_allocate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
