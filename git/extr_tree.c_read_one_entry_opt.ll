; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_read_one_entry_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_read_one_entry_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.object_id = type { i32 }
%struct.cache_entry = type { i32, i32, i64, i32, i32 }

@READ_TREE_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.object_id*, i8*, i32, i8*, i32, i32, i32)* @read_one_entry_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_entry_opt(%struct.index_state* %0, %struct.object_id* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.index_state*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %10, align 8
  store %struct.object_id* %1, %struct.object_id** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call i64 @S_ISDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load i32, i32* @READ_TREE_RECURSIVE, align 4
  store i32 %24, i32* %9, align 4
  br label %70

25:                                               ; preds = %8
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %18, align 4
  %28 = load %struct.index_state*, %struct.index_state** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %18, align 4
  %31 = add nsw i32 %29, %30
  %32 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %28, i32 %31)
  store %struct.cache_entry* %32, %struct.cache_entry** %19, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @create_ce_mode(i32 %33)
  %35 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @create_ce_flags(i32 %37)
  %39 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %18, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @memcpy(i64 %48, i8* %49, i32 %50)
  %52 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @memcpy(i64 %57, i8* %58, i32 %60)
  %62 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %63 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %62, i32 0, i32 1
  %64 = load %struct.object_id*, %struct.object_id** %11, align 8
  %65 = call i32 @oidcpy(i32* %63, %struct.object_id* %64)
  %66 = load %struct.index_state*, %struct.index_state** %10, align 8
  %67 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @add_index_entry(%struct.index_state* %66, %struct.cache_entry* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %25, %23
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
