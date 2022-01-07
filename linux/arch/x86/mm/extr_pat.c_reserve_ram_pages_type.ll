; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_reserve_ram_pages_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_reserve_ram_pages_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@_PAGE_CACHE_MODE_WP = common dso_local global i32 0, align 4
@_PAGE_CACHE_MODE_UC_MINUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_PAGE_CACHE_MODE_UC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@_PAGE_CACHE_MODE_WB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"x86/PAT: reserve_ram_pages_type failed [mem %#010Lx-%#010Lx], track 0x%x, req 0x%x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @reserve_ram_pages_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_ram_pages_type(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @_PAGE_CACHE_MODE_WP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @_PAGE_CACHE_MODE_UC_MINUS, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @_PAGE_CACHE_MODE_UC, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 @WARN_ON_ONCE(i32 1)
  %31 = load i32, i32* @_PAGE_CACHE_MODE_UC_MINUS, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %66, %32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.page* @pfn_to_page(i32 %43)
  store %struct.page* %44, %struct.page** %10, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @get_page_memtype(%struct.page* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @_PAGE_CACHE_MODE_WB, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53, i32 %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %95

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %36

69:                                               ; preds = %36
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %91, %75
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PAGE_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.page* @pfn_to_page(i32 %86)
  store %struct.page* %87, %struct.page** %10, align 8
  %88 = load %struct.page*, %struct.page** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @set_page_memtype(%struct.page* %88, i32 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %79

94:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %62, %22
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @get_page_memtype(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @set_page_memtype(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
