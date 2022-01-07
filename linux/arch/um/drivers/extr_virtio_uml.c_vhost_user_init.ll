; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32, i32 }

@VHOST_USER_F_PROTOCOL_FEATURES = common dso_local global i32 0, align 4
@VHOST_USER_SUPPORTED_PROTOCOL_F = common dso_local global i32 0, align 4
@VHOST_USER_PROTOCOL_F_SLAVE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_uml_device*)* @vhost_user_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_user_init(%struct.virtio_uml_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_uml_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %3, align 8
  %5 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %6 = call i32 @vhost_user_set_owner(%struct.virtio_uml_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %13 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %13, i32 0, i32 0
  %15 = call i32 @vhost_user_get_features(%struct.virtio_uml_device* %12, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %11
  %21 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %22 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VHOST_USER_F_PROTOCOL_FEATURES, align 4
  %25 = call i32 @BIT_ULL(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %30 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %30, i32 0, i32 1
  %32 = call i32 @vhost_user_get_protocol_features(%struct.virtio_uml_device* %29, i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %28
  %38 = load i32, i32* @VHOST_USER_SUPPORTED_PROTOCOL_F, align 4
  %39 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %40 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %44 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %45 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vhost_user_set_protocol_features(%struct.virtio_uml_device* %43, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %20
  %54 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %55 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VHOST_USER_PROTOCOL_F_SLAVE_REQ, align 4
  %58 = call i32 @BIT_ULL(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %63 = call i32 @vhost_user_init_slave_req(%struct.virtio_uml_device* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %53
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %50, %35, %18, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @vhost_user_set_owner(%struct.virtio_uml_device*) #1

declare dso_local i32 @vhost_user_get_features(%struct.virtio_uml_device*, i32*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @vhost_user_get_protocol_features(%struct.virtio_uml_device*, i32*) #1

declare dso_local i32 @vhost_user_set_protocol_features(%struct.virtio_uml_device*, i32) #1

declare dso_local i32 @vhost_user_init_slave_req(%struct.virtio_uml_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
