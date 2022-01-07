; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_hugetlbpage.c_huge_ptep_modify_prot_commit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_hugetlbpage.c_huge_ptep_modify_prot_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huge_ptep_modify_prot_commit(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i64 (...) @radix_enabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  call void @radix__huge_ptep_modify_prot_commit(%struct.vm_area_struct* %14, i64 %15, i32* %16, i32 %17, i32 %18)
  br label %27

19:                                               ; preds = %5
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @set_huge_pte_at(i32 %22, i64 %23, i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @radix_enabled(...) #1

declare dso_local void @radix__huge_ptep_modify_prot_commit(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @set_huge_pte_at(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
