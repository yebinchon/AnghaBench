; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xor_arm64_neon_3(i64 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = bitcast i64* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = bitcast i64* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = bitcast i64* %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i64, i64* %5, align 8
  %24 = udiv i64 %23, 16
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %96, %4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @vld1q_u64(i32* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @vld1q_u64(i32* %30)
  %32 = call i32 @veorq_u64(i32 %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = call i32 @vld1q_u64(i32* %34)
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call i32 @vld1q_u64(i32* %37)
  %39 = call i32 @veorq_u64(i32 %35, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = call i32 @vld1q_u64(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = call i32 @vld1q_u64(i32* %44)
  %46 = call i32 @veorq_u64(i32 %42, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = call i32 @vld1q_u64(i32* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  %52 = call i32 @vld1q_u64(i32* %51)
  %53 = call i32 @veorq_u64(i32 %49, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @vld1q_u64(i32* %56)
  %58 = call i32 @veorq_u64(i32 %54, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = call i32 @vld1q_u64(i32* %61)
  %63 = call i32 @veorq_u64(i32 %59, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i32 @vld1q_u64(i32* %66)
  %68 = call i32 @veorq_u64(i32 %64, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  %72 = call i32 @vld1q_u64(i32* %71)
  %73 = call i32 @veorq_u64(i32 %69, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @vst1q_u64(i32* %75, i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @vst1q_u64(i32* %79, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @vst1q_u64(i32* %83, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @vst1q_u64(i32* %87, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32* %95, i32** %11, align 8
  br label %96

96:                                               ; preds = %25
  %97 = load i64, i64* %16, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %16, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %25, label %100

100:                                              ; preds = %96
  ret void
}

declare dso_local i32 @veorq_u64(i32, i32) #1

declare dso_local i32 @vld1q_u64(i32*) #1

declare dso_local i32 @vst1q_u64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
