; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_check_for_directory_rename.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_check_for_directory_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32 }
%struct.tree = type { i32 }
%struct.hashmap = type { i32 }
%struct.dir_rename_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"WARNING: Avoiding applying %s -> %s rename to %s, because %s itself was renamed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_options*, i8*, %struct.tree*, %struct.hashmap*, %struct.hashmap*, %struct.hashmap*, i32*)* @check_for_directory_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_for_directory_rename(%struct.merge_options* %0, i8* %1, %struct.tree* %2, %struct.hashmap* %3, %struct.hashmap* %4, %struct.hashmap* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.merge_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca %struct.hashmap*, align 8
  %13 = alloca %struct.hashmap*, align 8
  %14 = alloca %struct.hashmap*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dir_rename_entry*, align 8
  %18 = alloca %struct.dir_rename_entry*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.tree* %2, %struct.tree** %11, align 8
  store %struct.hashmap* %3, %struct.hashmap** %12, align 8
  store %struct.hashmap* %4, %struct.hashmap** %13, align 8
  store %struct.hashmap* %5, %struct.hashmap** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %16, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.hashmap*, %struct.hashmap** %12, align 8
  %21 = call %struct.dir_rename_entry* @check_dir_renamed(i8* %19, %struct.hashmap* %20)
  store %struct.dir_rename_entry* %21, %struct.dir_rename_entry** %17, align 8
  store %struct.dir_rename_entry* null, %struct.dir_rename_entry** %18, align 8
  %22 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %17, align 8
  %23 = icmp ne %struct.dir_rename_entry* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i8*, i8** %16, align 8
  store i8* %25, i8** %8, align 8
  br label %66

26:                                               ; preds = %7
  %27 = load %struct.hashmap*, %struct.hashmap** %13, align 8
  %28 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %17, align 8
  %29 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.dir_rename_entry* @dir_rename_find_entry(%struct.hashmap* %27, i32 %31)
  store %struct.dir_rename_entry* %32, %struct.dir_rename_entry** %18, align 8
  %33 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %18, align 8
  %34 = icmp ne %struct.dir_rename_entry* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %17, align 8
  %39 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %17, align 8
  %42 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %17, align 8
  %47 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @output(%struct.merge_options* %36, i32 1, i32 %37, i32 %40, i32 %44, i8* %45, i32 %49)
  br label %64

51:                                               ; preds = %26
  %52 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %17, align 8
  %55 = load %struct.hashmap*, %struct.hashmap** %14, align 8
  %56 = load %struct.tree*, %struct.tree** %11, align 8
  %57 = call i8* @handle_path_level_conflicts(%struct.merge_options* %52, i8* %53, %struct.dir_rename_entry* %54, %struct.hashmap* %55, %struct.tree* %56)
  store i8* %57, i8** %16, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %51, %35
  %65 = load i8*, i8** %16, align 8
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %64, %24
  %67 = load i8*, i8** %8, align 8
  ret i8* %67
}

declare dso_local %struct.dir_rename_entry* @check_dir_renamed(i8*, %struct.hashmap*) #1

declare dso_local %struct.dir_rename_entry* @dir_rename_find_entry(%struct.hashmap*, i32) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @handle_path_level_conflicts(%struct.merge_options*, i8*, %struct.dir_rename_entry*, %struct.hashmap*, %struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
