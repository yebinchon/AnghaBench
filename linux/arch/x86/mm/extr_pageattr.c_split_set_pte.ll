; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_split_set_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_split_set_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32 }

@CPA_PROTECT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"CPA: Cannot fixup static protections for PUD split\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpa_data*, i32*, i64, i32, i64, i64)* @split_set_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_set_pte(%struct.cpa_data* %0, i32* %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.cpa_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpa_data* %0, %struct.cpa_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = call i32 @PFN_DOWN(i64 %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.cpa_data*, %struct.cpa_data** %7, align 8
  %18 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %44

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @CPA_PROTECT, align 4
  %28 = call i32 @static_protections(i32 %23, i64 %24, i64 %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @pgprot_val(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @pgprot_val(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %44

35:                                               ; preds = %22
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %10, align 4
  br label %43

41:                                               ; preds = %35
  %42 = call i32 @pr_warn_once(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %34, %21
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @pfn_pte(i64 %46, i32 %47)
  %49 = call i32 @set_pte(i32* %45, i32 %48)
  ret void
}

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i32 @static_protections(i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
