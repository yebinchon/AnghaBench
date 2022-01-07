; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hibernate.c_copy_pud.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hibernate.c_copy_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PMD_SECT_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64)* @copy_pud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_pud(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @READ_ONCE(i32 %17)
  %19 = call i64 @pgd_none(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i64 @get_safe_page(i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %87

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @pgd_populate(i32* @init_mm, i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32* @pud_offset(i32* %35, i64 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32* @pud_offset(i32* %38, i64 %39)
  store i32* %40, i32** %11, align 8
  br label %41

41:                                               ; preds = %77, %34
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @READ_ONCE(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @pud_addr_end(i64 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @pud_none(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %77

52:                                               ; preds = %41
  %53 = load i32, i32* %14, align 4
  %54 = call i64 @pud_table(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @copy_pmd(i32* %57, i32* %58, i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %56
  br label %76

67:                                               ; preds = %52
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @pud_val(i32 %69)
  %71 = load i32, i32* @PMD_SECT_RDONLY, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @__pud(i32 %73)
  %75 = call i32 @set_pud(i32* %68, i32 %74)
  br label %76

76:                                               ; preds = %67, %66
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %11, align 8
  %82 = load i64, i64* %12, align 8
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %41, label %86

86:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %63, %27
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @pgd_populate(i32*, i32*, i32*) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_table(i32) #1

declare dso_local i64 @copy_pmd(i32*, i32*, i64, i64) #1

declare dso_local i32 @set_pud(i32*, i32) #1

declare dso_local i32 @__pud(i32) #1

declare dso_local i32 @pud_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
