; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_insert_global.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_insert_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__** }

@NILG = common dso_local global %struct.TYPE_18__* null, align 8
@TF_PLUS = common dso_local global i32 0, align 4
@TF_MINUS = common dso_local global i64 0, align 8
@DeletedSubnode_global = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i64, i32)* @listree_insert_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listree_insert_global(%struct.TYPE_19__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  store %struct.TYPE_18__** %13, %struct.TYPE_18__*** %7, align 8
  %14 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.TYPE_18__* @tree_ext_global_lookup(%struct.TYPE_18__* %15, i64 %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** @NILG, align 8
  %20 = icmp eq %struct.TYPE_18__* %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @find_rpos_global(%struct.TYPE_19__* %22, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = call i64 @get_data_global(%struct.TYPE_19__* %28, i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %27, %21
  %39 = phi i1 [ true, %21 ], [ %37, %27 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (...) @lrand48()
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TF_PLUS, align 4
  %46 = call i32 @MAKE_RPOS(i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.TYPE_18__* @new_tree_subnode_global(i64 %42, i32 %43, i32 %46, i32 %47)
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %10, align 8
  %49 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = call %struct.TYPE_18__* @tree_ext_global_insert(%struct.TYPE_18__* %50, i32 %53, i32 %56, %struct.TYPE_18__* %57)
  %59 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %59, align 8
  br label %79

60:                                               ; preds = %3
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = call i64 @NODE_TYPE(%struct.TYPE_18__* %61)
  %63 = load i64, i64* @TF_MINUS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @DeletedSubnode_global, align 8
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call %struct.TYPE_18__* @tree_ext_global_delete(%struct.TYPE_18__* %68, i64 %69)
  %71 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @DeletedSubnode_global, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %74 = icmp eq %struct.TYPE_18__* %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = call i32 @free_tree_ext_global_node(%struct.TYPE_18__* %77)
  br label %79

79:                                               ; preds = %60, %38
  ret void
}

declare dso_local %struct.TYPE_18__* @tree_ext_global_lookup(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @find_rpos_global(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_data_global(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_18__* @new_tree_subnode_global(i64, i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @MAKE_RPOS(i32, i32) #1

declare dso_local %struct.TYPE_18__* @tree_ext_global_insert(%struct.TYPE_18__*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @tree_ext_global_delete(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @free_tree_ext_global_node(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
