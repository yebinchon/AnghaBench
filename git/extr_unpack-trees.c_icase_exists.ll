; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_icase_exists.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_icase_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpack_trees_options = type { i32 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32 }

@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unpack_trees_options*, i8*, i32, %struct.stat*)* @icase_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icase_exists(%struct.unpack_trees_options* %0, i8* %1, i32 %2, %struct.stat* %3) #0 {
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stat* %3, %struct.stat** %8, align 8
  %10 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %11 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.cache_entry* @index_file_exists(i32 %12, i8* %13, i32 %14, i32 1)
  store %struct.cache_entry* %15, %struct.cache_entry** %9, align 8
  %16 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %17 = icmp ne %struct.cache_entry* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %20 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %23 = load %struct.stat*, %struct.stat** %8, align 8
  %24 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %25 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ie_match_stat(i32 %21, %struct.cache_entry* %22, %struct.stat* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %18, %4
  %31 = phi i1 [ false, %4 ], [ %29, %18 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local %struct.cache_entry* @index_file_exists(i32, i8*, i32, i32) #1

declare dso_local i32 @ie_match_stat(i32, %struct.cache_entry*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
