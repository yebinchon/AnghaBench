; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_extable.c_search_extables_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_extable.c_search_extables_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @search_extables_range(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.exception_table_entry* @search_exception_tables(i64 %7)
  store %struct.exception_table_entry* %8, %struct.exception_table_entry** %6, align 8
  %9 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %10 = icmp ne %struct.exception_table_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %14 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %20 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = udiv i64 %22, 4
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %26 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %25, i64 1
  %27 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %33

29:                                               ; preds = %12
  %30 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %31 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %29, %17, %11
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
