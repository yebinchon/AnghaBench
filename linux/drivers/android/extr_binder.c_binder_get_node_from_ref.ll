; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_get_node_from_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_get_node_from_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_node = type { i32 }
%struct.binder_proc = type { i32 }
%struct.binder_ref_data = type { i32 }
%struct.binder_ref = type { %struct.binder_ref_data, %struct.binder_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.binder_node* (%struct.binder_proc*, i32, i32, %struct.binder_ref_data*)* @binder_get_node_from_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.binder_node* @binder_get_node_from_ref(%struct.binder_proc* %0, i32 %1, i32 %2, %struct.binder_ref_data* %3) #0 {
  %5 = alloca %struct.binder_node*, align 8
  %6 = alloca %struct.binder_proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.binder_ref_data*, align 8
  %10 = alloca %struct.binder_node*, align 8
  %11 = alloca %struct.binder_ref*, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.binder_ref_data* %3, %struct.binder_ref_data** %9, align 8
  %12 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %13 = call i32 @binder_proc_lock(%struct.binder_proc* %12)
  %14 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.binder_ref* @binder_get_ref_olocked(%struct.binder_proc* %14, i32 %15, i32 %16)
  store %struct.binder_ref* %17, %struct.binder_ref** %11, align 8
  %18 = load %struct.binder_ref*, %struct.binder_ref** %11, align 8
  %19 = icmp ne %struct.binder_ref* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %39

21:                                               ; preds = %4
  %22 = load %struct.binder_ref*, %struct.binder_ref** %11, align 8
  %23 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %22, i32 0, i32 1
  %24 = load %struct.binder_node*, %struct.binder_node** %23, align 8
  store %struct.binder_node* %24, %struct.binder_node** %10, align 8
  %25 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  %26 = call i32 @binder_inc_node_tmpref(%struct.binder_node* %25)
  %27 = load %struct.binder_ref_data*, %struct.binder_ref_data** %9, align 8
  %28 = icmp ne %struct.binder_ref_data* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.binder_ref_data*, %struct.binder_ref_data** %9, align 8
  %31 = load %struct.binder_ref*, %struct.binder_ref** %11, align 8
  %32 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %31, i32 0, i32 0
  %33 = bitcast %struct.binder_ref_data* %30 to i8*
  %34 = bitcast %struct.binder_ref_data* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 8 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %37 = call i32 @binder_proc_unlock(%struct.binder_proc* %36)
  %38 = load %struct.binder_node*, %struct.binder_node** %10, align 8
  store %struct.binder_node* %38, %struct.binder_node** %5, align 8
  br label %42

39:                                               ; preds = %20
  %40 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %41 = call i32 @binder_proc_unlock(%struct.binder_proc* %40)
  store %struct.binder_node* null, %struct.binder_node** %5, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  ret %struct.binder_node* %43
}

declare dso_local i32 @binder_proc_lock(%struct.binder_proc*) #1

declare dso_local %struct.binder_ref* @binder_get_ref_olocked(%struct.binder_proc*, i32, i32) #1

declare dso_local i32 @binder_inc_node_tmpref(%struct.binder_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @binder_proc_unlock(%struct.binder_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
