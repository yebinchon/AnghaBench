; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_replace_large.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_replace_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }

@NIL = common dso_local global i32* null, align 8
@TF_ZERO = common dso_local global i32 0, align 4
@TF_MINUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32)* @listree_replace_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @listree_replace_large(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__** %12, %struct.TYPE_10__*** %6, align 8
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = call i32 @SMALL_NODE(%struct.TYPE_10__* %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @tree_ext_lookup(i32 %15, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** @NIL, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @find_rpos_direct(%struct.TYPE_11__* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = call i32 @get_data_direct(%struct.TYPE_11__* %28, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @object_id_equal(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %27, %21
  %40 = phi i1 [ false, %21 ], [ %38, %27 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (...) @lrand48()
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TF_ZERO, align 4
  %47 = call i32 @MAKE_RPOS(i32 %45, i32 %46)
  %48 = call %struct.TYPE_10__* @new_tree_subnode_large(i32 %43, i32 %44, i32 %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %9, align 8
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i32 @SMALL_NODE(%struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = call i32 @SMALL_NODE(%struct.TYPE_10__* %58)
  %60 = call i32* @tree_ext_insert(i32 %51, i32 %54, i32 %57, i32 %59)
  %61 = call %struct.TYPE_10__* @LARGE_NODE(i32* %60)
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %3, align 8
  br label %73

64:                                               ; preds = %2
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @NODE_TYPE(i32* %65)
  %67 = load i64, i64* @TF_MINUS, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call %struct.TYPE_10__* @LARGE_NODE(i32* %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %3, align 8
  br label %73

73:                                               ; preds = %64, %39
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %74
}

declare dso_local i32* @tree_ext_lookup(i32, i32) #1

declare dso_local i32 @SMALL_NODE(%struct.TYPE_10__*) #1

declare dso_local i32 @find_rpos_direct(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @object_id_equal(i32, i32) #1

declare dso_local i32 @get_data_direct(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.TYPE_10__* @new_tree_subnode_large(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @MAKE_RPOS(i32, i32) #1

declare dso_local %struct.TYPE_10__* @LARGE_NODE(i32*) #1

declare dso_local i32* @tree_ext_insert(i32, i32, i32, i32) #1

declare dso_local i64 @NODE_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
