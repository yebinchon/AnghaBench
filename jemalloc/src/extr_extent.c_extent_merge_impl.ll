; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_merge_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_merge_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i64)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@extents_rtree = common dso_local global i32 0, align 4
@SC_NSIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__**, i32*, i32*, i32)* @extent_merge_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_merge_impl(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @tsdn_witness_tsdp_get(i32* %21)
  %23 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = call i32 @witness_assert_depth_to_rank(i32 %22, i32 %23, i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @extent_base_get(i32* %29)
  %31 = load i32*, i32** %12, align 8
  %32 = call i64 @extent_base_get(i32* %31)
  %33 = icmp slt i64 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %38 = call i32 @extent_hooks_assure_initialized(i32* %36, %struct.TYPE_6__** %37)
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i64)*, i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i64)** %41, align 8
  %43 = icmp eq i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i64)* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %6
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i64 @extent_head_no_merge(i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %6
  store i32 1, i32* %7, align 4
  br label %180

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp eq %struct.TYPE_6__* %52, @extent_hooks_default
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @extent_base_get(i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @extent_base_get(i32* %57)
  %59 = call i32 @extent_merge_default_impl(i64 %56, i64 %58)
  store i32 %59, i32* %14, align 4
  br label %85

60:                                               ; preds = %50
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @extent_hook_pre_reentrancy(i32* %61, i32* %62)
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i64)*, i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i64)** %66, align 8
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i64 @extent_base_get(i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i64 @extent_size_get(i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = call i64 @extent_base_get(i32* %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i64 @extent_size_get(i32* %76)
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @extent_committed_get(i32* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @arena_ind_get(i32* %80)
  %82 = call i32 %67(%struct.TYPE_6__* %69, i64 %71, i64 %73, i64 %75, i64 %77, i32 %79, i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @extent_hook_post_reentrancy(i32* %83)
  br label %85

85:                                               ; preds = %60, %54
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* %7, align 4
  br label %180

89:                                               ; preds = %85
  %90 = load i32*, i32** %8, align 8
  %91 = call i32* @tsdn_rtree_ctx(i32* %90, i32* %15)
  store i32* %91, i32** %16, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @extent_rtree_leaf_elms_lookup(i32* %92, i32* %93, i32* %94, i32 1, i32 0, i32** %17, i32** %18)
  %96 = load i32*, i32** %8, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @extent_rtree_leaf_elms_lookup(i32* %96, i32* %97, i32* %98, i32 1, i32 0, i32** %19, i32** %20)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @extent_lock2(i32* %100, i32* %101, i32* %102)
  %104 = load i32*, i32** %18, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %89
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* @SC_NSIZES, align 4
  %110 = call i32 @rtree_leaf_elm_write(i32* %107, i32* @extents_rtree, i32* %108, i32* null, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %106, %89
  %112 = load i32*, i32** %20, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32*, i32** %8, align 8
  %116 = load i32*, i32** %19, align 8
  %117 = load i32, i32* @SC_NSIZES, align 4
  %118 = call i32 @rtree_leaf_elm_write(i32* %115, i32* @extents_rtree, i32* %116, i32* null, i32 %117, i32 0)
  br label %121

119:                                              ; preds = %111
  %120 = load i32*, i32** %19, align 8
  store i32* %120, i32** %20, align 8
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i32*, i32** %11, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i64 @extent_size_get(i32* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = call i64 @extent_size_get(i32* %125)
  %127 = add nsw i64 %124, %126
  %128 = call i32 @extent_size_set(i32* %122, i64 %127)
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* @SC_NSIZES, align 4
  %131 = call i32 @extent_szind_set(i32* %129, i32 %130)
  %132 = load i32*, i32** %11, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i64 @extent_sn_get(i32* %133)
  %135 = load i32*, i32** %12, align 8
  %136 = call i64 @extent_sn_get(i32* %135)
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %121
  %139 = load i32*, i32** %11, align 8
  %140 = call i64 @extent_sn_get(i32* %139)
  br label %144

141:                                              ; preds = %121
  %142 = load i32*, i32** %12, align 8
  %143 = call i64 @extent_sn_get(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i64 [ %140, %138 ], [ %143, %141 ]
  %146 = call i32 @extent_sn_set(i32* %132, i64 %145)
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = call i64 @extent_zeroed_get(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32*, i32** %12, align 8
  %153 = call i64 @extent_zeroed_get(i32* %152)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %151, %144
  %156 = phi i1 [ false, %144 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @extent_zeroed_set(i32* %147, i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i32*, i32** %20, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* @SC_NSIZES, align 4
  %164 = call i32 @extent_rtree_write_acquired(i32* %159, i32* %160, i32* %161, i32* %162, i32 %163, i32 0)
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @extent_unlock2(i32* %165, i32* %166, i32* %167)
  %169 = load i32*, i32** %12, align 8
  %170 = call i64 @extent_arena_ind_get(i32* %169)
  %171 = load i32*, i32** %9, align 8
  %172 = call i64 @arena_ind_get(i32* %171)
  %173 = icmp eq i64 %170, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32*, i32** %8, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = call i32 @extent_dalloc(i32* %176, i32* %177, i32* %178)
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %155, %88, %49
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i64 @extent_head_no_merge(i32*, i32*) #1

declare dso_local i32 @extent_merge_default_impl(i64, i64) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i64 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @extent_rtree_leaf_elms_lookup(i32*, i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local i32 @extent_lock2(i32*, i32*, i32*) #1

declare dso_local i32 @rtree_leaf_elm_write(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_size_set(i32*, i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @extent_sn_set(i32*, i64) #1

declare dso_local i64 @extent_sn_get(i32*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i64 @extent_zeroed_get(i32*) #1

declare dso_local i32 @extent_rtree_write_acquired(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_unlock2(i32*, i32*, i32*) #1

declare dso_local i64 @extent_arena_ind_get(i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
