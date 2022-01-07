; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.topa = type { i64 }
%struct.topa_page = type { %struct.topa }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@TOPA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.topa* (i32, i32)* @topa_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.topa* @topa_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.topa*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.topa_page*, align 8
  %8 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cpu_to_node(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @__GFP_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.page* @alloc_pages_node(i32 %11, i32 %14, i32 0)
  store %struct.page* %15, %struct.page** %8, align 8
  %16 = load %struct.page*, %struct.page** %8, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.topa* null, %struct.topa** %3, align 8
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call %struct.topa_page* @page_address(%struct.page* %20)
  store %struct.topa_page* %21, %struct.topa_page** %7, align 8
  %22 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %23 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.topa, %struct.topa* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %26 = call i32 @intel_pt_validate_hw_cap(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %19
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @page_to_phys(%struct.page* %29)
  %31 = load i32, i32* @TOPA_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %34 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %33, i32 0, i32 0
  %35 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %34, i32 1)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %38 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %37, i32 0, i32 0
  %39 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %38, i32 1)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %28, %19
  %42 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %43 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %42, i32 0, i32 0
  store %struct.topa* %43, %struct.topa** %3, align 8
  br label %44

44:                                               ; preds = %41, %18
  %45 = load %struct.topa*, %struct.topa** %3, align 8
  ret %struct.topa* %45
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local %struct.topa_page* @page_address(%struct.page*) #1

declare dso_local i32 @intel_pt_validate_hw_cap(i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
