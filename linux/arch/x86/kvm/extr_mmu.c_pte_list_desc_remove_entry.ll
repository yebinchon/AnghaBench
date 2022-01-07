; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_pte_list_desc_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_pte_list_desc_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_rmap_head = type { i64 }
%struct.pte_list_desc = type { i64, i32** }

@PTE_LIST_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_rmap_head*, %struct.pte_list_desc*, i32, %struct.pte_list_desc*)* @pte_list_desc_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pte_list_desc_remove_entry(%struct.kvm_rmap_head* %0, %struct.pte_list_desc* %1, i32 %2, %struct.pte_list_desc* %3) #0 {
  %5 = alloca %struct.kvm_rmap_head*, align 8
  %6 = alloca %struct.pte_list_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pte_list_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_rmap_head* %0, %struct.kvm_rmap_head** %5, align 8
  store %struct.pte_list_desc* %1, %struct.pte_list_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pte_list_desc* %3, %struct.pte_list_desc** %8, align 8
  %10 = load i32, i32* @PTE_LIST_EXT, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %28, %4
  %13 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %14 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i1 [ false, %12 ], [ %24, %21 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  br label %12

31:                                               ; preds = %25
  %32 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %33 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %40 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* %38, i32** %44, align 8
  %45 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %46 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %91

54:                                               ; preds = %31
  %55 = load %struct.pte_list_desc*, %struct.pte_list_desc** %8, align 8
  %56 = icmp ne %struct.pte_list_desc* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %59 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %64 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = ptrtoint i32* %67 to i64
  %69 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %88

71:                                               ; preds = %57, %54
  %72 = load %struct.pte_list_desc*, %struct.pte_list_desc** %8, align 8
  %73 = icmp ne %struct.pte_list_desc* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %76 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pte_list_desc*, %struct.pte_list_desc** %8, align 8
  %79 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %87

80:                                               ; preds = %71
  %81 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %82 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, 1
  %85 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %5, align 8
  %86 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %62
  %89 = load %struct.pte_list_desc*, %struct.pte_list_desc** %6, align 8
  %90 = call i32 @mmu_free_pte_list_desc(%struct.pte_list_desc* %89)
  br label %91

91:                                               ; preds = %88, %53
  ret void
}

declare dso_local i32 @mmu_free_pte_list_desc(%struct.pte_list_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
