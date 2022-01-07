; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tea.c_xtea_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tea.c_xtea_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.tea_ctx = type { i32* }

@XTEA_DELTA = common dso_local global i32 0, align 4
@XTEA_ROUNDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @xtea_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtea_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tea_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = call %struct.tea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.tea_ctx* %14, %struct.tea_ctx** %10, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @XTEA_DELTA, align 4
  %26 = load i32, i32* @XTEA_ROUNDS, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %31, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 5
  %36 = xor i32 %33, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.tea_ctx*, %struct.tea_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 11
  %45 = and i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %39, %48
  %50 = xor i32 %38, %49
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @XTEA_DELTA, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 5
  %60 = xor i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.tea_ctx*, %struct.tea_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %63, %71
  %73 = xor i32 %62, %72
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %28

76:                                               ; preds = %28
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
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
