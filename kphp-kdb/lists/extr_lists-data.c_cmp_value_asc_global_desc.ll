; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_cmp_value_asc_global_desc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_cmp_value_asc_global_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap_entry = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_value_asc_global_desc(%struct.heap_entry* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.heap_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.heap_entry* %0, %struct.heap_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.heap_entry*, %struct.heap_entry** %5, align 8
  %9 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.heap_entry*, %struct.heap_entry** %5, align 8
  %16 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.heap_entry*, %struct.heap_entry** %5, align 8
  %24 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %20, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
