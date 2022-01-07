; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_setup_vq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_setup_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_uml_vq_info* }
%struct.virtio_uml_vq_info = type { i32, i32, i32 }
%struct.virtio_device = type { i32 }
%struct.virtio_uml_device = type { %struct.platform_device* }
%struct.platform_device = type { i8*, i32 }

@MAX_SUPPORTED_QUEUE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s.%d-%s\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@vu_notify = common dso_local global i32 0, align 4
@VIRTIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, i32*, i8*, i32)* @vu_setup_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @vu_setup_vq(%struct.virtio_device* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.virtqueue*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtio_uml_device*, align 8
  %13 = alloca %struct.platform_device*, align 8
  %14 = alloca %struct.virtio_uml_vq_info*, align 8
  %15 = alloca %struct.virtqueue*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %19 = call %struct.virtio_uml_device* @to_virtio_uml_device(%struct.virtio_device* %18)
  store %struct.virtio_uml_device* %19, %struct.virtio_uml_device** %12, align 8
  %20 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %12, align 8
  %21 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %20, i32 0, i32 0
  %22 = load %struct.platform_device*, %struct.platform_device** %21, align 8
  store %struct.platform_device* %22, %struct.platform_device** %13, align 8
  %23 = load i32, i32* @MAX_SUPPORTED_QUEUE_SIZE, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.virtio_uml_vq_info* @kzalloc(i32 12, i32 %24)
  store %struct.virtio_uml_vq_info* %25, %struct.virtio_uml_vq_info** %14, align 8
  %26 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %27 = icmp ne %struct.virtio_uml_vq_info* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %17, align 4
  br label %128

31:                                               ; preds = %5
  %32 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %33 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %40, i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @vu_notify, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %51 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.virtqueue* @vring_create_virtqueue(i32 %43, i32 %44, i32 %45, %struct.virtio_device* %46, i32 1, i32 1, i32 %47, i32 %48, i32* %49, i32 %52)
  store %struct.virtqueue* %53, %struct.virtqueue** %15, align 8
  %54 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %55 = icmp ne %struct.virtqueue* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %31
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %17, align 4
  br label %125

59:                                               ; preds = %31
  %60 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %61 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %62 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %61, i32 0, i32 0
  store %struct.virtio_uml_vq_info* %60, %struct.virtio_uml_vq_info** %62, align 8
  %63 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %64 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %63)
  store i32 %64, i32* %16, align 4
  %65 = call i32 @os_eventfd(i32 0, i32 0)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %122

69:                                               ; preds = %59
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %72 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %12, align 8
  %74 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %75 = call i32 @vu_setup_vq_call_fd(%struct.virtio_uml_device* %73, %struct.virtqueue* %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %117

79:                                               ; preds = %69
  %80 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %12, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @vhost_user_set_vring_num(%struct.virtio_uml_device* %80, i32 %81, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %109

87:                                               ; preds = %79
  %88 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %12, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @vhost_user_set_vring_base(%struct.virtio_uml_device* %88, i32 %89, i32 0)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %109

94:                                               ; preds = %87
  %95 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %98 = call i32 @virtqueue_get_desc_addr(%struct.virtqueue* %97)
  %99 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %100 = call i32 @virtqueue_get_used_addr(%struct.virtqueue* %99)
  %101 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %102 = call i32 @virtqueue_get_avail_addr(%struct.virtqueue* %101)
  %103 = call i32 @vhost_user_set_vring_addr(%struct.virtio_uml_device* %95, i32 %96, i32 %98, i32 %100, i32 %102, i32 -1)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %109

107:                                              ; preds = %94
  %108 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  store %struct.virtqueue* %108, %struct.virtqueue** %6, align 8
  br label %131

109:                                              ; preds = %106, %93, %86
  %110 = load i32, i32* @VIRTIO_IRQ, align 4
  %111 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %112 = call i32 @um_free_irq(i32 %110, %struct.virtqueue* %111)
  %113 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %114 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @os_close_file(i32 %115)
  br label %117

117:                                              ; preds = %109, %78
  %118 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %119 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @os_close_file(i32 %120)
  br label %122

122:                                              ; preds = %117, %68
  %123 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  %124 = call i32 @vring_del_virtqueue(%struct.virtqueue* %123)
  br label %125

125:                                              ; preds = %122, %56
  %126 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %14, align 8
  %127 = call i32 @kfree(%struct.virtio_uml_vq_info* %126)
  br label %128

128:                                              ; preds = %125, %28
  %129 = load i32, i32* %17, align 4
  %130 = call %struct.virtqueue* @ERR_PTR(i32 %129)
  store %struct.virtqueue* %130, %struct.virtqueue** %6, align 8
  br label %131

131:                                              ; preds = %128, %107
  %132 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  ret %struct.virtqueue* %132
}

declare dso_local %struct.virtio_uml_device* @to_virtio_uml_device(%struct.virtio_device*) #1

declare dso_local %struct.virtio_uml_vq_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i8*) #1

declare dso_local %struct.virtqueue* @vring_create_virtqueue(i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @virtqueue_get_vring_size(%struct.virtqueue*) #1

declare dso_local i32 @os_eventfd(i32, i32) #1

declare dso_local i32 @vu_setup_vq_call_fd(%struct.virtio_uml_device*, %struct.virtqueue*) #1

declare dso_local i32 @vhost_user_set_vring_num(%struct.virtio_uml_device*, i32, i32) #1

declare dso_local i32 @vhost_user_set_vring_base(%struct.virtio_uml_device*, i32, i32) #1

declare dso_local i32 @vhost_user_set_vring_addr(%struct.virtio_uml_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virtqueue_get_desc_addr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_used_addr(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_avail_addr(%struct.virtqueue*) #1

declare dso_local i32 @um_free_irq(i32, %struct.virtqueue*) #1

declare dso_local i32 @os_close_file(i32) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @kfree(%struct.virtio_uml_vq_info*) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
