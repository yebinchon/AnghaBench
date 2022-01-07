; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_write_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32 }
%struct.ceph_osd_request = type { i32 }

@RBD_OBJ_FLAG_COPYUP_ENABLED = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @rbd_obj_write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_write_object(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %9 = call i32 @count_write_ops(%struct.rbd_obj_request* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %11 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.ceph_osd_request* @rbd_obj_add_osd_request(%struct.rbd_obj_request* %20, i32 %21)
  store %struct.ceph_osd_request* %22, %struct.ceph_osd_request** %4, align 8
  %23 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %24 = call i64 @IS_ERR(%struct.ceph_osd_request* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.ceph_osd_request* %27)
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %31 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = call i32 @rbd_osd_setup_stat(%struct.ceph_osd_request* %37, i32 %38)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %62

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @rbd_osd_setup_write_ops(%struct.ceph_osd_request* %47, i32 %48)
  %50 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %51 = call i32 @rbd_osd_format_write(%struct.ceph_osd_request* %50)
  %52 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %53 = load i32, i32* @GFP_NOIO, align 4
  %54 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %46
  %60 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %61 = call i32 @rbd_osd_submit(%struct.ceph_osd_request* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %57, %43, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @count_write_ops(%struct.rbd_obj_request*) #1

declare dso_local %struct.ceph_osd_request* @rbd_obj_add_osd_request(%struct.rbd_obj_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @rbd_osd_setup_stat(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @rbd_osd_setup_write_ops(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @rbd_osd_format_write(%struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @rbd_osd_submit(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
