; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_compute_struct_sizes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_compute_struct_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_id_ints = common dso_local global i32 0, align 4
@MAX_LIST_ID_INTS = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@MAX_OBJECT_ID_INTS = common dso_local global i32 0, align 4
@CB = common dso_local global i32 0, align 4
@CYCLIC_BUFFER_SIZE = common dso_local global i32 0, align 4
@cyclic_buffer_entry_size = common dso_local global i32 0, align 4
@MAXINT = common dso_local global i8* null, align 8
@cyclic_buffer_entry_ints = common dso_local global i32 0, align 4
@file_list_index_entry_size = common dso_local global i32 0, align 4
@list_id = common dso_local global i32 0, align 4
@list_id_bytes = common dso_local global i32 0, align 4
@list_struct_size = common dso_local global i8* null, align 8
@list_t = common dso_local global i32 0, align 4
@ltree_node_size = common dso_local global i32 0, align 4
@max_list_id = common dso_local global i8** null, align 8
@max_list_object_pair = common dso_local global i8** null, align 8
@max_object_id = common dso_local global i8** null, align 8
@object_id_bytes = common dso_local global i32 0, align 4
@object_list_bytes = common dso_local global i32 0, align 4
@object_list_ints = common dso_local global i32 0, align 4
@payload_offset = common dso_local global i32 0, align 4
@tree_ext_global_node_size = common dso_local global i8* null, align 8
@tree_ext_global_t = common dso_local global i32 0, align 4
@tree_ext_large_node_size = common dso_local global i32 0, align 4
@tree_ext_small_node_size = common dso_local global i32 0, align 4
@tree_ext_small_t = common dso_local global i32 0, align 4
@x = common dso_local global i32 0, align 4
@z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_struct_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_struct_sizes() #0 {
  %1 = load i32, i32* @list_id_ints, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @list_id_ints, align 4
  %5 = load i32, i32* @MAX_LIST_ID_INTS, align 4
  %6 = icmp sle i32 %4, %5
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i1 [ false, %0 ], [ %6, %3 ]
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @object_id_ints, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @object_id_ints, align 4
  %15 = load i32, i32* @MAX_OBJECT_ID_INTS, align 4
  %16 = icmp sle i32 %14, %15
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i1 [ false, %7 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @CB, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @CYCLIC_BUFFER_SIZE, align 4
  %27 = load i32, i32* @cyclic_buffer_entry_size, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @zzmalloc(i32 %28)
  store i32 %29, i32* @CB, align 4
  %30 = load i32, i32* @CB, align 4
  %31 = call i32 @assert(i32 %30)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zzmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
