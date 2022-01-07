; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32 }
%struct.vhost_user_msg = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@VHOST_USER_PROTOCOL_F_CONFIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VHOST_USER_SET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sending VHOST_USER_SET_CONFIG failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_uml_device*, i32, i8*, i32)* @vhost_user_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_user_set_config(%struct.virtio_uml_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.virtio_uml_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vhost_user_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 12, %14
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add i64 16, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %19 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VHOST_USER_PROTOCOL_F_CONFIG, align 4
  %22 = call i32 @BIT_ULL(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %72

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.vhost_user_msg* @kzalloc(i64 %27, i32 %28)
  store %struct.vhost_user_msg* %29, %struct.vhost_user_msg** %9, align 8
  %30 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %31 = icmp ne %struct.vhost_user_msg* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %72

33:                                               ; preds = %26
  %34 = load i32, i32* @VHOST_USER_SET_CONFIG, align 4
  %35 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %36 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %40 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %44 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %49 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %53 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i32 %56, i8* %57, i32 %58)
  %60 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %61 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %62 = call i32 @vhost_user_send(%struct.virtio_uml_device* %60, i32 0, %struct.vhost_user_msg* %61, i32* null, i32 0)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %33
  %66 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @vu_err(%struct.virtio_uml_device* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %33
  %70 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %71 = call i32 @kfree(%struct.vhost_user_msg* %70)
  br label %72

72:                                               ; preds = %69, %32, %25
  ret void
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local %struct.vhost_user_msg* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @vhost_user_send(%struct.virtio_uml_device*, i32, %struct.vhost_user_msg*, i32*, i32) #1

declare dso_local i32 @vu_err(%struct.virtio_uml_device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.vhost_user_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
