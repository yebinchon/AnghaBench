; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmap.c_pfn_modify_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmap.c_pfn_modify_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_BUG_L1TF = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfn_modify_allowed(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @X86_BUG_L1TF, align 4
  %7 = call i32 @boot_cpu_has_bug(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pgprot_val(i32 %11)
  %13 = call i32 @__pte_needs_invert(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %31

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @pfn_valid(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %31

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = call i64 (...) @l1tf_pfn_limit()
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %31

30:                                               ; preds = %25, %21
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %20, %15, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @boot_cpu_has_bug(i32) #1

declare dso_local i32 @__pte_needs_invert(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i64 @l1tf_pfn_limit(...) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
