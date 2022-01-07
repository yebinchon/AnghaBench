; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_sort.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_entry = type { i32, i32 }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_sort(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sort_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @jv_get_kind(i32 %9)
  %11 = load i64, i64* @JV_KIND_ARRAY, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @jv_get_kind(i32 %15)
  %17 = load i64, i64* @JV_KIND_ARRAY, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @jv_copy(i32 %21)
  %23 = call i32 @jv_array_length(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @jv_copy(i32 %24)
  %26 = call i32 @jv_array_length(i32 %25)
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @jv_copy(i32 %30)
  %32 = call i32 @jv_array_length(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.sort_entry* @sort_items(i32 %33, i32 %34)
  store %struct.sort_entry* %35, %struct.sort_entry** %6, align 8
  %36 = call i32 (...) @jv_array()
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %58, %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %42, i64 %44
  %46 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @jv_free(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @jv_array_set(i32 %49, i32 %50, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %63 = call i32 @jv_mem_free(%struct.sort_entry* %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local %struct.sort_entry* @sort_items(i32, i32) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_array_set(i32, i32, i32) #1

declare dso_local i32 @jv_mem_free(%struct.sort_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
