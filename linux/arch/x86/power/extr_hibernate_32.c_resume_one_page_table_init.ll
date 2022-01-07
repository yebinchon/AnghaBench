; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_32.c_resume_one_page_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_32.c_resume_one_page_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_PAGE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @resume_one_page_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resume_one_page_table_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pmd_none(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i64 @get_safe_page(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %34

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @__pa(i32* %18)
  %20 = load i32, i32* @_PAGE_TABLE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @__pmd(i32 %21)
  %23 = call i32 @set_pmd(i32* %17, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32* @pte_offset_kernel(i32* %25, i32 0)
  %27 = icmp ne i32* %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %2, align 8
  br label %34

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @pte_offset_kernel(i32* %32, i32 0)
  store i32* %33, i32** %2, align 8
  br label %34

34:                                               ; preds = %31, %16, %15
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
