; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_update_ref_for_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_update_ref_for_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32 }
%struct.binder_ref_data = type { i32 }
%struct.binder_ref = type { %struct.binder_ref_data }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_proc*, i32, i32, i32, %struct.binder_ref_data*)* @binder_update_ref_for_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_update_ref_for_handle(%struct.binder_proc* %0, i32 %1, i32 %2, i32 %3, %struct.binder_ref_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.binder_proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.binder_ref_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.binder_ref*, align 8
  %14 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.binder_ref_data* %4, %struct.binder_ref_data** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %16 = call i32 @binder_proc_lock(%struct.binder_proc* %15)
  %17 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.binder_ref* @binder_get_ref_olocked(%struct.binder_proc* %17, i32 %18, i32 %19)
  store %struct.binder_ref* %20, %struct.binder_ref** %13, align 8
  %21 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %22 = icmp ne %struct.binder_ref* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %56

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @binder_inc_ref_olocked(%struct.binder_ref* %30, i32 %31, i32* null)
  store i32 %32, i32* %12, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @binder_dec_ref_olocked(%struct.binder_ref* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.binder_ref_data*, %struct.binder_ref_data** %11, align 8
  %39 = icmp ne %struct.binder_ref_data* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.binder_ref_data*, %struct.binder_ref_data** %11, align 8
  %42 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %43 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %42, i32 0, i32 0
  %44 = bitcast %struct.binder_ref_data* %41 to i8*
  %45 = bitcast %struct.binder_ref_data* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %48 = call i32 @binder_proc_unlock(%struct.binder_proc* %47)
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.binder_ref*, %struct.binder_ref** %13, align 8
  %53 = call i32 @binder_free_ref(%struct.binder_ref* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %23
  %57 = load %struct.binder_proc*, %struct.binder_proc** %7, align 8
  %58 = call i32 @binder_proc_unlock(%struct.binder_proc* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %54
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @binder_proc_lock(%struct.binder_proc*) #1

declare dso_local %struct.binder_ref* @binder_get_ref_olocked(%struct.binder_proc*, i32, i32) #1

declare dso_local i32 @binder_inc_ref_olocked(%struct.binder_ref*, i32, i32*) #1

declare dso_local i32 @binder_dec_ref_olocked(%struct.binder_ref*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @binder_proc_unlock(%struct.binder_proc*) #1

declare dso_local i32 @binder_free_ref(%struct.binder_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
