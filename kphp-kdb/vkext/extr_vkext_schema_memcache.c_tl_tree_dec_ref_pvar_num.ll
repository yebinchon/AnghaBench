; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_dec_ref_pvar_num.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_dec_ref_pvar_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_var_num = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@total_ref_cnt = common dso_local global i32 0, align 4
@persistent_tree_nodes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_tree_dec_ref_pvar_num(%struct.tl_tree* %0) #0 {
  %2 = alloca %struct.tl_tree*, align 8
  %3 = alloca %struct.tl_tree_var_num*, align 8
  store %struct.tl_tree* %0, %struct.tl_tree** %2, align 8
  %4 = load i32, i32* @total_ref_cnt, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @total_ref_cnt, align 4
  %6 = load %struct.tl_tree*, %struct.tl_tree** %2, align 8
  %7 = bitcast %struct.tl_tree* %6 to i8*
  %8 = bitcast i8* %7 to %struct.tl_tree_var_num*
  store %struct.tl_tree_var_num* %8, %struct.tl_tree_var_num** %3, align 8
  %9 = load %struct.tl_tree_var_num*, %struct.tl_tree_var_num** %3, align 8
  %10 = getelementptr inbounds %struct.tl_tree_var_num, %struct.tl_tree_var_num* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.tl_tree_var_num*, %struct.tl_tree_var_num** %3, align 8
  %15 = getelementptr inbounds %struct.tl_tree_var_num, %struct.tl_tree_var_num* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @persistent_tree_nodes, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @persistent_tree_nodes, align 4
  %23 = load %struct.tl_tree_var_num*, %struct.tl_tree_var_num** %3, align 8
  %24 = call i32 @zzfree(%struct.tl_tree_var_num* %23, i32 8)
  %25 = call i32 @ADD_PFREE(i32 8)
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @zzfree(%struct.tl_tree_var_num*, i32) #1

declare dso_local i32 @ADD_PFREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
