; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c_xts_paes_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c_xts_paes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_pxts_ctx = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@PKEY_KEYTYPE_AES_128 = common dso_local global i64 0, align 8
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @xts_paes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_paes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s390_pxts_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %16 = call %struct.s390_pxts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.s390_pxts_ctx* %16, %struct.s390_pxts_ctx** %9, align 8
  %17 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = urem i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = udiv i32 %29, 2
  store i32 %30, i32* %13, align 4
  %31 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @_free_kb_keybuf(i32* %34)
  %36 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i32 @_free_kb_keybuf(i32* %39)
  %41 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @_copy_key_to_kb(i32* %44, i32* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

52:                                               ; preds = %28
  %53 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @_copy_key_to_kb(i32* %56, i32* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

67:                                               ; preds = %52
  %68 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %69 = call i64 @__xts_paes_set_key(%struct.s390_pxts_ctx* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %73 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %74 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

79:                                               ; preds = %67
  %80 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %81 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PKEY_KEYTYPE_AES_128, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @AES_KEYSIZE_128, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @AES_KEYSIZE_256, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %12, align 4
  %94 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %95 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @memcpy(i32* %21, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %21, i64 %103
  %105 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @memcpy(i32* %104, i32 %110, i32 %111)
  %113 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %114 = load i32, i32* %12, align 4
  %115 = mul i32 2, %114
  %116 = call i32 @xts_check_key(%struct.crypto_tfm* %113, i32* %21, i32 %115)
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

117:                                              ; preds = %92, %71, %65, %50, %25
  %118 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.s390_pxts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_free_kb_keybuf(i32*) #1

declare dso_local i32 @_copy_key_to_kb(i32*, i32*, i32) #1

declare dso_local i64 @__xts_paes_set_key(%struct.s390_pxts_ctx*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @xts_check_key(%struct.crypto_tfm*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
