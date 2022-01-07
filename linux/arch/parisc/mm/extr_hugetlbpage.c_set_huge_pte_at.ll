; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/mm/extr_hugetlbpage.c_set_huge_pte_at.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/mm/extr_hugetlbpage.c_set_huge_pte_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_huge_pte_at(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pgd_spinlock(i32 %12)
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @__set_huge_pte_at(%struct.mm_struct* %16, i64 %17, i32* %18, i32 %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pgd_spinlock(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32 %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pgd_spinlock(i32) #1

declare dso_local i32 @__set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
