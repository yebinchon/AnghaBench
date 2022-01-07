; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tea.c_tea_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tea.c_tea_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.tea_ctx = type { i32* }

@TEA_ROUNDS = common dso_local global i32 0, align 4
@TEA_DELTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @tea_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tea_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tea_ctx*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %19 = call %struct.tea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %18)
  store %struct.tea_ctx* %19, %struct.tea_ctx** %15, align 8
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %16, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.tea_ctx*, %struct.tea_ctx** %15, align 8
  %31 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.tea_ctx*, %struct.tea_ctx** %15, align 8
  %36 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.tea_ctx*, %struct.tea_ctx** %15, align 8
  %41 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.tea_ctx*, %struct.tea_ctx** %15, align 8
  %46 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* @TEA_ROUNDS, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %55, %3
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i64, i64* @TEA_DELTA, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  %68 = xor i32 %64, %67
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 5
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = xor i32 %68, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 %76, 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = xor i32 %79, %82
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 5
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %85, %86
  %88 = xor i32 %83, %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %51

91:                                               ; preds = %51
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @cpu_to_le32(i32 %92)
  %94 = load i32*, i32** %17, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @cpu_to_le32(i32 %96)
  %98 = load i32*, i32** %17, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %97, i32* %99, align 4
  ret void
}

declare dso_local %struct.tea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
