; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_oneway_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_oneway_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32, %struct.cache_entry*, %struct.rev_info* }
%struct.rev_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry**, %struct.unpack_trees_options*)* @oneway_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oneway_diff(%struct.cache_entry** %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.rev_info*, align 8
  store %struct.cache_entry** %0, %struct.cache_entry*** %4, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %5, align 8
  %9 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %10 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %9, i64 0
  %11 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  store %struct.cache_entry* %11, %struct.cache_entry** %6, align 8
  %12 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %13 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %12, i64 1
  %14 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  store %struct.cache_entry* %14, %struct.cache_entry** %7, align 8
  %15 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %16 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 2
  %17 = load %struct.rev_info*, %struct.rev_info** %16, align 8
  store %struct.rev_info* %17, %struct.rev_info** %8, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %19 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %20 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %19, i32 0, i32 1
  %21 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  %22 = icmp eq %struct.cache_entry* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.cache_entry* null, %struct.cache_entry** %7, align 8
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %32 = icmp ne %struct.cache_entry* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  br label %37

35:                                               ; preds = %24
  %36 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi %struct.cache_entry* [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %39, i32 0, i32 1
  %41 = call i64 @ce_path_match(i32 %30, %struct.cache_entry* %38, i32* %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %46 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %47 = call i32 @do_oneway_diff(%struct.unpack_trees_options* %44, %struct.cache_entry* %45, %struct.cache_entry* %46)
  %48 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 0
  %50 = call i64 @diff_can_quit_early(%struct.TYPE_4__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %54 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i32 -1, i32* %3, align 4
  br label %57

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %37
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @ce_path_match(i32, %struct.cache_entry*, i32*, i32*) #1

declare dso_local i32 @do_oneway_diff(%struct.unpack_trees_options*, %struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i64 @diff_can_quit_early(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
