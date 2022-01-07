; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_64.c_set_up_temporary_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_64.c_set_up_temporary_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.x86_mapping_info = type { i32, i32, i32 }

@__PAGE_OFFSET = common dso_local global i32 0, align 4
@__PAGE_KERNEL_LARGE_EXEC = common dso_local global i32 0, align 4
@alloc_pgt_page = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nr_pfn_mapped = common dso_local global i32 0, align 4
@pfn_mapped = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@temp_pgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_up_temporary_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_temporary_mappings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.x86_mapping_info, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %2, i32 0, i32 0
  %9 = load i32, i32* @__PAGE_OFFSET, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %2, i32 0, i32 1
  %11 = load i32, i32* @__PAGE_KERNEL_LARGE_EXEC, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %2, i32 0, i32 2
  %13 = load i32, i32* @alloc_pgt_page, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i64 @get_safe_page(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %1, align 4
  br label %66

22:                                               ; preds = %0
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @set_up_temporary_text_mapping(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %1, align 4
  br label %66

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @nr_pfn_mapped, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pfn_mapped, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = shl i64 %40, %41
  store i64 %42, i64* %3, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pfn_mapped, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PAGE_SHIFT, align 8
  %50 = shl i64 %48, %49
  store i64 %50, i64* %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @kernel_ident_mapping_init(%struct.x86_mapping_info* %2, i32* %51, i64 %52, i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %1, align 4
  br label %66

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @__pa(i32* %64)
  store i32 %65, i32* @temp_pgt, align 4
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %63, %57, %27, %19
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @set_up_temporary_text_mapping(i32*) #1

declare dso_local i32 @kernel_ident_mapping_init(%struct.x86_mapping_info*, i32*, i64, i64) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
