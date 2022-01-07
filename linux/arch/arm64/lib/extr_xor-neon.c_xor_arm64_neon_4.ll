; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xor_arm64_neon_4(i64 %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = bitcast i64* %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = bitcast i64* %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = bitcast i64* %24 to i32*
  store i32* %25, i32** %13, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = bitcast i64* %26 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load i64, i64* %6, align 8
  %29 = udiv i64 %28, 16
  store i64 %29, i64* %19, align 8
  br label %30

30:                                               ; preds = %123, %5
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @vld1q_u64(i32* %32)
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @vld1q_u64(i32* %35)
  %37 = call i32 @veorq_u64(i32 %33, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = call i32 @vld1q_u64(i32* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = call i32 @vld1q_u64(i32* %42)
  %44 = call i32 @veorq_u64(i32 %40, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = call i32 @vld1q_u64(i32* %46)
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = call i32 @vld1q_u64(i32* %49)
  %51 = call i32 @veorq_u64(i32 %47, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = call i32 @vld1q_u64(i32* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = call i32 @vld1q_u64(i32* %56)
  %58 = call i32 @veorq_u64(i32 %54, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @vld1q_u64(i32* %61)
  %63 = call i32 @veorq_u64(i32 %59, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = call i32 @vld1q_u64(i32* %66)
  %68 = call i32 @veorq_u64(i32 %64, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = call i32 @vld1q_u64(i32* %71)
  %73 = call i32 @veorq_u64(i32 %69, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = call i32 @vld1q_u64(i32* %76)
  %78 = call i32 @veorq_u64(i32 %74, i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i32 @vld1q_u64(i32* %81)
  %83 = call i32 @veorq_u64(i32 %79, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = call i32 @vld1q_u64(i32* %86)
  %88 = call i32 @veorq_u64(i32 %84, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = call i32 @vld1q_u64(i32* %91)
  %93 = call i32 @veorq_u64(i32 %89, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 6
  %97 = call i32 @vld1q_u64(i32* %96)
  %98 = call i32 @veorq_u64(i32 %94, i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @vst1q_u64(i32* %100, i32 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @vst1q_u64(i32* %104, i32 %105)
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @vst1q_u64(i32* %108, i32 %109)
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @vst1q_u64(i32* %112, i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 8
  store i32* %116, i32** %11, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  store i32* %118, i32** %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  store i32* %120, i32** %13, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 8
  store i32* %122, i32** %14, align 8
  br label %123

123:                                              ; preds = %30
  %124 = load i64, i64* %19, align 8
  %125 = add nsw i64 %124, -1
  store i64 %125, i64* %19, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %30, label %127

127:                                              ; preds = %123
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
