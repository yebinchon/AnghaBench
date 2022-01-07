; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_delete_sublist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_delete_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tree_payload = type { i32, i32 }

@f_xor_c = common dso_local global i32 0, align 4
@f_and_c = common dso_local global i32 0, align 4
@tree_delete_sublist.ltree_key = internal global i32 0, align 4
@M_List = common dso_local global %struct.TYPE_6__* null, align 8
@object_tree = common dso_local global i32 0, align 4
@tot_list_entries = common dso_local global i32 0, align 4
@f_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @tree_delete_sublist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_delete_sublist(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.tree_payload*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call %struct.tree_payload* @LPAYLOAD(%struct.TYPE_5__* %5)
  store %struct.tree_payload* %6, %struct.tree_payload** %4, align 8
  %7 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %8 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @f_xor_c, align 4
  %11 = xor i32 %9, %10
  %12 = load i32, i32* @f_and_c, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %20 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %23 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @delete_list_entry_aux(i32 %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @M_List, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @combine_ltree_x(i32 %28, i32 %31, i32* @tree_delete_sublist.ltree_key)
  %33 = load i32, i32* @object_tree, align 4
  %34 = load i32, i32* @tree_delete_sublist.ltree_key, align 4
  %35 = call i32 @ltree_delete(i32 %33, i32 %34)
  store i32 %35, i32* @object_tree, align 4
  %36 = load i32, i32* @tot_list_entries, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @tot_list_entries, align 4
  %38 = load i32, i32* @f_cnt, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @f_cnt, align 4
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.tree_payload* @LPAYLOAD(%struct.TYPE_5__*) #1

declare dso_local i32 @delete_list_entry_aux(i32, i32, i32) #1

declare dso_local i32 @combine_ltree_x(i32, i32, i32*) #1

declare dso_local i32 @ltree_delete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
