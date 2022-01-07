; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_i8237.c_i8237A_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_i8237.c_i8237A_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA1_RESET_REG = common dso_local global i32 0, align 4
@DMA2_RESET_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i8237A_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8237A_resume() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @claim_dma_lock()
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @DMA1_RESET_REG, align 4
  %5 = call i32 @dma_outb(i32 0, i32 %4)
  %6 = load i32, i32* @DMA2_RESET_REG, align 4
  %7 = call i32 @dma_outb(i32 0, i32 %6)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %16, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @set_dma_addr(i32 %12, i32 0)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @set_dma_count(i32 %14, i32 1)
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %8

19:                                               ; preds = %8
  %20 = call i32 @enable_dma(i32 4)
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @release_dma_lock(i64 %21)
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @dma_outb(i32, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
