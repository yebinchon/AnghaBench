; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_update_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_update_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.shash_desc*, i32*, i32)* }

@MAX_ALGAPI_ALIGNMASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @shash_update_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_update_unaligned(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.shash_alg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %18 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %17, i32 0, i32 0
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  store %struct.crypto_shash* %19, %struct.crypto_shash** %8, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %21 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %20)
  store %struct.shash_alg* %21, %struct.shash_alg** %9, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %23 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, 1
  %26 = load i32*, i32** %6, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = load i64, i64* %10, align 8
  %29 = and i64 %27, %28
  %30 = sub i64 %25, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @MAX_ALGAPI_ALIGNMASK, align 4
  %33 = mul nsw i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  %40 = call i32* @PTR_ALIGN(i32* %37, i64 %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = mul nuw i64 4, %34
  %46 = getelementptr inbounds i32, i32* %36, i64 %45
  %47 = icmp ugt i32* %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

54:                                               ; preds = %3
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @memcpy(i32* %61, i32* %62, i32 %63)
  %65 = load %struct.shash_alg*, %struct.shash_alg** %9, align 8
  %66 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %65, i32 0, i32 0
  %67 = load i32 (%struct.shash_desc*, i32*, i32)*, i32 (%struct.shash_desc*, i32*, i32)** %66, align 8
  %68 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 %67(%struct.shash_desc* %68, i32* %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @memset(i32* %72, i32 0, i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %91

78:                                               ; preds = %60
  %79 = load %struct.shash_alg*, %struct.shash_alg** %9, align 8
  %80 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %79, i32 0, i32 0
  %81 = load i32 (%struct.shash_desc*, i32*, i32)*, i32 (%struct.shash_desc*, i32*, i32)** %80, align 8
  %82 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub i32 %87, %88
  %90 = call i32 %81(%struct.shash_desc* %82, i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %78, %77
  %92 = phi i32 [ %75, %77 ], [ %90, %78 ]
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %91, %51
  %94 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

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
