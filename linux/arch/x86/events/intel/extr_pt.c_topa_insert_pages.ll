; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_insert_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_insert_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { i64, i32, i32*, %struct.topa* }
%struct.topa = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TOPA_SHIFT = common dso_local global i32 0, align 4
@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_buffer*, i32, i32)* @topa_insert_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topa_insert_pages(%struct.pt_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.topa*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.pt_buffer* %0, %struct.pt_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pt_buffer*, %struct.pt_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %11, i32 0, i32 3
  %13 = load %struct.topa*, %struct.topa** %12, align 8
  store %struct.topa* %13, %struct.topa** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.pt_buffer*, %struct.pt_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.pt_buffer*, %struct.pt_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.page* @virt_to_page(i32 %21)
  store %struct.page* %22, %struct.page** %10, align 8
  %23 = load %struct.page*, %struct.page** %10, align 8
  %24 = call i64 @PagePrivate(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.page*, %struct.page** %10, align 8
  %28 = call i32 @page_private(%struct.page* %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.topa*, %struct.topa** %8, align 8
  %31 = call i64 @topa_table_full(%struct.topa* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.topa* @topa_alloc(i32 %34, i32 %35)
  store %struct.topa* %36, %struct.topa** %8, align 8
  %37 = load %struct.topa*, %struct.topa** %8, align 8
  %38 = icmp ne %struct.topa* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %119

42:                                               ; preds = %33
  %43 = load %struct.pt_buffer*, %struct.pt_buffer** %5, align 8
  %44 = load %struct.topa*, %struct.topa** %8, align 8
  %45 = call i32 @topa_insert_table(%struct.pt_buffer* %43, %struct.topa* %44)
  br label %46

46:                                               ; preds = %42, %29
  %47 = load %struct.topa*, %struct.topa** %8, align 8
  %48 = getelementptr inbounds %struct.topa, %struct.topa* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.topa*, %struct.topa** %8, align 8
  %51 = getelementptr inbounds %struct.topa, %struct.topa* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.topa*, %struct.topa** %8, align 8
  %58 = load %struct.topa*, %struct.topa** %8, align 8
  %59 = getelementptr inbounds %struct.topa, %struct.topa* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %57, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %56, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.topa*, %struct.topa** %8, align 8
  %68 = getelementptr inbounds %struct.topa, %struct.topa* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %55
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = call i32 @page_to_phys(%struct.page* %73)
  %75 = load i32, i32* @TOPA_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = load %struct.topa*, %struct.topa** %8, align 8
  %78 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %77, i32 -1)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.topa*, %struct.topa** %8, align 8
  %82 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %81, i32 -1)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.pt_buffer*, %struct.pt_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %72
  %89 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %90 = call i32 @intel_pt_validate_hw_cap(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load %struct.topa*, %struct.topa** %8, align 8
  %94 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %93, i32 -1)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32 1, i32* %95, align 4
  %96 = load %struct.topa*, %struct.topa** %8, align 8
  %97 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %96, i32 -1)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %88, %72
  %100 = load %struct.topa*, %struct.topa** %8, align 8
  %101 = getelementptr inbounds %struct.topa, %struct.topa* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @sizes(i32 %104)
  %106 = load %struct.topa*, %struct.topa** %8, align 8
  %107 = getelementptr inbounds %struct.topa, %struct.topa* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = shl i64 1, %113
  %115 = load %struct.pt_buffer*, %struct.pt_buffer** %5, align 8
  %116 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %114
  store i64 %118, i64* %116, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %99, %39
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i64 @topa_table_full(%struct.topa*) #1

declare dso_local %struct.topa* @topa_alloc(i32, i32) #1

declare dso_local i32 @topa_insert_table(%struct.pt_buffer*, %struct.topa*) #1

declare dso_local %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa*, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @intel_pt_validate_hw_cap(i32) #1

declare dso_local i64 @sizes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
