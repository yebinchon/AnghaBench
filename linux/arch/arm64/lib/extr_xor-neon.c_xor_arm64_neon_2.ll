; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xor_arm64_neon_2(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = bitcast i64* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = bitcast i64* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = udiv i64 %18, 16
  store i64 %19, i64* %13, align 8
  br label %20

20:                                               ; preds = %69, %3
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @vld1q_u64(i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i32 @vld1q_u64(i32* %25)
  %27 = call i32 @veorq_u64(i32 %23, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i32 @vld1q_u64(i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = call i32 @vld1q_u64(i32* %32)
  %34 = call i32 @veorq_u64(i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = call i32 @vld1q_u64(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = call i32 @vld1q_u64(i32* %39)
  %41 = call i32 @veorq_u64(i32 %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  %44 = call i32 @vld1q_u64(i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  %47 = call i32 @vld1q_u64(i32* %46)
  %48 = call i32 @veorq_u64(i32 %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @vst1q_u64(i32* %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @vst1q_u64(i32* %54, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @vst1q_u64(i32* %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @vst1q_u64(i32* %62, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %20
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %13, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %20, label %73

73:                                               ; preds = %69
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
