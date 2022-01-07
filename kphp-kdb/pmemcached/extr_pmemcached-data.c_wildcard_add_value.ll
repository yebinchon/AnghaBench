; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_add_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.wildcard_entry = type { i32, i32, i32, i8*, i8* }

@wildcard_cache_memory = common dso_local global i64 0, align 8
@memory_for_wildcard_cache = common dso_local global i64 0, align 8
@wildcard_cache_tree = common dso_local global i32 0, align 4
@wildcard_cache_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wildcard_add_value(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.data, align 4
  %10 = alloca %struct.wildcard_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %22, %4
  %12 = load i64, i64* @wildcard_cache_memory, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = add i64 %18, 32
  %20 = load i64, i64* @memory_for_wildcard_cache, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = call i32 (...) @wildcard_free_lru()
  br label %11

24:                                               ; preds = %11
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @wildcard_get_value(i8* %25, i32 %26)
  %28 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %80

33:                                               ; preds = %24
  %34 = call i8* @zzmalloc(i32 32)
  %35 = bitcast i8* %34 to %struct.wildcard_entry*
  store %struct.wildcard_entry* %35, %struct.wildcard_entry** %10, align 8
  %36 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %37 = call i32 @wildcard_add_use(%struct.wildcard_entry* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %40 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @zzmalloc(i32 %41)
  %43 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %44 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %46 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %53 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i8* @zzmalloc(i32 %54)
  %56 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %57 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %59 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %61 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @memcpy(i8* %62, i8* %63, i32 %64)
  %66 = load i32, i32* @wildcard_cache_tree, align 4
  %67 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %68 = bitcast %struct.wildcard_entry* %67 to i32*
  %69 = call i32 (...) @lrand48()
  %70 = call i32 @tree_insert(i32 %66, i32* %68, i32 %69)
  store i32 %70, i32* @wildcard_cache_tree, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 32
  %76 = load i64, i64* @wildcard_cache_memory, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* @wildcard_cache_memory, align 8
  %78 = load i32, i32* @wildcard_cache_entries, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @wildcard_cache_entries, align 4
  br label %80

80:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @wildcard_free_lru(...) #1

declare dso_local i32 @wildcard_get_value(i8*, i32) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @wildcard_add_use(%struct.wildcard_entry*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @tree_insert(i32, i32*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
