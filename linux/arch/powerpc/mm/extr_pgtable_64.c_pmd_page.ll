; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable_64.c_pmd_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable_64.c_pmd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @pmd_page(i32 %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pmd_is_leaf(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pmd_large(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pmd_huge(i32 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @VM_WARN_ON(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pmd_pte(i32 %20)
  %22 = call %struct.page* @pte_page(i32 %21)
  store %struct.page* %22, %struct.page** %2, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pmd_page_vaddr(i32 %24)
  %26 = call %struct.page* @virt_to_page(i32 %25)
  store %struct.page* %26, %struct.page** %2, align 8
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %28
}

declare dso_local i64 @pmd_is_leaf(i32) #1

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i64 @pmd_huge(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @pmd_pte(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @pmd_page_vaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
