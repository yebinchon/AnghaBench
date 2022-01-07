; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_delete_large.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_delete_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.tree_payload = type { i32 }

@NIL = common dso_local global i64 0, align 8
@TF_MINUS = common dso_local global i32 0, align 4
@empty_string = common dso_local global i32 0, align 4
@DeletedSubnode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @listree_delete_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listree_delete_large(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.tree_payload*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__** %12, %struct.TYPE_15__*** %5, align 8
  %13 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = call i64 @SMALL_NODE(%struct.TYPE_15__* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @tree_ext_lookup(i64 %15, i32 %16)
  %18 = call %struct.TYPE_15__* @LARGE_NODE(i32 %17)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = call i64 @SMALL_NODE(%struct.TYPE_15__* %19)
  %21 = load i64, i64* @NIL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @find_rpos_direct(%struct.TYPE_16__* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = call i32 @get_data_direct(%struct.TYPE_16__* %30, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @object_id_equal(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %29, %23
  %42 = phi i1 [ false, %23 ], [ %40, %29 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (...) @lrand48()
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @TF_MINUS, align 4
  %49 = call i32 @MAKE_RPOS(i32 %47, i32 %48)
  %50 = call %struct.TYPE_15__* @new_tree_subnode_large(i32 %45, i32 %46, i32 %49)
  %51 = call i64 @SMALL_NODE(%struct.TYPE_15__* %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %8, align 8
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = call i64 @SMALL_NODE(%struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = call i32 @tree_ext_insert(i64 %55, i32 %58, i32 %61, %struct.TYPE_14__* %62)
  %64 = call %struct.TYPE_15__* @LARGE_NODE(i32 %63)
  %65 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %65, align 8
  br label %129

66:                                               ; preds = %2
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = call i32 @NODE_TYPE(%struct.TYPE_15__* %67)
  switch i32 %68, label %126 [
    i32 128, label %69
    i32 129, label %110
  ]

69:                                               ; preds = %66
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = call %struct.tree_payload* @PAYLOAD(%struct.TYPE_15__* %70)
  store %struct.tree_payload* %71, %struct.tree_payload** %9, align 8
  %72 = load %struct.tree_payload*, %struct.tree_payload** %9, align 8
  %73 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.tree_payload*, %struct.tree_payload** %9, align 8
  %78 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @empty_string, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.tree_payload*, %struct.tree_payload** %9, align 8
  %84 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tree_payload*, %struct.tree_payload** %9, align 8
  %87 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @get_text_data_len(i32 %88)
  %90 = call i32 @zfree(i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %82, %76
  %92 = load %struct.tree_payload*, %struct.tree_payload** %9, align 8
  %93 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %69
  %95 = load i32, i32* @TF_MINUS, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = call i64 @SMALL_NODE(%struct.TYPE_15__* %101)
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @tree_ext_adjust_deltas(i64 %102, i32 %103, i32 -1)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = call i64 @SMALL_NODE(%struct.TYPE_15__* %105)
  %107 = icmp eq i64 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  br label %128

110:                                              ; preds = %66
  store i64 0, i64* @DeletedSubnode, align 8
  %111 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = call i64 @SMALL_NODE(%struct.TYPE_15__* %112)
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @tree_ext_delete(i64 %113, i32 %114)
  %116 = call %struct.TYPE_15__* @LARGE_NODE(i32 %115)
  %117 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %117, align 8
  %118 = load i64, i64* @DeletedSubnode, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = call i64 @SMALL_NODE(%struct.TYPE_15__* %119)
  %121 = icmp eq i64 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = call i32 @free_tree_ext_large_node(%struct.TYPE_15__* %124)
  br label %128

126:                                              ; preds = %66
  %127 = call i32 @assert(i32 0)
  br label %128

128:                                              ; preds = %126, %110, %94
  br label %129

129:                                              ; preds = %128, %41
  ret void
}

declare dso_local %struct.TYPE_15__* @LARGE_NODE(i32) #1

declare dso_local i32 @tree_ext_lookup(i64, i32) #1

declare dso_local i64 @SMALL_NODE(%struct.TYPE_15__*) #1

declare dso_local i32 @find_rpos_direct(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @object_id_equal(i32, i32) #1

declare dso_local i32 @get_data_direct(%struct.TYPE_16__*, i64) #1

declare dso_local %struct.TYPE_15__* @new_tree_subnode_large(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @MAKE_RPOS(i32, i32) #1

declare dso_local i32 @tree_ext_insert(i64, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @NODE_TYPE(%struct.TYPE_15__*) #1

declare dso_local %struct.tree_payload* @PAYLOAD(%struct.TYPE_15__*) #1

declare dso_local i32 @zfree(i32, i32) #1

declare dso_local i32 @get_text_data_len(i32) #1

declare dso_local i64 @tree_ext_adjust_deltas(i64, i32, i32) #1

declare dso_local i32 @tree_ext_delete(i64, i32) #1

declare dso_local i32 @free_tree_ext_large_node(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
