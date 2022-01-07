; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_split_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_split_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@EXTENT_NOT_HEAD = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_6__**, i32*, i64, i32, i32, i64, i32, i32, i32)* @extent_split_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_split_impl(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i64 %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i64 %7, i64* %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = call i64 @extent_size_get(i32* %33)
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %20, align 8
  %37 = add i64 %35, %36
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @tsdn_witness_tsdp_get(i32* %41)
  %43 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %44 = load i32, i32* %23, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 @witness_assert_depth_to_rank(i32 %42, i32 %43, i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %51 = call i32 @extent_hooks_assure_initialized(i32* %49, %struct.TYPE_6__** %50)
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)** %54, align 8
  %56 = icmp eq i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %11
  store i32* null, i32** %12, align 8
  br label %207

58:                                               ; preds = %11
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32* @extent_alloc(i32* %59, i32* %60)
  store i32* %61, i32** %24, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %206

65:                                               ; preds = %58
  %66 = load i32*, i32** %24, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @arena_ind_get(i32* %67)
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @extent_base_get(i32* %69)
  %71 = load i64, i64* %17, align 8
  %72 = add i64 %70, %71
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %20, align 8
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @extent_sn_get(i32* %77)
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @extent_state_get(i32* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @extent_zeroed_get(i32* %81)
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @extent_committed_get(i32* %83)
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @extent_dumpable_get(i32* %85)
  %87 = load i32, i32* @EXTENT_NOT_HEAD, align 4
  %88 = call i32 @extent_init(i32* %66, i32 %68, i8* %73, i64 %74, i32 %75, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86, i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32* @tsdn_rtree_ctx(i32* %89, i32* %25)
  store i32* %90, i32** %26, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @arena_ind_get(i32* %91)
  %93 = load i32*, i32** %16, align 8
  %94 = call i8* @extent_addr_get(i32* %93)
  %95 = load i64, i64* %17, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @extent_sn_get(i32* %98)
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @extent_state_get(i32* %100)
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @extent_zeroed_get(i32* %102)
  %104 = load i32*, i32** %16, align 8
  %105 = call i32 @extent_committed_get(i32* %104)
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @extent_dumpable_get(i32* %106)
  %108 = load i32, i32* @EXTENT_NOT_HEAD, align 4
  %109 = call i32 @extent_init(i32* %29, i32 %92, i8* %94, i64 %95, i32 %96, i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load i32*, i32** %26, align 8
  %112 = call i32 @extent_rtree_leaf_elms_lookup(i32* %110, i32* %111, i32* %29, i32 0, i32 1, i32** %27, i32** %28)
  %113 = load i32*, i32** %13, align 8
  %114 = load i32*, i32** %26, align 8
  %115 = load i32*, i32** %24, align 8
  %116 = call i32 @extent_rtree_leaf_elms_lookup(i32* %113, i32* %114, i32* %115, i32 0, i32 1, i32** %30, i32** %31)
  %117 = load i32*, i32** %27, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %128, label %119

119:                                              ; preds = %65
  %120 = load i32*, i32** %28, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32*, i32** %30, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32*, i32** %31, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %122, %119, %65
  br label %201

129:                                              ; preds = %125
  %130 = load i32*, i32** %13, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load i32*, i32** %24, align 8
  %133 = call i32 @extent_lock2(i32* %130, i32* %131, i32* %132)
  %134 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = icmp ne %struct.TYPE_6__* %135, @extent_hooks_default
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32*, i32** %13, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @extent_hook_pre_reentrancy(i32* %138, i32* %139)
  br label %141

141:                                              ; preds = %137, %129
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64, i64, i64, i64, i32, i32)** %144, align 8
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = call i64 @extent_base_get(i32* %148)
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %20, align 8
  %152 = add i64 %150, %151
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %20, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = call i32 @extent_committed_get(i32* %155)
  %157 = load i32*, i32** %14, align 8
  %158 = call i32 @arena_ind_get(i32* %157)
  %159 = call i32 %145(%struct.TYPE_6__* %147, i64 %149, i64 %152, i64 %153, i64 %154, i32 %156, i32 %158)
  store i32 %159, i32* %32, align 4
  %160 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = icmp ne %struct.TYPE_6__* %161, @extent_hooks_default
  br i1 %162, label %163, label %166

163:                                              ; preds = %141
  %164 = load i32*, i32** %13, align 8
  %165 = call i32 @extent_hook_post_reentrancy(i32* %164)
  br label %166

166:                                              ; preds = %163, %141
  %167 = load i32, i32* %32, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %196

170:                                              ; preds = %166
  %171 = load i32*, i32** %16, align 8
  %172 = load i64, i64* %17, align 8
  %173 = call i32 @extent_size_set(i32* %171, i64 %172)
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @extent_szind_set(i32* %174, i32 %175)
  %177 = load i32*, i32** %13, align 8
  %178 = load i32*, i32** %27, align 8
  %179 = load i32*, i32** %28, align 8
  %180 = load i32*, i32** %16, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @extent_rtree_write_acquired(i32* %177, i32* %178, i32* %179, i32* %180, i32 %181, i32 %182)
  %184 = load i32*, i32** %13, align 8
  %185 = load i32*, i32** %30, align 8
  %186 = load i32*, i32** %31, align 8
  %187 = load i32*, i32** %24, align 8
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %22, align 4
  %190 = call i32 @extent_rtree_write_acquired(i32* %184, i32* %185, i32* %186, i32* %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %16, align 8
  %193 = load i32*, i32** %24, align 8
  %194 = call i32 @extent_unlock2(i32* %191, i32* %192, i32* %193)
  %195 = load i32*, i32** %24, align 8
  store i32* %195, i32** %12, align 8
  br label %207

196:                                              ; preds = %169
  %197 = load i32*, i32** %13, align 8
  %198 = load i32*, i32** %16, align 8
  %199 = load i32*, i32** %24, align 8
  %200 = call i32 @extent_unlock2(i32* %197, i32* %198, i32* %199)
  br label %201

201:                                              ; preds = %196, %128
  %202 = load i32*, i32** %13, align 8
  %203 = load i32*, i32** %14, align 8
  %204 = load i32*, i32** %24, align 8
  %205 = call i32 @extent_dalloc(i32* %202, i32* %203, i32* %204)
  br label %206

206:                                              ; preds = %201, %64
  store i32* null, i32** %12, align 8
  br label %207

207:                                              ; preds = %206, %170, %57
  %208 = load i32*, i32** %12, align 8
  ret i32* %208
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32* @extent_alloc(i32*, i32*) #1

declare dso_local i32 @extent_init(i32*, i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i32 @extent_sn_get(i32*) #1

declare dso_local i32 @extent_state_get(i32*) #1

declare dso_local i32 @extent_zeroed_get(i32*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @extent_dumpable_get(i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i8* @extent_addr_get(i32*) #1

declare dso_local i32 @extent_rtree_leaf_elms_lookup(i32*, i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local i32 @extent_lock2(i32*, i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_size_set(i32*, i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @extent_rtree_write_acquired(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_unlock2(i32*, i32*, i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
