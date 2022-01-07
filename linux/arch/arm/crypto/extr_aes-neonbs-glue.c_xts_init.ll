; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_xts_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_xts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.aesbs_xts_ctx = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @xts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.aesbs_xts_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %6 = call %struct.aesbs_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.aesbs_xts_ctx* %6, %struct.aesbs_xts_ctx** %4, align 8
  %7 = call i8* @crypto_alloc_cipher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %8 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @IS_ERR(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @PTR_ERR(i8* %18)
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = call i8* @crypto_alloc_cipher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %22 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @crypto_free_cipher(i8* %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR_OR_ZERO(i8* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.aesbs_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i8* @crypto_alloc_cipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @crypto_free_cipher(i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
