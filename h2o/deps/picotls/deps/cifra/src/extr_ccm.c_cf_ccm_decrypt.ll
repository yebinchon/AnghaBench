; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_ccm.c_cf_ccm_decrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_ccm.c_cf_ccm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@CF_MAXBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cf_ccm_decrypt(%struct.TYPE_5__* %0, i8* %1, i32* %2, i64 %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i64 %10, i32* %11) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
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
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  %32 = load i32, i32* @CF_MAXBLOCK, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %25, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %26, align 8
  %36 = load i64, i64* %23, align 8
  %37 = icmp uge i64 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %12
  %39 = load i64, i64* %23, align 8
  %40 = icmp ule i64 %39, 16
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %23, align 8
  %43 = urem i64 %42, 2
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %41, %38, %12
  %46 = phi i1 [ false, %38 ], [ false, %12 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* %17, align 8
  %50 = icmp uge i64 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %17, align 8
  %53 = icmp ule i64 %52, 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi i1 [ false, %45 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* %21, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %17, align 8
  %63 = sub i64 %61, %62
  %64 = sub i64 %63, 1
  %65 = icmp eq i64 %58, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* @CF_MAXBLOCK, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %27, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i64, i64* %21, align 8
  %74 = call i32 @build_ctr_nonce(i32* %70, i64 %71, i32* %72, i64 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @cf_ctr_init(i32* %28, %struct.TYPE_5__* %75, i8* %76, i32* %70)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %17, align 8
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @cf_ctr_custom_counter(i32* %28, i64 %82, i64 %83)
  %85 = load i32, i32* @CF_MAXBLOCK, align 4
  %86 = zext i32 %85 to i64
  %87 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %29, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = call i32 @cf_ctr_cipher(i32* %28, i32* %88, i32* %87, i64 %89)
  %91 = call i32 @cf_ctr_discard_block(i32* %28)
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %24, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @cf_ctr_cipher(i32* %28, i32* %92, i32* %93, i64 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @cf_cbcmac_stream_init(i32* %30, %struct.TYPE_5__* %96, i8* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %23, align 8
  %108 = call i32 @add_block0(i32* %30, i32* %35, i64 %101, i32* %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %19, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %54
  %112 = load i32*, i32** %18, align 8
  %113 = load i64, i64* %19, align 8
  %114 = call i32 @add_aad(i32* %30, i32* %35, i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %54
  %116 = load i32*, i32** %24, align 8
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @cf_cbcmac_stream_update(i32* %30, i32* %116, i64 %117)
  %119 = call i32 @zero_pad(i32* %30)
  %120 = call i32 @cf_cbcmac_stream_nopad_final(i32* %30, i32* %35)
  store i32 0, i32* %31, align 4
  %121 = load i64, i64* %23, align 8
  %122 = call i32 @mem_eq(i32* %35, i32* %87, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  store i32 1, i32* %31, align 4
  %125 = load i32*, i32** %24, align 8
  %126 = load i64, i64* %16, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @mem_clean(i32* %125, i32 %127)
  br label %129

129:                                              ; preds = %124, %115
  %130 = mul nuw i64 4, %33
  %131 = trunc i64 %130 to i32
  %132 = call i32 @mem_clean(i32* %35, i32 %131)
  %133 = mul nuw i64 4, %86
  %134 = trunc i64 %133 to i32
  %135 = call i32 @mem_clean(i32* %87, i32 %134)
  %136 = load i32, i32* %31, align 4
  %137 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %137)
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @build_ctr_nonce(i32*, i64, i32*, i64) #2

declare dso_local i32 @cf_ctr_init(i32*, %struct.TYPE_5__*, i8*, i32*) #2

declare dso_local i32 @cf_ctr_custom_counter(i32*, i64, i64) #2

declare dso_local i32 @cf_ctr_cipher(i32*, i32*, i32*, i64) #2

declare dso_local i32 @cf_ctr_discard_block(i32*) #2

declare dso_local i32 @cf_cbcmac_stream_init(i32*, %struct.TYPE_5__*, i8*) #2

declare dso_local i32 @add_block0(i32*, i32*, i64, i32*, i64, i64, i64, i64, i64) #2

declare dso_local i32 @add_aad(i32*, i32*, i32*, i64) #2

declare dso_local i32 @cf_cbcmac_stream_update(i32*, i32*, i64) #2

declare dso_local i32 @zero_pad(i32*) #2

declare dso_local i32 @cf_cbcmac_stream_nopad_final(i32*, i32*) #2

declare dso_local i32 @mem_eq(i32*, i32*, i64) #2

declare dso_local i32 @mem_clean(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
