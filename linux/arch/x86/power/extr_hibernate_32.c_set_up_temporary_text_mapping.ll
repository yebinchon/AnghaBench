; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_32.c_set_up_temporary_text_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_32.c_set_up_temporary_text_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@restore_jump_address = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@X86_FEATURE_PSE = common dso_local global i32 0, align 4
@jump_address_phys = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i32 0, align 4
@PAGE_KERNEL_LARGE_EXEC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @set_up_temporary_text_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_temporary_text_mapping(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @restore_jump_address, align 4
  %9 = call i32 @pgd_index(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @resume_one_md_table_init(i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load i32, i32* @X86_FEATURE_PSE, align 4
  %21 = call i64 @boot_cpu_has(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @restore_jump_address, align 4
  %26 = call i32 @pmd_index(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* @jump_address_phys, align 4
  %30 = load i32, i32* @PMD_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @PAGE_KERNEL_LARGE_EXEC, align 4
  %33 = call i32 @pgprot_val(i32 %32)
  %34 = or i32 %31, %33
  %35 = call i32 @__pmd(i32 %34)
  %36 = call i32 @set_pmd(i32* %28, i32 %35)
  br label %59

37:                                               ; preds = %19
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @resume_one_page_table_init(i32* %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @restore_jump_address, align 4
  %48 = call i32 @pte_index(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* @jump_address_phys, align 4
  %52 = load i32, i32* @PAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %55 = call i32 @pgprot_val(i32 %54)
  %56 = or i32 %53, %55
  %57 = call i32 @__pte(i32 %56)
  %58 = call i32 @set_pte(i32* %50, i32 %57)
  br label %59

59:                                               ; preds = %45, %23
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %42, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pgd_index(i32) #1

declare dso_local i32* @resume_one_md_table_init(i32*) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @pmd_index(i32) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32* @resume_one_page_table_init(i32*) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pte_index(i32) #1

declare dso_local i32 @__pte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
