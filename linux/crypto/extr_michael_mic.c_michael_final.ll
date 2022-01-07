; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_michael_mic.c_michael_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_michael_mic.c_michael_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.michael_mic_desc_ctx = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @michael_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @michael_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.michael_mic_desc_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %9 = call %struct.michael_mic_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %8)
  store %struct.michael_mic_desc_ctx* %9, %struct.michael_mic_desc_ctx** %5, align 8
  %10 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %64 [
    i32 0, label %17
    i32 1, label %22
    i32 2, label %31
    i32 3, label %45
  ]

17:                                               ; preds = %2
  %18 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, 90
  store i32 %21, i32* %19, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 23040
  %27 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = or i32 %39, 5898240
  %41 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %64

45:                                               ; preds = %2
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %48, %52
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %53, %57
  %59 = or i32 %58, 1509949440
  %60 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %2, %45, %31, %22, %17
  %65 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @michael_block(i32 %67, i32 %70)
  %72 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %76 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @michael_block(i32 %74, i32 %77)
  %79 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @cpu_to_le32(i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  ret i32 0
}

declare dso_local %struct.michael_mic_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @michael_block(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
