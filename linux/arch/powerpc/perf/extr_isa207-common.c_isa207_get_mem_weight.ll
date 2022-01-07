; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_get_mem_weight.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_get_mem_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_MMCRA = common dso_local global i32 0, align 4
@SPRN_SIER = common dso_local global i32 0, align 4
@ISA207_SIER_TYPE_MASK = common dso_local global i32 0, align 4
@ISA207_SIER_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa207_get_mem_weight(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @SPRN_MMCRA, align 4
  %9 = call i32 @mfspr(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @MMCRA_THR_CTR_EXP(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MMCRA_THR_CTR_MANT(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @SPRN_SIER, align 4
  %15 = call i32 @mfspr(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ISA207_SIER_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @ISA207_SIER_TYPE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %1
  %27 = load i32*, i32** %2, align 8
  store i32 0, i32* %27, align 4
  br label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 2, %30
  %32 = shl i32 %29, %31
  %33 = load i32*, i32** %2, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @MMCRA_THR_CTR_EXP(i32) #1

declare dso_local i32 @MMCRA_THR_CTR_MANT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
