; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable_64.c_pud_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable_64.c_pud_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @pud_page(i32 %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pud_is_leaf(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pud_huge(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @VM_WARN_ON(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pud_pte(i32 %14)
  %16 = call %struct.page* @pte_page(i32 %15)
  store %struct.page* %16, %struct.page** %2, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pud_page_vaddr(i32 %18)
  %20 = call %struct.page* @virt_to_page(i32 %19)
  store %struct.page* %20, %struct.page** %2, align 8
  br label %21

21:                                               ; preds = %17, %7
  %22 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %22
}

declare dso_local i64 @pud_is_leaf(i32) #1

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i32 @pud_huge(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @pud_pte(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @pud_page_vaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
