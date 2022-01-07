; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_hash_dir_entry_with_parent_and_prefix.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_hash_dir_entry_with_parent_and_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.dir_entry = type { i32, %struct.TYPE_3__, %struct.dir_entry*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.strbuf = type { i64, i64 }

@name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_entry* (%struct.index_state*, %struct.dir_entry*, %struct.strbuf*)* @hash_dir_entry_with_parent_and_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_entry* @hash_dir_entry_with_parent_and_prefix(%struct.index_state* %0, %struct.dir_entry* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.dir_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.dir_entry* %1, %struct.dir_entry** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %10 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %11 = icmp ne %struct.dir_entry* %10, null
  %12 = zext i1 %11 to i32
  %13 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32* @strchr(i64 %15, i8 signext 47)
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = xor i32 %12, %18
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %22 = icmp ne %struct.dir_entry* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %3
  %24 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %25 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %32 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %39 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = call i32 @memihash_cont(i32 %27, i64 %34, i64 %41)
  store i32 %42, i32* %8, align 4
  br label %51

43:                                               ; preds = %3
  %44 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memihash(i64 %46, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %23
  %52 = load %struct.index_state*, %struct.index_state** %4, align 8
  %53 = getelementptr inbounds %struct.index_state, %struct.index_state* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @compute_dir_lock_nr(i32* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @lock_dir_mutex(i32 %56)
  %58 = load %struct.index_state*, %struct.index_state** %4, align 8
  %59 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.dir_entry* @find_dir_entry__hash(%struct.index_state* %58, i64 %61, i64 %64, i32 %65)
  store %struct.dir_entry* %66, %struct.dir_entry** %7, align 8
  %67 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %68 = icmp ne %struct.dir_entry* %67, null
  br i1 %68, label %115, label %69

69:                                               ; preds = %51
  %70 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %71 = load i32, i32* @name, align 4
  %72 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @FLEX_ALLOC_MEM(%struct.dir_entry* %70, i32 %71, i64 %74, i64 %77)
  %79 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %80 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @hashmap_entry_init(%struct.TYPE_3__* %80, i32 %81)
  %83 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %87 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %89 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %90 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %89, i32 0, i32 2
  store %struct.dir_entry* %88, %struct.dir_entry** %90, align 8
  %91 = load %struct.index_state*, %struct.index_state** %4, align 8
  %92 = getelementptr inbounds %struct.index_state, %struct.index_state* %91, i32 0, i32 0
  %93 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %94 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %93, i32 0, i32 1
  %95 = call i32 @hashmap_add(i32* %92, %struct.TYPE_3__* %94)
  %96 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %97 = icmp ne %struct.dir_entry* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %69
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @unlock_dir_mutex(i32 %99)
  %101 = load %struct.index_state*, %struct.index_state** %4, align 8
  %102 = getelementptr inbounds %struct.index_state, %struct.index_state* %101, i32 0, i32 0
  %103 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %104 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @compute_dir_lock_nr(i32* %102, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @lock_dir_mutex(i32 %108)
  %110 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %111 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %98, %69
  br label %115

115:                                              ; preds = %114, %51
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @unlock_dir_mutex(i32 %116)
  %118 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  ret %struct.dir_entry* %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strchr(i64, i8 signext) #1

declare dso_local i32 @memihash_cont(i32, i64, i64) #1

declare dso_local i32 @memihash(i64, i64) #1

declare dso_local i32 @compute_dir_lock_nr(i32*, i32) #1

declare dso_local i32 @lock_dir_mutex(i32) #1

declare dso_local %struct.dir_entry* @find_dir_entry__hash(%struct.index_state*, i64, i64, i32) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.dir_entry*, i32, i64, i64) #1

declare dso_local i32 @hashmap_entry_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @hashmap_add(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @unlock_dir_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
