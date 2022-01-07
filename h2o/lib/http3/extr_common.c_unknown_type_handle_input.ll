; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_unknown_type_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_unknown_type_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t* }
%struct.st_h2o_http3_ingress_unistream_t = type { {}*, i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_STREAM_CREATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @unknown_type_handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unknown_type_handle_input(%struct.TYPE_12__* %0, %struct.st_h2o_http3_ingress_unistream_t* %1, i32** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.st_h2o_http3_ingress_unistream_t*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.st_h2o_http3_ingress_unistream_t* %1, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i32**, i32*** %9, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %74

18:                                               ; preds = %5
  %19 = load i32**, i32*** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @quicly_decodev(i32** %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @UINT64_MAX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %54 [
    i32 130, label %27
    i32 128, label %36
    i32 129, label %45
  ]

27:                                               ; preds = %25
  %28 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store %struct.st_h2o_http3_ingress_unistream_t* %28, %struct.st_h2o_http3_ingress_unistream_t** %32, align 8
  %33 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %34 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)**
  store i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @control_stream_handle_input, i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)** %35, align 8
  br label %63

36:                                               ; preds = %25
  %37 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store %struct.st_h2o_http3_ingress_unistream_t* %37, %struct.st_h2o_http3_ingress_unistream_t** %41, align 8
  %42 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)**
  store i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @qpack_encoder_stream_handle_input, i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)** %44, align 8
  br label %63

45:                                               ; preds = %25
  %46 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store %struct.st_h2o_http3_ingress_unistream_t* %46, %struct.st_h2o_http3_ingress_unistream_t** %50, align 8
  %51 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)**
  store i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @qpack_decoder_stream_handle_input, i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)** %53, align 8
  br label %63

54:                                               ; preds = %25
  %55 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %56 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @H2O_HTTP3_ERROR_STREAM_CREATION, align 4
  %59 = call i32 @quicly_request_stop(i32 %57, i32 %58)
  %60 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %61 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)**
  store i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @unknown_stream_type_handle_input, i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)** %62, align 8
  br label %63

63:                                               ; preds = %54, %45, %36, %27
  %64 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %64, i32 0, i32 0
  %66 = bitcast {}** %65 to i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)**
  %67 = load i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)*, i32 (%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  %70 = load i32**, i32*** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i8**, i8*** %11, align 8
  %73 = call i32 %67(%struct.TYPE_12__* %68, %struct.st_h2o_http3_ingress_unistream_t* %69, i32** %70, i32* %71, i8** %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %63, %24, %17
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @quicly_decodev(i32**, i32*) #1

declare dso_local i32 @control_stream_handle_input(%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**) #1

declare dso_local i32 @qpack_encoder_stream_handle_input(%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**) #1

declare dso_local i32 @qpack_decoder_stream_handle_input(%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**) #1

declare dso_local i32 @quicly_request_stop(i32, i32) #1

declare dso_local i32 @unknown_stream_type_handle_input(%struct.TYPE_12__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
