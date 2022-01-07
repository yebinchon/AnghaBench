; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mem.c_ResampleSfxRaw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mem.c_ResampleSfxRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }

@dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i32, i32, i32, i32, i32*)* @ResampleSfxRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResampleSfxRaw(i16* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i16* %0, i16** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sitofp i32 %21 to float
  %23 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 4
  %24 = fdiv float %22, %23
  store float %24, float* %15, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sitofp i32 %25 to float
  %27 = load float, float* %15, align 4
  %28 = fdiv float %26, %27
  %29 = fptosi float %28 to i32
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %30 = load float, float* %15, align 4
  %31 = fmul float %30, 2.560000e+02
  %32 = load i32, i32* %8, align 4
  %33 = sitofp i32 %32 to float
  %34 = fmul float %31, %33
  %35 = fptosi float %34 to i32
  store i32 %35, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %94, %6
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load i32, i32* %19, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %19, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %90, %40
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = bitcast i32* %58 to i16*
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %59, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = call i32 @LittleShort(i16 signext %65)
  store i32 %66, i32* %18, align 4
  br label %79

67:                                               ; preds = %54
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 %76, 128
  %78 = shl i32 %77, 8
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %67, %57
  %80 = load i32, i32* %18, align 4
  %81 = trunc i32 %80 to i16
  %82 = load i16*, i16** %7, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %82, i64 %88
  store i16 %81, i16* %89, align 2
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %50

93:                                               ; preds = %50
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local i32 @LittleShort(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
