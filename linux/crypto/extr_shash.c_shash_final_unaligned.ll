; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_final_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_final_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.shash_desc*, i32*)* }

@MAX_ALGAPI_ALIGNMASK = common dso_local global i32 0, align 4
@HASH_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @shash_final_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_final_unaligned(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.shash_alg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %16 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %15, i32 0, i32 0
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  store %struct.crypto_shash* %17, %struct.crypto_shash** %6, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %19 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %21 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %20)
  store %struct.shash_alg* %21, %struct.shash_alg** %8, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %23 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @MAX_ALGAPI_ALIGNMASK, align 4
  %25 = load i32, i32* @HASH_MAX_DIGESTSIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  %33 = call i32* @PTR_ALIGN(i32* %30, i64 %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = mul nuw i64 4, %27
  %39 = getelementptr inbounds i32, i32* %29, i64 %38
  %40 = icmp ugt i32* %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %67

47:                                               ; preds = %2
  %48 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %49 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %48, i32 0, i32 0
  %50 = load i32 (%struct.shash_desc*, i32*)*, i32 (%struct.shash_desc*, i32*)** %49, align 8
  %51 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 %50(%struct.shash_desc* %51, i32* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %62

57:                                               ; preds = %47
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memset(i32* %63, i32 0, i32 %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %62, %44
  %68 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
