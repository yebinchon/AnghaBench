; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_insert_large.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_insert_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__** }

@NIL = common dso_local global %struct.TYPE_17__* null, align 8
@TF_PLUS = common dso_local global i32 0, align 4
@TF_MINUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_19__*, i32)* @listree_insert_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @listree_insert_large(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  store %struct.TYPE_18__** %12, %struct.TYPE_18__*** %6, align 8
  %13 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = call i32 @SMALL_NODE(%struct.TYPE_18__* %14)
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_17__* @tree_ext_lookup(i32 %15, i32 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NIL, align 8
  %20 = icmp eq %struct.TYPE_17__* %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @find_rpos_direct(%struct.TYPE_19__* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = call i32 @get_data_direct(%struct.TYPE_19__* %28, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @object_id_equal(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %27, %21
  %41 = phi i1 [ true, %21 ], [ %39, %27 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (...) @lrand48()
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TF_PLUS, align 4
  %48 = call i32 @MAKE_RPOS(i32 %46, i32 %47)
  %49 = call %struct.TYPE_18__* @new_tree_subnode_large(i32 %44, i32 %45, i32 %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %9, align 8
  %50 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = call i32 @SMALL_NODE(%struct.TYPE_18__* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = call i32 @SMALL_NODE(%struct.TYPE_18__* %59)
  %61 = call %struct.TYPE_17__* @tree_ext_insert(i32 %52, i32 %55, i32 %58, i32 %60)
  %62 = call %struct.TYPE_18__* @LARGE_NODE(%struct.TYPE_17__* %61)
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %63, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %3, align 8
  br label %87

65:                                               ; preds = %2
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = call i64 @NODE_TYPE(%struct.TYPE_17__* %66)
  %68 = load i64, i64* @TF_MINUS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -4
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = call i32 @SMALL_NODE(%struct.TYPE_18__* %77)
  %79 = load i32, i32* %5, align 4
  %80 = call %struct.TYPE_17__* @tree_ext_adjust_deltas(i32 %78, i32 %79, i32 1)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = icmp eq %struct.TYPE_17__* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = call %struct.TYPE_18__* @LARGE_NODE(%struct.TYPE_17__* %85)
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %3, align 8
  br label %87

87:                                               ; preds = %65, %40
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %88
}

declare dso_local %struct.TYPE_17__* @tree_ext_lookup(i32, i32) #1

declare dso_local i32 @SMALL_NODE(%struct.TYPE_18__*) #1

declare dso_local i32 @find_rpos_direct(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @object_id_equal(i32, i32) #1

declare dso_local i32 @get_data_direct(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_18__* @new_tree_subnode_large(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @MAKE_RPOS(i32, i32) #1

declare dso_local %struct.TYPE_18__* @LARGE_NODE(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @tree_ext_insert(i32, i32, i32, i32) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @tree_ext_adjust_deltas(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
