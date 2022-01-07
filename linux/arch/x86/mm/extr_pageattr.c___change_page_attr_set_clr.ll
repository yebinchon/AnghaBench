; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___change_page_attr_set_clr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___change_page_attr_set_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i64, i32, i64 }

@CPA_ARRAY = common dso_local global i32 0, align 4
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@cpa_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpa_data*, i32)* @__change_page_attr_set_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__change_page_attr_set_clr(%struct.cpa_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cpa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpa_data* %0, %struct.cpa_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %9 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %85

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %18 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %20 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CPA_ARRAY, align 4
  %23 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %29 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %28, i32 0, i32 0
  store i64 1, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %15
  %31 = call i32 (...) @debug_pagealloc_enabled()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @spin_lock(i32* @cpa_lock)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @__change_page_attr(%struct.cpa_data* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = call i32 (...) @debug_pagealloc_enabled()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = call i32 @spin_unlock(i32* @cpa_lock)
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %86

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %52 = call i32 @cpa_process_alias(%struct.cpa_data* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %86

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %47
  %58 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %59 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %65 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i1 [ true, %57 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %74 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %79 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %82 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %12

85:                                               ; preds = %12
  br label %86

86:                                               ; preds = %85, %55, %46
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %89 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @debug_pagealloc_enabled(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__change_page_attr(%struct.cpa_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpa_process_alias(%struct.cpa_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
