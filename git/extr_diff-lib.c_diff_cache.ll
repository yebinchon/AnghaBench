; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_diff_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_diff_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.object_id = type { i32 }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32*, i32, %struct.rev_info*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"bad tree object %s\00", align 1
@oneway_diff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.object_id*, i8*, i32)* @diff_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_cache(%struct.rev_info* %0, %struct.object_id* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.tree_desc, align 4
  %12 = alloca %struct.unpack_trees_options, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.object_id*, %struct.object_id** %7, align 8
  %14 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %13)
  store %struct.tree* %14, %struct.tree** %10, align 8
  %15 = load %struct.tree*, %struct.tree** %10, align 8
  %16 = icmp ne %struct.tree* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  br label %25

22:                                               ; preds = %17
  %23 = load %struct.object_id*, %struct.object_id** %7, align 8
  %24 = call i8* @oid_to_hex(%struct.object_id* %23)
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i8* [ %21, %20 ], [ %24, %22 ]
  %27 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %4
  %29 = call i32 @memset(%struct.unpack_trees_options* %12, i32 0, i32 56)
  %30 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i1 [ false, %28 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @oneway_diff, align 4
  %49 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 8
  store i32 %48, i32* %49, align 8
  %50 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %51 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 7
  store %struct.rev_info* %50, %struct.rev_info** %51, align 8
  %52 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %53 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 6
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 5
  store i32* null, i32** %59, align 8
  %60 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %61 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 4
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %63, align 8
  %64 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.tree*, %struct.tree** %10, align 8
  %68 = getelementptr inbounds %struct.tree, %struct.tree* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tree*, %struct.tree** %10, align 8
  %71 = getelementptr inbounds %struct.tree, %struct.tree* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @init_tree_desc(%struct.tree_desc* %11, i32 %69, i32 %72)
  %74 = call i32 @unpack_trees(i32 1, %struct.tree_desc* %11, %struct.unpack_trees_options* %12)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %43, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i32 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
