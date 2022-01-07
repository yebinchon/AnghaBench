; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_buffer_reset_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_buffer_reset_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { i32, i64, i32, i32, i32*, %struct.topa_entry*, i64 }
%struct.topa_entry = type { i32 }
%struct.topa_page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_buffer*, i64)* @pt_buffer_reset_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_buffer_reset_offsets(%struct.pt_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.topa_page*, align 8
  %6 = alloca %struct.topa_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.pt_buffer* %0, %struct.pt_buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %12, %2
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %23, %25
  %27 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %26, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.topa_entry* @pt_topa_entry_for_page(%struct.pt_buffer* %34, i32 %35)
  store %struct.topa_entry* %36, %struct.topa_entry** %6, align 8
  %37 = load %struct.topa_entry*, %struct.topa_entry** %6, align 8
  %38 = call %struct.topa_page* @topa_entry_to_page(%struct.topa_entry* %37)
  store %struct.topa_page* %38, %struct.topa_page** %5, align 8
  %39 = load %struct.topa_page*, %struct.topa_page** %5, align 8
  %40 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %39, i32 0, i32 0
  %41 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %42 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.topa_entry*, %struct.topa_entry** %6, align 8
  %44 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @TOPA_ENTRY(i32* %46, i32 0)
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds %struct.topa_entry, %struct.topa_entry* %43, i64 %49
  %51 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %51, i32 0, i32 5
  store %struct.topa_entry* %50, %struct.topa_entry** %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %55 = call i32 @pt_buffer_region_size(%struct.pt_buffer* %54)
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = and i64 %53, %57
  %59 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %60 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %62 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %61, i32 0, i32 3
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @local64_set(i32* %62, i64 %63)
  %65 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %65, i32 0, i32 2
  %67 = call i32 @local_set(i32* %66, i32 0)
  ret void
}

declare dso_local %struct.topa_entry* @pt_topa_entry_for_page(%struct.pt_buffer*, i32) #1

declare dso_local %struct.topa_page* @topa_entry_to_page(%struct.topa_entry*) #1

declare dso_local i32 @TOPA_ENTRY(i32*, i32) #1

declare dso_local i32 @pt_buffer_region_size(%struct.pt_buffer*) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @local_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
