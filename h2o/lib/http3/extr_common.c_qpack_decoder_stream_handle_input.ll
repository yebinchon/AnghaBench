; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_qpack_decoder_stream_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_qpack_decoder_stream_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.st_h2o_http3_ingress_unistream_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)* @qpack_decoder_stream_handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpack_decoder_stream_handle_input(%struct.TYPE_5__* %0, %struct.st_h2o_http3_ingress_unistream_t* %1, i32** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.st_h2o_http3_ingress_unistream_t*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.st_h2o_http3_ingress_unistream_t* %1, %struct.st_h2o_http3_ingress_unistream_t** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  br label %13

13:                                               ; preds = %30, %5
  %14 = load i32**, i32*** %9, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32**, i32*** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = call i32 @h2o_qpack_encoder_handle_input(i32 %22, i32** %23, i32* %24, i8** %25)
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %18
  br label %13

31:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @h2o_qpack_encoder_handle_input(i32, i32**, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
