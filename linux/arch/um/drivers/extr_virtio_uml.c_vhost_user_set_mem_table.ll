; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_set_mem_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_set_mem_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32 }
%struct.vhost_user_msg = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@VHOST_USER_SET_MEM_TABLE = common dso_local global i32 0, align 4
@uml_reserved = common dso_local global i64 0, align 8
@uml_physmem = common dso_local global i64 0, align 8
@physmem_size = common dso_local global i64 0, align 8
@highmem = common dso_local global i64 0, align 8
@end_iomem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_uml_device*)* @vhost_user_set_mem_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_user_set_mem_table(%struct.virtio_uml_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_uml_device*, align 8
  %4 = alloca %struct.vhost_user_msg, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %3, align 8
  %8 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 16, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %15 = load i32, i32* @VHOST_USER_SET_MEM_TABLE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* @uml_reserved, align 8
  %17 = load i64, i64* @uml_physmem, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @physmem_size, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @vhost_user_init_mem_region(i64 %19, i64 %22, i32* %23, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %66

34:                                               ; preds = %1
  %35 = load i64, i64* @highmem, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @end_iomem, align 4
  %44 = call i64 @__pa(i32 %43)
  %45 = load i64, i64* @highmem, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %47 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = call i32 @vhost_user_init_mem_region(i64 %44, i64 %45, i32* %46, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %66

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %61 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %4, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @vhost_user_send(%struct.virtio_uml_device* %59, i32 0, %struct.vhost_user_msg* %4, i32* %60, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %55, %32
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @vhost_user_init_mem_region(i64, i64, i32*, i32*) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @vhost_user_send(%struct.virtio_uml_device*, i32, %struct.vhost_user_msg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
