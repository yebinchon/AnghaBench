; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_page_table_set_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_page_table_set_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_TABLE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i64)* @machine_kexec_page_table_set_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine_kexec_page_table_set_one(i32* %0, i32* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @pgd_index(i64 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32* @p4d_offset(i32* %18, i64 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32* @pud_offset(i32* %21, i64 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32* @pmd_offset(i32* %24, i64 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pmd_val(i32 %28)
  %30 = load i32, i32* @_PAGE_PRESENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @__pa(i32* %35)
  %37 = load i32, i32* @_PAGE_TABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @__pmd(i32 %38)
  %40 = call i32 @set_pmd(i32* %34, i32 %39)
  br label %41

41:                                               ; preds = %33, %5
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @pte_offset_kernel(i32* %42, i64 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = lshr i64 %46, %47
  %49 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %50 = call i32 @pfn_pte(i64 %48, i32 %49)
  %51 = call i32 @set_pte(i32* %45, i32 %50)
  ret void
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
