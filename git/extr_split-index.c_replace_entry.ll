; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_replace_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_replace_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i64, %struct.cache_entry**, %struct.split_index* }
%struct.cache_entry = type { i32, i64, i32 }
%struct.split_index = type { i64, i64, %struct.cache_entry** }

@.str = private unnamed_addr constant [55 x i8] c"position for replacement %d exceeds base index size %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"too many replacements (%d vs %d)\00", align 1
@CE_REMOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"entry %d is marked as both replaced and deleted\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"corrupt link extension, entry %d should have zero length name\00", align 1
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @replace_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_entry(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.split_index*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.index_state*
  store %struct.index_state* %10, %struct.index_state** %5, align 8
  %11 = load %struct.index_state*, %struct.index_state** %5, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 2
  %13 = load %struct.split_index*, %struct.split_index** %12, align 8
  store %struct.split_index* %13, %struct.split_index** %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.index_state*, %struct.index_state** %5, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.split_index*, %struct.split_index** %6, align 8
  %28 = getelementptr inbounds %struct.split_index, %struct.split_index* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.split_index*, %struct.split_index** %6, align 8
  %31 = getelementptr inbounds %struct.split_index, %struct.split_index* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.split_index*, %struct.split_index** %6, align 8
  %36 = getelementptr inbounds %struct.split_index, %struct.split_index* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.split_index*, %struct.split_index** %6, align 8
  %40 = getelementptr inbounds %struct.split_index, %struct.split_index* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %34, %26
  %44 = load %struct.index_state*, %struct.index_state** %5, align 8
  %45 = getelementptr inbounds %struct.index_state, %struct.index_state* %44, i32 0, i32 1
  %46 = load %struct.cache_entry**, %struct.cache_entry*** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %46, i64 %47
  %49 = load %struct.cache_entry*, %struct.cache_entry** %48, align 8
  store %struct.cache_entry* %49, %struct.cache_entry** %7, align 8
  %50 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CE_REMOVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i64, i64* %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %43
  %61 = load %struct.split_index*, %struct.split_index** %6, align 8
  %62 = getelementptr inbounds %struct.split_index, %struct.split_index* %61, i32 0, i32 2
  %63 = load %struct.cache_entry**, %struct.cache_entry*** %62, align 8
  %64 = load %struct.split_index*, %struct.split_index** %6, align 8
  %65 = getelementptr inbounds %struct.split_index, %struct.split_index* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %63, i64 %66
  %68 = load %struct.cache_entry*, %struct.cache_entry** %67, align 8
  store %struct.cache_entry* %68, %struct.cache_entry** %8, align 8
  %69 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %70 = call i64 @ce_namelen(%struct.cache_entry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i64, i64* %3, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %60
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 1
  %79 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %80 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %82 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %83 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %87 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %90 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %92 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %93 = call i32 @copy_cache_entry(%struct.cache_entry* %91, %struct.cache_entry* %92)
  %94 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %95 = call i32 @discard_cache_entry(%struct.cache_entry* %94)
  %96 = load %struct.split_index*, %struct.split_index** %6, align 8
  %97 = getelementptr inbounds %struct.split_index, %struct.split_index* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  ret void
}

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i64 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @copy_cache_entry(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
