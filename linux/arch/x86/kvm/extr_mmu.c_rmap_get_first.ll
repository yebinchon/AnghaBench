; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_get_first.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_rmap_head = type { i32 }
%struct.rmap_iterator = type { i64, %struct.pte_list_desc* }
%struct.pte_list_desc = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kvm_rmap_head*, %struct.rmap_iterator*)* @rmap_get_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rmap_get_first(%struct.kvm_rmap_head* %0, %struct.rmap_iterator* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.kvm_rmap_head*, align 8
  %5 = alloca %struct.rmap_iterator*, align 8
  %6 = alloca i32*, align 8
  store %struct.kvm_rmap_head* %0, %struct.kvm_rmap_head** %4, align 8
  store %struct.rmap_iterator* %1, %struct.rmap_iterator** %5, align 8
  %7 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.rmap_iterator*, %struct.rmap_iterator** %5, align 8
  %20 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %19, i32 0, i32 1
  store %struct.pte_list_desc* null, %struct.pte_list_desc** %20, align 8
  %21 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %6, align 8
  br label %47

26:                                               ; preds = %12
  %27 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, -2
  %32 = inttoptr i64 %31 to %struct.pte_list_desc*
  %33 = load %struct.rmap_iterator*, %struct.rmap_iterator** %5, align 8
  %34 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %33, i32 0, i32 1
  store %struct.pte_list_desc* %32, %struct.pte_list_desc** %34, align 8
  %35 = load %struct.rmap_iterator*, %struct.rmap_iterator** %5, align 8
  %36 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.rmap_iterator*, %struct.rmap_iterator** %5, align 8
  %38 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %37, i32 0, i32 1
  %39 = load %struct.pte_list_desc*, %struct.pte_list_desc** %38, align 8
  %40 = getelementptr inbounds %struct.pte_list_desc, %struct.pte_list_desc* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load %struct.rmap_iterator*, %struct.rmap_iterator** %5, align 8
  %43 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %26, %18
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @is_shadow_present_pte(i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %47, %11
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_shadow_present_pte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
