; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_alloc_flag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_alloc_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flags_free = common dso_local global i32 0, align 4
@MAX_FLAGS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pasemi_dma_alloc_flag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* @flags_free, align 4
  %5 = load i32, i32* @MAX_FLAGS, align 4
  %6 = call i32 @find_next_bit(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MAX_FLAGS, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @flags_free, align 4
  %16 = call i32 @test_and_clear_bit(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %3

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
