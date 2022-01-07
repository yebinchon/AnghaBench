; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_physaddr.c___virt_addr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_physaddr.c___virt_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@high_memory = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@MAX_DMA_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__virt_addr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__virt_addr_valid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* @high_memory, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @PAGE_OFFSET, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %29

11:                                               ; preds = %6, %1
  %12 = load i64, i64* @high_memory, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PAGE_OFFSET, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @high_memory, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %29

23:                                               ; preds = %18, %14, %11
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @MAX_DMA_ADDRESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %22, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
