; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_inc_ref_for_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_inc_ref_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32 }
%struct.binder_node = type { i32 }
%struct.list_head = type { i32 }
%struct.binder_ref_data = type { i32 }
%struct.binder_ref = type { %struct.binder_ref_data }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_proc*, %struct.binder_node*, i32, %struct.list_head*, %struct.binder_ref_data*)* @binder_inc_ref_for_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_inc_ref_for_node(%struct.binder_proc* %0, %struct.binder_node* %1, i32 %2, %struct.list_head* %3, %struct.binder_ref_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.binder_proc*, align 8
  %8 = alloca %struct.binder_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.binder_ref_data*, align 8
  %12 = alloca %struct.binder_ref*, align 8
  %13 = alloca %struct.binder_ref*, align 8
  %14 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %7, align 8
  store %struct.binder_node* %1, %struct.binder_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store %struct.binder_ref_data* %4, %struct.binder_ref_data** %11, align 8
  store %struct.binder_ref* null, %struct.binder_ref** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %16 = call i32 @binder_proc_lock(%struct.binder_proc* %15)
  %17 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %18 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %19 = call %struct.binder_ref* @binder_get_ref_for_node_olocked(%struct.binder_proc* %17, %struct.binder_node* %18, %struct.binder_ref* null)
  store %struct.binder_ref* %19, %struct.binder_ref** %12, align 8
  %20 = load %struct.binder_ref*, %struct.binder_ref** %12, align 8
  %21 = icmp ne %struct.binder_ref* %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %5
  %23 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %24 = call i32 @binder_proc_unlock(%struct.binder_proc* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.binder_ref* @kzalloc(i32 4, i32 %25)
  store %struct.binder_ref* %26, %struct.binder_ref** %13, align 8
  %27 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %28 = icmp ne %struct.binder_ref* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %34 = call i32 @binder_proc_lock(%struct.binder_proc* %33)
  %35 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %36 = load %struct.binder_node*, %struct.binder_node** %8, align 8
  %37 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %38 = call %struct.binder_ref* @binder_get_ref_for_node_olocked(%struct.binder_proc* %35, %struct.binder_node* %36, %struct.binder_ref* %37)
  store %struct.binder_ref* %38, %struct.binder_ref** %12, align 8
  br label %39

39:                                               ; preds = %32, %5
  %40 = load %struct.binder_ref*, %struct.binder_ref** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.list_head*, %struct.list_head** %10, align 8
  %43 = call i32 @binder_inc_ref_olocked(%struct.binder_ref* %40, i32 %41, %struct.list_head* %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.binder_ref_data*, %struct.binder_ref_data** %11, align 8
  %45 = load %struct.binder_ref*, %struct.binder_ref** %12, align 8
  %46 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %45, i32 0, i32 0
  %47 = bitcast %struct.binder_ref_data* %44 to i8*
  %48 = bitcast %struct.binder_ref_data* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %50 = call i32 @binder_proc_unlock(%struct.binder_proc* %49)
  %51 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %52 = icmp ne %struct.binder_ref* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.binder_ref*, %struct.binder_ref** %12, align 8
  %55 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %56 = icmp ne %struct.binder_ref* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %59 = call i32 @kfree(%struct.binder_ref* %58)
  br label %60

60:                                               ; preds = %57, %53, %39
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %29
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @binder_proc_lock(%struct.binder_proc*) #1

declare dso_local %struct.binder_ref* @binder_get_ref_for_node_olocked(%struct.binder_proc*, %struct.binder_node*, %struct.binder_ref*) #1

declare dso_local i32 @binder_proc_unlock(%struct.binder_proc*) #1

declare dso_local %struct.binder_ref* @kzalloc(i32, i32) #1

declare dso_local i32 @binder_inc_ref_olocked(%struct.binder_ref*, i32, %struct.list_head*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.binder_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
