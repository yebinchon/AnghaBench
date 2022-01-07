; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_glimp.c_GLimp_CompareModes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_glimp.c_GLimp_CompareModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@displayAspect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @GLimp_CompareModes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GLimp_CompareModes(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store float 0x3F50624DE0000000, float* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %8, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sitofp i32 %22 to float
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %23, %27
  store float %28, float* %9, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sitofp i32 %31 to float
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %32, %36
  store float %37, float* %10, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load float, float* %9, align 4
  %53 = load i64, i64* @displayAspect, align 8
  %54 = sitofp i64 %53 to float
  %55 = fsub float %52, %54
  %56 = fptosi float %55 to i64
  %57 = call float @fabs(i64 %56)
  store float %57, float* %13, align 4
  %58 = load float, float* %10, align 4
  %59 = load i64, i64* @displayAspect, align 8
  %60 = sitofp i64 %59 to float
  %61 = fsub float %58, %60
  %62 = fptosi float %61 to i64
  %63 = call float @fabs(i64 %62)
  store float %63, float* %14, align 4
  %64 = load float, float* %13, align 4
  %65 = load float, float* %14, align 4
  %66 = fsub float %64, %65
  store float %66, float* %15, align 4
  %67 = load float, float* %15, align 4
  %68 = fcmp ogt float %67, 0x3F50624DE0000000
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %78

70:                                               ; preds = %2
  %71 = load float, float* %15, align 4
  %72 = fcmp olt float %71, 0xBF50624DE0000000
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %73, %69
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local float @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
