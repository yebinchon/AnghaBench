; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_disallowed_hugepage_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_disallowed_hugepage_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_shadow_walk_iterator = type { i32*, i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*)* @disallowed_hugepage_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disallowed_hugepage_adjust(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.kvm_shadow_walk_iterator, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.kvm_shadow_walk_iterator* %6 to { i32*, i32 }*
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %13, i32 0, i32 0
  store i32* %0, i32** %14, align 8
  %15 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %13, i32 0, i32 1
  store i32 %1, i32* %15, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* %4, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = call i64 (...) @is_nx_huge_page_enabled()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @is_shadow_present_pte(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @is_large_pte(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @KVM_PAGES_PER_HPAGE(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @KVM_PAGES_PER_HPAGE(i32 %44)
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %47, %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %40, %36, %32, %29, %25, %5
  ret void
}

declare dso_local i64 @is_nx_huge_page_enabled(...) #1

declare dso_local i64 @is_shadow_present_pte(i32) #1

declare dso_local i32 @is_large_pte(i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
