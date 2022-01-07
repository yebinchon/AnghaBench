; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32 }
%struct.vhost_user_msg = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@VHOST_USER_PROTOCOL_F_CONFIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VHOST_USER_GET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sending VHOST_USER_GET_CONFIG failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"receiving VHOST_USER_GET_CONFIG response failed: %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"Invalid VHOST_USER_GET_CONFIG sizes (payload %d expected %zu, config %u expected %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_uml_device*, i32, i8*, i32)* @vhost_user_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_user_get_config(%struct.virtio_uml_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.virtio_uml_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vhost_user_msg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 16, %18
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 16, %20
  store i64 %21, i64* %12, align 8
  %22 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VHOST_USER_PROTOCOL_F_CONFIG, align 4
  %26 = call i32 @BIT_ULL(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %122

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.vhost_user_msg* @kzalloc(i64 %31, i32 %32)
  store %struct.vhost_user_msg* %33, %struct.vhost_user_msg** %10, align 8
  %34 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %35 = icmp ne %struct.vhost_user_msg* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %122

37:                                               ; preds = %30
  %38 = load i32, i32* @VHOST_USER_GET_CONFIG, align 4
  %39 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %40 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %44 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %47 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %52 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %56 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %57 = call i32 @vhost_user_send(%struct.virtio_uml_device* %55, i32 1, %struct.vhost_user_msg* %56, i32* null, i32 0)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %37
  %61 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 (%struct.virtio_uml_device*, i8*, i64, ...) @vu_err(%struct.virtio_uml_device* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %119

65:                                               ; preds = %37
  %66 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %67 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @vhost_user_recv_resp(%struct.virtio_uml_device* %66, %struct.vhost_user_msg* %67, i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 (%struct.virtio_uml_device*, i8*, i64, ...) @vu_err(%struct.virtio_uml_device* %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %119

77:                                               ; preds = %65
  %78 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %79 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %77
  %85 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %86 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %84, %77
  %93 = load i32, i32* @EPROTO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %96 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %97 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %102 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (%struct.virtio_uml_device*, i8*, i64, ...) @vu_err(%struct.virtio_uml_device* %95, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i64 %99, i64 %100, i32 %105, i32 %106)
  br label %119

108:                                              ; preds = %84
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %111 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @memcpy(i8* %109, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %108, %92, %72, %60
  %120 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %10, align 8
  %121 = call i32 @kfree(%struct.vhost_user_msg* %120)
  br label %122

122:                                              ; preds = %119, %36, %29
  ret void
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local %struct.vhost_user_msg* @kzalloc(i64, i32) #1

declare dso_local i32 @vhost_user_send(%struct.virtio_uml_device*, i32, %struct.vhost_user_msg*, i32*, i32) #1

declare dso_local i32 @vu_err(%struct.virtio_uml_device*, i8*, i64, ...) #1

declare dso_local i32 @vhost_user_recv_resp(%struct.virtio_uml_device*, %struct.vhost_user_msg*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.vhost_user_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
