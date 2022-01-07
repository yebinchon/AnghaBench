; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_dalloc_wrapper.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_dalloc_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)* }
%struct.TYPE_17__ = type { i32 }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@extent_state_muzzy = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_dalloc_wrapper(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i32 @extent_dumpable_get(i32* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @tsdn_witness_tsdp_get(i32* %13)
  %15 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %16 = call i32 @witness_assert_depth_to_rank(i32 %14, i32 %15, i32 0)
  %17 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, @extent_hooks_default
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = call i64 (...) @extent_may_dalloc()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @extent_deregister(i32* %24, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @extent_dalloc_wrapper_try(i32* %27, %struct.TYPE_17__* %28, %struct.TYPE_16__** %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %143

34:                                               ; preds = %23
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @extent_reregister(i32* %35, i32* %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, @extent_hooks_default
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = call i32 @extent_hook_pre_reentrancy(i32* %43, %struct.TYPE_17__* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @extent_committed_get(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %118

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @extent_size_get(i32* %56)
  %58 = call i32 @extent_decommit_wrapper(i32* %52, %struct.TYPE_17__* %53, %struct.TYPE_16__** %54, i32* %55, i32 0, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %117

61:                                               ; preds = %51
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %70, align 8
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @extent_base_get(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @extent_size_get(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @extent_size_get(i32* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = call i32 @arena_ind_get(%struct.TYPE_17__* %80)
  %82 = call i32 %71(%struct.TYPE_16__* %73, i32 %75, i32 %77, i32 0, i32 %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  br label %116

85:                                               ; preds = %67, %61
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @extent_state_get(i32* %86)
  %88 = load i64, i64* @extent_state_muzzy, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %113, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %93, align 8
  %95 = icmp ne i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32, i32)** %99, align 8
  %101 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @extent_base_get(i32* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @extent_size_get(i32* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @extent_size_get(i32* %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = call i32 @arena_ind_get(%struct.TYPE_17__* %109)
  %111 = call i32 %100(%struct.TYPE_16__* %102, i32 %104, i32 %106, i32 0, i32 %108, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %96, %85
  store i32 0, i32* %9, align 4
  br label %115

114:                                              ; preds = %96, %90
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116, %60
  br label %118

118:                                              ; preds = %117, %50
  %119 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = icmp ne %struct.TYPE_16__* %120, @extent_hooks_default
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @extent_hook_post_reentrancy(i32* %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @extent_zeroed_set(i32* %126, i32 %127)
  %129 = load i64, i64* @config_prof, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32*, i32** %5, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @extent_gdump_sub(i32* %132, i32* %133)
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @extent_record(i32* %136, %struct.TYPE_17__* %137, %struct.TYPE_16__** %138, i32* %140, i32* %141, i32 0)
  br label %143

143:                                              ; preds = %135, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_dumpable_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i64 @extent_may_dalloc(...) #1

declare dso_local i32 @extent_deregister(i32*, i32*) #1

declare dso_local i32 @extent_dalloc_wrapper_try(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*) #1

declare dso_local i32 @extent_reregister(i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @extent_decommit_wrapper(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*, i32, i32) #1

declare dso_local i32 @extent_size_get(i32*) #1

declare dso_local i32 @extent_base_get(i32*) #1

declare dso_local i32 @arena_ind_get(%struct.TYPE_17__*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i32 @extent_gdump_sub(i32*, i32*) #1

declare dso_local i32 @extent_record(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
