; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_extable_64.c_search_extable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_extable_64.c_search_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32 }

@cmp_ex_search = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca %struct.exception_table_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call %struct.exception_table_entry* @check_exception_ranges(i64 %9)
  store %struct.exception_table_entry* %10, %struct.exception_table_entry** %8, align 8
  %11 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %12 = icmp ne %struct.exception_table_entry* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  store %struct.exception_table_entry* %14, %struct.exception_table_entry** %4, align 8
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @cmp_ex_search, align 4
  %19 = call %struct.exception_table_entry* @bsearch(i64* %7, %struct.exception_table_entry* %16, i64 %17, i32 4, i32 %18)
  store %struct.exception_table_entry* %19, %struct.exception_table_entry** %4, align 8
  br label %20

20:                                               ; preds = %15, %13
  %21 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  ret %struct.exception_table_entry* %21
}

declare dso_local %struct.exception_table_entry* @check_exception_ranges(i64) #1

declare dso_local %struct.exception_table_entry* @bsearch(i64*, %struct.exception_table_entry*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
