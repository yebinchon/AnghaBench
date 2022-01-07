; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_insert_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_topa_insert_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { %struct.topa*, %struct.topa*, %struct.topa*, i32 }
%struct.topa = type { i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@TENTS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_buffer*, %struct.topa*)* @topa_insert_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @topa_insert_table(%struct.pt_buffer* %0, %struct.topa* %1) #0 {
  %3 = alloca %struct.pt_buffer*, align 8
  %4 = alloca %struct.topa*, align 8
  %5 = alloca %struct.topa*, align 8
  store %struct.pt_buffer* %0, %struct.pt_buffer** %3, align 8
  store %struct.topa* %1, %struct.topa** %4, align 8
  %6 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %6, i32 0, i32 0
  %8 = load %struct.topa*, %struct.topa** %7, align 8
  store %struct.topa* %8, %struct.topa** %5, align 8
  %9 = load %struct.topa*, %struct.topa** %4, align 8
  %10 = getelementptr inbounds %struct.topa, %struct.topa* %9, i32 0, i32 3
  %11 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %11, i32 0, i32 3
  %13 = call i32 @list_add_tail(i32* %10, i32* %12)
  %14 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %14, i32 0, i32 2
  %16 = load %struct.topa*, %struct.topa** %15, align 8
  %17 = icmp ne %struct.topa* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.topa*, %struct.topa** %4, align 8
  %20 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %20, i32 0, i32 1
  store %struct.topa* %19, %struct.topa** %21, align 8
  %22 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %22, i32 0, i32 0
  store %struct.topa* %19, %struct.topa** %23, align 8
  %24 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %24, i32 0, i32 2
  store %struct.topa* %19, %struct.topa** %25, align 8
  br label %60

26:                                               ; preds = %2
  %27 = load %struct.topa*, %struct.topa** %5, align 8
  %28 = getelementptr inbounds %struct.topa, %struct.topa* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.topa*, %struct.topa** %5, align 8
  %31 = getelementptr inbounds %struct.topa, %struct.topa* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.topa*, %struct.topa** %4, align 8
  %35 = getelementptr inbounds %struct.topa, %struct.topa* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.topa*, %struct.topa** %4, align 8
  %37 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %37, i32 0, i32 0
  store %struct.topa* %36, %struct.topa** %38, align 8
  %39 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %40 = call i32 @intel_pt_validate_hw_cap(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %60

43:                                               ; preds = %26
  %44 = load %struct.topa*, %struct.topa** %5, align 8
  %45 = getelementptr inbounds %struct.topa, %struct.topa* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TENTS_PER_PAGE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.topa*, %struct.topa** %4, align 8
  %53 = call i32 @topa_pfn(%struct.topa* %52)
  %54 = load %struct.topa*, %struct.topa** %5, align 8
  %55 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %54, i32 -1)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.topa*, %struct.topa** %5, align 8
  %58 = call %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa* %57, i32 -1)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %43, %42, %18
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @intel_pt_validate_hw_cap(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @topa_pfn(%struct.topa*) #1

declare dso_local %struct.TYPE_2__* @TOPA_ENTRY(%struct.topa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
