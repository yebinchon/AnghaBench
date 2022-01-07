; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_insert_small.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_insert_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__** }

@NIL = common dso_local global %struct.TYPE_18__* null, align 8
@TF_PLUS = common dso_local global i32 0, align 4
@TF_MINUS = common dso_local global i64 0, align 8
@DeletedSubnode = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32, i32)* @listree_insert_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listree_insert_small(%struct.TYPE_19__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  store %struct.TYPE_18__** %13, %struct.TYPE_18__*** %7, align 8
  %14 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_18__* @tree_ext_lookup(%struct.TYPE_18__* %15, i32 %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** @NIL, align 8
  %20 = icmp eq %struct.TYPE_18__* %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @find_rpos_indirect(%struct.TYPE_19__* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = call i32 @get_data_indirect(%struct.TYPE_19__* %28, i64 %34)
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
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @TF_PLUS, align 4
  %48 = call i32 @MAKE_RPOS(i32 %46, i32 %47)
  %49 = call %struct.TYPE_18__* @new_tree_subnode_small(i32 %44, i32 %45, i32 %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %10, align 8
  %50 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = call %struct.TYPE_18__* @tree_ext_insert(%struct.TYPE_18__* %51, i32 %54, i32 %57, %struct.TYPE_18__* %58)
  %60 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %60, align 8
  br label %80

61:                                               ; preds = %3
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %63 = call i64 @NODE_TYPE(%struct.TYPE_18__* %62)
  %64 = load i64, i64* @TF_MINUS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @DeletedSubnode, align 8
  %68 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call %struct.TYPE_18__* @tree_ext_delete(%struct.TYPE_18__* %69, i32 %70)
  %72 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** @DeletedSubnode, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = icmp eq %struct.TYPE_18__* %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = call i32 @free_tree_ext_small_node(%struct.TYPE_18__* %78)
  br label %80

80:                                               ; preds = %61, %40
  ret void
}

declare dso_local %struct.TYPE_18__* @tree_ext_lookup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @find_rpos_indirect(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @object_id_equal(i32, i32) #1

declare dso_local i32 @get_data_indirect(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_18__* @new_tree_subnode_small(i32, i32, i32) #1

declare dso_local i32 @MAKE_RPOS(i32, i32) #1

declare dso_local %struct.TYPE_18__* @tree_ext_insert(%struct.TYPE_18__*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @tree_ext_delete(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @free_tree_ext_small_node(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
