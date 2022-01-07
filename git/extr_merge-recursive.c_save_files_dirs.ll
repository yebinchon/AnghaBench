; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_save_files_dirs.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_save_files_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.path_hashmap_entry = type { i32, i32 }
%struct.merge_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@READ_TREE_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.strbuf*, i8*, i32, i32, i8*)* @save_files_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_files_dirs(%struct.object_id* %0, %struct.strbuf* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.path_hashmap_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.merge_options*, align 8
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store %struct.strbuf* %1, %struct.strbuf** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.merge_options*
  store %struct.merge_options* %20, %struct.merge_options** %15, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strbuf_addstr(%struct.strbuf* %21, i8* %22)
  %24 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %13, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FLEX_ALLOC_MEM(%struct.path_hashmap_entry* %24, i8* %25, i32 %28, i32 %31)
  %33 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %13, align 8
  %34 = getelementptr inbounds %struct.path_hashmap_entry, %struct.path_hashmap_entry* %33, i32 0, i32 0
  %35 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %13, align 8
  %36 = getelementptr inbounds %struct.path_hashmap_entry, %struct.path_hashmap_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @path_hash(i32 %37)
  %39 = call i32 @hashmap_entry_init(i32* %34, i32 %38)
  %40 = load %struct.merge_options*, %struct.merge_options** %15, align 8
  %41 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %13, align 8
  %45 = getelementptr inbounds %struct.path_hashmap_entry, %struct.path_hashmap_entry* %44, i32 0, i32 0
  %46 = call i32 @hashmap_add(i32* %43, i32* %45)
  %47 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @strbuf_setlen(%struct.strbuf* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %6
  %54 = load i32, i32* @READ_TREE_RECURSIVE, align 4
  br label %56

55:                                               ; preds = %6
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  ret i32 %57
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.path_hashmap_entry*, i8*, i32, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @path_hash(i32) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
