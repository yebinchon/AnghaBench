; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_qpack_encoder_stream_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_qpack_encoder_stream_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.st_h2o_http3_ingress_unistream_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @qpack_encoder_stream_handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpack_encoder_stream_handle_input(%struct.TYPE_5__* %0, %struct.st_h2o_http3_ingress_unistream_t* %1, i32** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.st_h2o_http3_ingress_unistream_t*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.st_h2o_http3_ingress_unistream_t* %1, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  br label %15

15:                                               ; preds = %32, %5
  %16 = load i32**, i32*** %9, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32**, i32*** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i8**, i8*** %11, align 8
  %28 = call i32 @h2o_qpack_decoder_handle_input(i32 %24, i32** %12, i64* %13, i32** %25, i32* %26, i8** %27)
  store i32 %28, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %20
  br label %15

33:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @h2o_qpack_decoder_handle_input(i32, i32**, i64*, i32**, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
