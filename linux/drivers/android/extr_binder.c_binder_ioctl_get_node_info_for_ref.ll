; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_ioctl_get_node_info_for_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_ioctl_get_node_info_for_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32, %struct.binder_context* }
%struct.binder_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.binder_proc* }
%struct.binder_node_info_for_ref = type { i32, i64, i64, i64, i64, i32 }
%struct.binder_node = type { i32, i64, i64 }

@.str = private unnamed_addr constant [62 x i8] c"%d BINDER_GET_NODE_INFO_FOR_REF: only handle may be non-zero.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_proc*, %struct.binder_node_info_for_ref*)* @binder_ioctl_get_node_info_for_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_ioctl_get_node_info_for_ref(%struct.binder_proc* %0, %struct.binder_node_info_for_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binder_proc*, align 8
  %5 = alloca %struct.binder_node_info_for_ref*, align 8
  %6 = alloca %struct.binder_node*, align 8
  %7 = alloca %struct.binder_context*, align 8
  %8 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %4, align 8
  store %struct.binder_node_info_for_ref* %1, %struct.binder_node_info_for_ref** %5, align 8
  %9 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %10 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %9, i32 0, i32 1
  %11 = load %struct.binder_context*, %struct.binder_context** %10, align 8
  store %struct.binder_context* %11, %struct.binder_context** %7, align 8
  %12 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %13 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %16 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %2
  %20 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %21 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %26 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %31 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %36 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %29, %24, %19, %2
  %40 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %41 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @binder_user_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %97

46:                                               ; preds = %34
  %47 = load %struct.binder_context*, %struct.binder_context** %7, align 8
  %48 = getelementptr inbounds %struct.binder_context, %struct.binder_context* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.binder_context*, %struct.binder_context** %7, align 8
  %51 = getelementptr inbounds %struct.binder_context, %struct.binder_context* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.binder_context*, %struct.binder_context** %7, align 8
  %56 = getelementptr inbounds %struct.binder_context, %struct.binder_context* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.binder_proc*, %struct.binder_proc** %58, align 8
  %60 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %61 = icmp ne %struct.binder_proc* %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54, %46
  %63 = load %struct.binder_context*, %struct.binder_context** %7, align 8
  %64 = getelementptr inbounds %struct.binder_context, %struct.binder_context* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %97

68:                                               ; preds = %54
  %69 = load %struct.binder_context*, %struct.binder_context** %7, align 8
  %70 = getelementptr inbounds %struct.binder_context, %struct.binder_context* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.binder_node* @binder_get_node_from_ref(%struct.binder_proc* %72, i32 %73, i32 1, i32* null)
  store %struct.binder_node* %74, %struct.binder_node** %6, align 8
  %75 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  %76 = icmp ne %struct.binder_node* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %97

80:                                               ; preds = %68
  %81 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  %82 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  %85 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %89 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  %91 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.binder_node_info_for_ref*, %struct.binder_node_info_for_ref** %5, align 8
  %94 = getelementptr inbounds %struct.binder_node_info_for_ref, %struct.binder_node_info_for_ref* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  %96 = call i32 @binder_put_node(%struct.binder_node* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %80, %77, %62, %39
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @binder_user_error(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.binder_node* @binder_get_node_from_ref(%struct.binder_proc*, i32, i32, i32*) #1

declare dso_local i32 @binder_put_node(%struct.binder_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
