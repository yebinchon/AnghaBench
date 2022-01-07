; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_ccm.c_cf_ccm_encrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_ccm.c_cf_ccm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@CF_MAXBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_ccm_encrypt(%struct.TYPE_5__* %0, i8* %1, i32* %2, i64 %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i32* %10, i64 %11) #0 {
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32* %7, i32** %20, align 8
  store i64 %8, i64* %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i64 %11, i64* %24, align 8
  %30 = load i32, i32* @CF_MAXBLOCK, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %25, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %26, align 8
  %34 = load i64, i64* %24, align 8
  %35 = icmp uge i64 %34, 4
  br i1 %35, label %36, label %43

36:                                               ; preds = %12
  %37 = load i64, i64* %24, align 8
  %38 = icmp ule i64 %37, 16
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %24, align 8
  %41 = urem i64 %40, 2
  %42 = icmp eq i64 %41, 0
  br label %43

43:                                               ; preds = %39, %36, %12
  %44 = phi i1 [ false, %36 ], [ false, %12 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %17, align 8
  %48 = icmp uge i64 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %17, align 8
  %51 = icmp ule i64 %50, 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %21, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %17, align 8
  %61 = sub i64 %59, %60
  %62 = sub i64 %61, 1
  %63 = icmp eq i64 %56, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @cf_cbcmac_stream_init(i32* %27, %struct.TYPE_5__* %66, i8* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i64, i64* %21, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %24, align 8
  %78 = call i32 @add_block0(i32* %27, i32* %33, i64 %71, i32* %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %19, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %52
  %82 = load i32*, i32** %18, align 8
  %83 = load i64, i64* %19, align 8
  %84 = call i32 @add_aad(i32* %27, i32* %33, i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %52
  %86 = load i32*, i32** %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @cf_cbcmac_stream_update(i32* %27, i32* %86, i64 %87)
  %89 = call i32 @zero_pad(i32* %27)
  %90 = call i32 @cf_cbcmac_stream_nopad_final(i32* %27, i32* %33)
  %91 = load i32, i32* @CF_MAXBLOCK, align 4
  %92 = zext i32 %91 to i64
  %93 = alloca i32, i64 %92, align 16
  store i64 %92, i64* %28, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = load i64, i64* %21, align 8
  %97 = call i32 @build_ctr_nonce(i32* %93, i64 %94, i32* %95, i64 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @cf_ctr_init(i32* %29, %struct.TYPE_5__* %98, i8* %99, i32* %93)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %17, align 8
  %105 = sub i64 %103, %104
  %106 = load i64, i64* %17, align 8
  %107 = call i32 @cf_ctr_custom_counter(i32* %29, i64 %105, i64 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @cf_ctr_cipher(i32* %29, i32* %33, i32* %33, i64 %110)
  %112 = load i32*, i32** %23, align 8
  %113 = load i64, i64* %24, align 8
  %114 = call i32 @memcpy(i32* %112, i32* %33, i64 %113)
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %22, align 8
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @cf_ctr_cipher(i32* %29, i32* %115, i32* %116, i64 %117)
  %119 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @cf_cbcmac_stream_init(i32*, %struct.TYPE_5__*, i8*) #2

declare dso_local i32 @add_block0(i32*, i32*, i64, i32*, i64, i64, i64, i64, i64) #2

declare dso_local i32 @add_aad(i32*, i32*, i32*, i64) #2

declare dso_local i32 @cf_cbcmac_stream_update(i32*, i32*, i64) #2

declare dso_local i32 @zero_pad(i32*) #2

declare dso_local i32 @cf_cbcmac_stream_nopad_final(i32*, i32*) #2

declare dso_local i32 @build_ctr_nonce(i32*, i64, i32*, i64) #2

declare dso_local i32 @cf_ctr_init(i32*, %struct.TYPE_5__*, i8*, i32*) #2

declare dso_local i32 @cf_ctr_custom_counter(i32*, i64, i64) #2

declare dso_local i32 @cf_ctr_cipher(i32*, i32*, i32*, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
