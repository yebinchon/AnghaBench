; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_book3e_hugetlbpage.c_flush_hugetlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_book3e_hugetlbpage.c_flush_hugetlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.hstate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_hugetlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hstate*, align 8
  %6 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hstate* @hstate_file(i32 %9)
  store %struct.hstate* %10, %struct.hstate** %5, align 8
  %11 = load %struct.hstate*, %struct.hstate** %5, align 8
  %12 = call i32 @huge_page_shift(%struct.hstate* %11)
  %13 = sub nsw i32 %12, 10
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @__flush_tlb_page(i32 %17, i64 %18, i64 %19, i32 0)
  ret void
}

declare dso_local %struct.hstate* @hstate_file(i32) #1

declare dso_local i32 @huge_page_shift(%struct.hstate*) #1

declare dso_local i32 @__flush_tlb_page(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
