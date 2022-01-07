; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_5.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/lib/extr_xor-neon.c_xor_arm64_neon_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xor_arm64_neon_5(i64 %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = bitcast i64* %23 to i32*
  store i32* %24, i32** %13, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = bitcast i64* %25 to i32*
  store i32* %26, i32** %14, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = bitcast i64* %27 to i32*
  store i32* %28, i32** %15, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = bitcast i64* %29 to i32*
  store i32* %30, i32** %16, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = bitcast i64* %31 to i32*
  store i32* %32, i32** %17, align 8
  %33 = load i64, i64* %7, align 8
  %34 = udiv i64 %33, 16
  store i64 %34, i64* %22, align 8
  br label %35

35:                                               ; preds = %150, %6
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @vld1q_u64(i32* %37)
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @vld1q_u64(i32* %40)
  %42 = call i32 @veorq_u64(i32 %38, i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32 @vld1q_u64(i32* %44)
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = call i32 @vld1q_u64(i32* %47)
  %49 = call i32 @veorq_u64(i32 %45, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = call i32 @vld1q_u64(i32* %51)
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = call i32 @vld1q_u64(i32* %54)
  %56 = call i32 @veorq_u64(i32 %52, i32 %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = call i32 @vld1q_u64(i32* %58)
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = call i32 @vld1q_u64(i32* %61)
  %63 = call i32 @veorq_u64(i32 %59, i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i32 @vld1q_u64(i32* %66)
  %68 = call i32 @veorq_u64(i32 %64, i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = call i32 @vld1q_u64(i32* %71)
  %73 = call i32 @veorq_u64(i32 %69, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = call i32 @vld1q_u64(i32* %76)
  %78 = call i32 @veorq_u64(i32 %74, i32 %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = call i32 @vld1q_u64(i32* %81)
  %83 = call i32 @veorq_u64(i32 %79, i32 %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @vld1q_u64(i32* %86)
  %88 = call i32 @veorq_u64(i32 %84, i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = call i32 @vld1q_u64(i32* %91)
  %93 = call i32 @veorq_u64(i32 %89, i32 %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = call i32 @vld1q_u64(i32* %96)
  %98 = call i32 @veorq_u64(i32 %94, i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = call i32 @vld1q_u64(i32* %101)
  %103 = call i32 @veorq_u64(i32 %99, i32 %102)
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32*, i32** %17, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i32 @vld1q_u64(i32* %106)
  %108 = call i32 @veorq_u64(i32 %104, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32*, i32** %17, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = call i32 @vld1q_u64(i32* %111)
  %113 = call i32 @veorq_u64(i32 %109, i32 %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32*, i32** %17, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = call i32 @vld1q_u64(i32* %116)
  %118 = call i32 @veorq_u64(i32 %114, i32 %117)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32*, i32** %17, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = call i32 @vld1q_u64(i32* %121)
  %123 = call i32 @veorq_u64(i32 %119, i32 %122)
  store i32 %123, i32* %21, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @vst1q_u64(i32* %125, i32 %126)
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @vst1q_u64(i32* %129, i32 %130)
  %132 = load i32*, i32** %13, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @vst1q_u64(i32* %133, i32 %134)
  %136 = load i32*, i32** %13, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32, i32* %21, align 4
  %139 = call i32 @vst1q_u64(i32* %137, i32 %138)
  %140 = load i32*, i32** %13, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 8
  store i32* %141, i32** %13, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 8
  store i32* %143, i32** %14, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 8
  store i32* %145, i32** %15, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  store i32* %147, i32** %16, align 8
  %148 = load i32*, i32** %17, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  store i32* %149, i32** %17, align 8
  br label %150

150:                                              ; preds = %35
  %151 = load i64, i64* %22, align 8
  %152 = add nsw i64 %151, -1
  store i64 %152, i64* %22, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %35, label %154

154:                                              ; preds = %150
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
