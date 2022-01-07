; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_load_cache_entry_block.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_load_cache_entry_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.mem_pool = type { i32 }
%struct.cache_entry = type { i32 }
%struct.ondisk_cache_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.index_state*, %struct.mem_pool*, i32, i32, i8*, i64, %struct.cache_entry*)* @load_cache_entry_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_cache_entry_block(%struct.index_state* %0, %struct.mem_pool* %1, i32 %2, i32 %3, i8* %4, i64 %5, %struct.cache_entry* %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.mem_pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ondisk_cache_entry*, align 8
  %18 = alloca %struct.cache_entry*, align 8
  %19 = alloca i64, align 8
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store %struct.mem_pool* %1, %struct.mem_pool** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.cache_entry* %6, %struct.cache_entry** %14, align 8
  %20 = load i64, i64* %13, align 8
  store i64 %20, i64* %16, align 8
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %15, align 4
  br label %22

22:                                               ; preds = %48, %7
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %16, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = bitcast i8* %31 to %struct.ondisk_cache_entry*
  store %struct.ondisk_cache_entry* %32, %struct.ondisk_cache_entry** %17, align 8
  %33 = load %struct.mem_pool*, %struct.mem_pool** %9, align 8
  %34 = load %struct.index_state*, %struct.index_state** %8, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %17, align 8
  %38 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %39 = call %struct.cache_entry* @create_from_disk(%struct.mem_pool* %33, i32 %36, %struct.ondisk_cache_entry* %37, i64* %19, %struct.cache_entry* %38)
  store %struct.cache_entry* %39, %struct.cache_entry** %18, align 8
  %40 = load %struct.index_state*, %struct.index_state** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %43 = call i32 @set_index_entry(%struct.index_state* %40, i32 %41, %struct.cache_entry* %42)
  %44 = load i64, i64* %19, align 8
  %45 = load i64, i64* %16, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %16, align 8
  %47 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  store %struct.cache_entry* %47, %struct.cache_entry** %14, align 8
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %13, align 8
  %54 = sub i64 %52, %53
  ret i64 %54
}

declare dso_local %struct.cache_entry* @create_from_disk(%struct.mem_pool*, i32, %struct.ondisk_cache_entry*, i64*, %struct.cache_entry*) #1

declare dso_local i32 @set_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
