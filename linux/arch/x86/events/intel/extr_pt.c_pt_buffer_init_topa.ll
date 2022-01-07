; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_buffer_init_topa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_buffer_init_topa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { i64, i32, i32 }
%struct.topa = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_buffer*, i32, i64, i32)* @pt_buffer_init_topa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_buffer_init_topa(%struct.pt_buffer* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.topa*, align 8
  %11 = alloca i32, align 4
  store %struct.pt_buffer* %0, %struct.pt_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.topa* @topa_alloc(i32 %12, i32 %13)
  store %struct.topa* %14, %struct.topa** %10, align 8
  %15 = load %struct.topa*, %struct.topa** %10, align 8
  %16 = icmp ne %struct.topa* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %65

20:                                               ; preds = %4
  %21 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %22 = load %struct.topa*, %struct.topa** %10, align 8
  %23 = call i32 @topa_insert_table(%struct.pt_buffer* %21, %struct.topa* %22)
  br label %24

24:                                               ; preds = %42, %20
  %25 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @topa_insert_pages(%struct.pt_buffer* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %39 = call i32 @pt_buffer_fini_topa(%struct.pt_buffer* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %30
  br label %24

43:                                               ; preds = %24
  %44 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %45 = call i64 @intel_pt_validate_hw_cap(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @topa_pfn(i32 %50)
  %52 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_2__* @TOPA_ENTRY(i32 %54, i32 -1)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_2__* @TOPA_ENTRY(i32 %59, i32 -1)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %47, %43
  %63 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %64 = call i32 @pt_topa_dump(%struct.pt_buffer* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %37, %17
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.topa* @topa_alloc(i32, i32) #1

declare dso_local i32 @topa_insert_table(%struct.pt_buffer*, %struct.topa*) #1

declare dso_local i32 @topa_insert_pages(%struct.pt_buffer*, i32, i32) #1

declare dso_local i32 @pt_buffer_fini_topa(%struct.pt_buffer*) #1

declare dso_local i64 @intel_pt_validate_hw_cap(i32) #1

declare dso_local i32 @topa_pfn(i32) #1

declare dso_local %struct.TYPE_2__* @TOPA_ENTRY(i32, i32) #1

declare dso_local i32 @pt_topa_dump(%struct.pt_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
