; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_certificate_compression.c_decompress_certificate.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_certificate_compression.c_decompress_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@PTLS_CERTIFICATE_COMPRESSION_ALGORITHM_BROTLI = common dso_local global i64 0, align 8
@BROTLI_DECODER_RESULT_SUCCESS = common dso_local global i64 0, align 8
@PTLS_ALERT_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i32, %struct.TYPE_4__*)* @decompress_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_certificate(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_4__* %8 to { i64, i32 }*
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  store i32 %4, i32* %15, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @PTLS_CERTIFICATE_COMPRESSION_ALGORITHM_BROTLI, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %40

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @BrotliDecoderDecompress(i64 %24, i32 %26, i64* %12, i32 %28)
  %30 = load i64, i64* @BROTLI_DECODER_RESULT_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %40

33:                                               ; preds = %20
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %42

40:                                               ; preds = %38, %32, %19
  %41 = load i32, i32* @PTLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i64 @BrotliDecoderDecompress(i64, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
