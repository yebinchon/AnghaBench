; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_arch_make_huge_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_hugetlbpage.c_arch_make_huge_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@VM_SPARC_ADI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_make_huge_pte(i32 %0, %struct.vm_area_struct* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = call i32 @hstate_vma(%struct.vm_area_struct* %11)
  %13 = call i32 @huge_page_shift(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @hugepage_shift_to_tte(i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  ret i32 %17
}

declare dso_local i32 @huge_page_shift(i32) #1

declare dso_local i32 @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @hugepage_shift_to_tte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
