; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_hash_dir_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_hash_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_entry = type { i32, %struct.dir_entry*, i32 }
%struct.index_state = type { i32 }
%struct.cache_entry = type { i32* }

@name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_entry* (%struct.index_state*, %struct.cache_entry*, i32)* @hash_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_entry* @hash_dir_entry(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.dir_entry*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dir_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %14 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_dir_sep(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %12, %9
  %25 = phi i1 [ false, %9 ], [ %23, %12 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  br label %9

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.dir_entry* null, %struct.dir_entry** %4, align 8
  br label %76

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.index_state*, %struct.index_state** %5, align 8
  %37 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.dir_entry* @find_dir_entry(%struct.index_state* %36, i32* %39, i32 %40)
  store %struct.dir_entry* %41, %struct.dir_entry** %8, align 8
  %42 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %43 = icmp ne %struct.dir_entry* %42, null
  br i1 %43, label %74, label %44

44:                                               ; preds = %33
  %45 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %46 = load i32, i32* @name, align 4
  %47 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @FLEX_ALLOC_MEM(%struct.dir_entry* %45, i32 %46, i32* %49, i32 %50)
  %52 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %53 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %52, i32 0, i32 2
  %54 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @memihash(i32* %56, i32 %57)
  %59 = call i32 @hashmap_entry_init(i32* %53, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %62 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.index_state*, %struct.index_state** %5, align 8
  %64 = getelementptr inbounds %struct.index_state, %struct.index_state* %63, i32 0, i32 0
  %65 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %66 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %65, i32 0, i32 2
  %67 = call i32 @hashmap_add(i32* %64, i32* %66)
  %68 = load %struct.index_state*, %struct.index_state** %5, align 8
  %69 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.dir_entry* @hash_dir_entry(%struct.index_state* %68, %struct.cache_entry* %69, i32 %70)
  %72 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %73 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %72, i32 0, i32 1
  store %struct.dir_entry* %71, %struct.dir_entry** %73, align 8
  br label %74

74:                                               ; preds = %44, %33
  %75 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  store %struct.dir_entry* %75, %struct.dir_entry** %4, align 8
  br label %76

76:                                               ; preds = %74, %32
  %77 = load %struct.dir_entry*, %struct.dir_entry** %4, align 8
  ret %struct.dir_entry* %77
}

declare dso_local i32 @is_dir_sep(i32) #1

declare dso_local %struct.dir_entry* @find_dir_entry(%struct.index_state*, i32*, i32) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.dir_entry*, i32, i32*, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @memihash(i32*, i32) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
