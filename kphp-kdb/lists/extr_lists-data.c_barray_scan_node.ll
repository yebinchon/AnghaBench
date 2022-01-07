; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_barray_scan_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_barray_scan_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap_entry = type { i32 }

@__vsort_xor_mask = common dso_local global i32 0, align 4
@__vsort_and_mask = common dso_local global i32 0, align 4
@M_global_id_list = common dso_local global i32* null, align 8
@__vsort_scanned = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @barray_scan_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @barray_scan_node(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.heap_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @metafile_get_flags(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @__vsort_xor_mask, align 4
  %14 = xor i32 %12, %13
  %15 = load i32, i32* @__vsort_and_mask, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32*, i32** @M_global_id_list, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @metafile_get_value(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.heap_entry* @heap_insert(i32 %27, i32 %28)
  store %struct.heap_entry* %29, %struct.heap_entry** %9, align 8
  %30 = load %struct.heap_entry*, %struct.heap_entry** %9, align 8
  %31 = icmp ne %struct.heap_entry* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 2
  %35 = add nsw i32 %34, 1
  %36 = load %struct.heap_entry*, %struct.heap_entry** %9, align 8
  %37 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %19
  %39 = load i32, i32* @__vsort_scanned, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @__vsort_scanned, align 4
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i32 @metafile_get_value(i32) #1

declare dso_local %struct.heap_entry* @heap_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
