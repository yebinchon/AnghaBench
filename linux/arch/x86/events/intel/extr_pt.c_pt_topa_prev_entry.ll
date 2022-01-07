; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_topa_prev_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_topa_prev_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { %struct.topa*, %struct.topa* }
%struct.topa = type { i32 }
%struct.topa_entry = type { i32 }
%struct.topa_page = type { %struct.topa_entry*, %struct.topa }

@PAGE_SIZE = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.topa_entry* (%struct.pt_buffer*, %struct.topa_entry*)* @pt_topa_prev_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.topa_entry* @pt_topa_prev_entry(%struct.pt_buffer* %0, %struct.topa_entry* %1) #0 {
  %3 = alloca %struct.topa_entry*, align 8
  %4 = alloca %struct.pt_buffer*, align 8
  %5 = alloca %struct.topa_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.topa_page*, align 8
  %8 = alloca %struct.topa*, align 8
  store %struct.pt_buffer* %0, %struct.pt_buffer** %4, align 8
  store %struct.topa_entry* %1, %struct.topa_entry** %5, align 8
  %9 = load %struct.topa_entry*, %struct.topa_entry** %5, align 8
  %10 = ptrtoint %struct.topa_entry* %9 to i64
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = and i64 %10, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.topa_page*
  store %struct.topa_page* %17, %struct.topa_page** %7, align 8
  %18 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %19 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %18, i32 0, i32 0
  %20 = load %struct.topa_entry*, %struct.topa_entry** %19, align 8
  %21 = load %struct.topa_entry*, %struct.topa_entry** %5, align 8
  %22 = icmp ne %struct.topa_entry* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.topa_entry*, %struct.topa_entry** %5, align 8
  %25 = getelementptr inbounds %struct.topa_entry, %struct.topa_entry* %24, i32 -1
  store %struct.topa_entry* %25, %struct.topa_entry** %5, align 8
  store %struct.topa_entry* %25, %struct.topa_entry** %3, align 8
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %28 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %27, i32 0, i32 1
  store %struct.topa* %28, %struct.topa** %8, align 8
  %29 = load %struct.topa*, %struct.topa** %8, align 8
  %30 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %30, i32 0, i32 1
  %32 = load %struct.topa*, %struct.topa** %31, align 8
  %33 = icmp eq %struct.topa* %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %35, i32 0, i32 0
  %37 = load %struct.topa*, %struct.topa** %36, align 8
  store %struct.topa* %37, %struct.topa** %8, align 8
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.topa*, %struct.topa** %8, align 8
  %40 = load i32, i32* @list, align 4
  %41 = call %struct.topa* @list_prev_entry(%struct.topa* %39, i32 %40)
  store %struct.topa* %41, %struct.topa** %8, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.topa*, %struct.topa** %8, align 8
  %44 = call %struct.topa_page* @topa_to_page(%struct.topa* %43)
  store %struct.topa_page* %44, %struct.topa_page** %7, align 8
  %45 = load %struct.topa_page*, %struct.topa_page** %7, align 8
  %46 = getelementptr inbounds %struct.topa_page, %struct.topa_page* %45, i32 0, i32 0
  %47 = load %struct.topa_entry*, %struct.topa_entry** %46, align 8
  %48 = load %struct.topa*, %struct.topa** %8, align 8
  %49 = getelementptr inbounds %struct.topa, %struct.topa* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.topa_entry, %struct.topa_entry* %47, i64 %52
  store %struct.topa_entry* %53, %struct.topa_entry** %3, align 8
  br label %54

54:                                               ; preds = %42, %23
  %55 = load %struct.topa_entry*, %struct.topa_entry** %3, align 8
  ret %struct.topa_entry* %55
}

declare dso_local %struct.topa* @list_prev_entry(%struct.topa*, i32) #1

declare dso_local %struct.topa_page* @topa_to_page(%struct.topa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
