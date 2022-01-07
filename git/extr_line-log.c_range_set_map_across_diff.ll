; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_range_set_map_across_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_range_set_map_across_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i32 }
%struct.diff_ranges = type { i32, i32 }

@RANGE_SET_INIT = common dso_local global %struct.range_set zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range_set*, %struct.range_set*, %struct.diff_ranges*, %struct.diff_ranges**)* @range_set_map_across_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_set_map_across_diff(%struct.range_set* %0, %struct.range_set* %1, %struct.diff_ranges* %2, %struct.diff_ranges** %3) #0 {
  %5 = alloca %struct.range_set*, align 8
  %6 = alloca %struct.range_set*, align 8
  %7 = alloca %struct.diff_ranges*, align 8
  %8 = alloca %struct.diff_ranges**, align 8
  %9 = alloca %struct.diff_ranges*, align 8
  %10 = alloca %struct.range_set, align 4
  %11 = alloca %struct.range_set, align 4
  store %struct.range_set* %0, %struct.range_set** %5, align 8
  store %struct.range_set* %1, %struct.range_set** %6, align 8
  store %struct.diff_ranges* %2, %struct.diff_ranges** %7, align 8
  store %struct.diff_ranges** %3, %struct.diff_ranges*** %8, align 8
  %12 = call %struct.diff_ranges* @xmalloc(i32 8)
  store %struct.diff_ranges* %12, %struct.diff_ranges** %9, align 8
  %13 = bitcast %struct.range_set* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.range_set* @RANGE_SET_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.range_set* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.range_set* @RANGE_SET_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.diff_ranges*, %struct.diff_ranges** %9, align 8
  %16 = call i32 @diff_ranges_init(%struct.diff_ranges* %15)
  %17 = load %struct.diff_ranges*, %struct.diff_ranges** %9, align 8
  %18 = load %struct.diff_ranges*, %struct.diff_ranges** %7, align 8
  %19 = load %struct.range_set*, %struct.range_set** %6, align 8
  %20 = call i32 @diff_ranges_filter_touched(%struct.diff_ranges* %17, %struct.diff_ranges* %18, %struct.range_set* %19)
  %21 = load %struct.range_set*, %struct.range_set** %6, align 8
  %22 = load %struct.diff_ranges*, %struct.diff_ranges** %9, align 8
  %23 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %22, i32 0, i32 1
  %24 = call i32 @range_set_difference(%struct.range_set* %10, %struct.range_set* %21, i32* %23)
  %25 = load %struct.diff_ranges*, %struct.diff_ranges** %7, align 8
  %26 = call i32 @range_set_shift_diff(%struct.range_set* %11, %struct.range_set* %10, %struct.diff_ranges* %25)
  %27 = load %struct.range_set*, %struct.range_set** %5, align 8
  %28 = load %struct.diff_ranges*, %struct.diff_ranges** %9, align 8
  %29 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %28, i32 0, i32 0
  %30 = call i32 @range_set_union(%struct.range_set* %27, %struct.range_set* %11, i32* %29)
  %31 = call i32 @range_set_release(%struct.range_set* %10)
  %32 = call i32 @range_set_release(%struct.range_set* %11)
  %33 = load %struct.diff_ranges*, %struct.diff_ranges** %9, align 8
  %34 = load %struct.diff_ranges**, %struct.diff_ranges*** %8, align 8
  store %struct.diff_ranges* %33, %struct.diff_ranges** %34, align 8
  ret void
}

declare dso_local %struct.diff_ranges* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @diff_ranges_init(%struct.diff_ranges*) #1

declare dso_local i32 @diff_ranges_filter_touched(%struct.diff_ranges*, %struct.diff_ranges*, %struct.range_set*) #1

declare dso_local i32 @range_set_difference(%struct.range_set*, %struct.range_set*, i32*) #1

declare dso_local i32 @range_set_shift_diff(%struct.range_set*, %struct.range_set*, %struct.diff_ranges*) #1

declare dso_local i32 @range_set_union(%struct.range_set*, %struct.range_set*, i32*) #1

declare dso_local i32 @range_set_release(%struct.range_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
