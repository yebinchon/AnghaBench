; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate.c_relocate_restore_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate.c_relocate_restore_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@relocated_restore_code = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@core_restore_code = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@_PAGE_NX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relocate_restore_code() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i64 @get_safe_page(i32 %7)
  store i64 %8, i64* @relocated_restore_code, align 8
  %9 = load i64, i64* @relocated_restore_code, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %95

14:                                               ; preds = %0
  %15 = load i64, i64* @relocated_restore_code, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* @core_restore_code, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @memcpy(i8* %16, i32 %17, i32 %18)
  %20 = call i32 (...) @read_cr3_pa()
  %21 = call i64 @__va(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load i64, i64* @relocated_restore_code, align 8
  %24 = call i32 @pgd_index(i64 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %2, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* @relocated_restore_code, align 8
  %29 = call i32* @p4d_offset(i32* %27, i64 %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @p4d_large(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %14
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @p4d_val(i32 %37)
  %39 = load i32, i32* @_PAGE_NX, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @__p4d(i32 %41)
  %43 = call i32 @set_p4d(i32* %35, i32 %42)
  br label %93

44:                                               ; preds = %14
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @relocated_restore_code, align 8
  %47 = call i32* @pud_offset(i32* %45, i64 %46)
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pud_large(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pud_val(i32 %55)
  %57 = load i32, i32* @_PAGE_NX, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @__pud(i32 %59)
  %61 = call i32 @set_pud(i32* %53, i32 %60)
  br label %93

62:                                               ; preds = %44
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* @relocated_restore_code, align 8
  %65 = call i32* @pmd_offset(i32* %63, i64 %64)
  store i32* %65, i32** %5, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @pmd_large(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pmd_val(i32 %73)
  %75 = load i32, i32* @_PAGE_NX, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @__pmd(i32 %77)
  %79 = call i32 @set_pmd(i32* %71, i32 %78)
  br label %93

80:                                               ; preds = %62
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* @relocated_restore_code, align 8
  %83 = call i32* @pte_offset_kernel(i32* %81, i64 %82)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pte_val(i32 %86)
  %88 = load i32, i32* @_PAGE_NX, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @__pte(i32 %90)
  %92 = call i32 @set_pte(i32* %84, i32 %91)
  br label %93

93:                                               ; preds = %80, %70, %52, %34
  %94 = call i32 (...) @__flush_tlb_all()
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %93, %11
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @read_cr3_pa(...) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_large(i32) #1

declare dso_local i32 @set_p4d(i32*, i32) #1

declare dso_local i32 @__p4d(i32) #1

declare dso_local i32 @p4d_val(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32 @set_pud(i32*, i32) #1

declare dso_local i32 @__pud(i32) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @__flush_tlb_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
