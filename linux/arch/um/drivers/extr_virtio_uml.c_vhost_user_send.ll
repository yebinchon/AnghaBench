; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_send.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32, i32 }
%struct.vhost_user_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VHOST_USER_VERSION = common dso_local global i32 0, align 4
@VHOST_USER_PROTOCOL_F_REPLY_ACK = common dso_local global i32 0, align 4
@VHOST_USER_FLAG_NEED_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"slave reports error: %llu\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_uml_device*, i32, %struct.vhost_user_msg*, i32*, i64)* @vhost_user_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_user_send(%struct.virtio_uml_device* %0, i32 %1, %struct.vhost_user_msg* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtio_uml_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vhost_user_msg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.vhost_user_msg* %2, %struct.vhost_user_msg** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %17 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 8, %20
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* @VHOST_USER_VERSION, align 4
  %23 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %24 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %7, align 8
  %33 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VHOST_USER_PROTOCOL_F_REPLY_ACK, align 4
  %36 = call i32 @BIT_ULL(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* @VHOST_USER_FLAG_NEED_REPLY, align 4
  %45 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %46 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %40
  %51 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %7, align 8
  %52 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %9, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @full_sendmsg_fds(i32 %53, %struct.vhost_user_msg* %54, i64 %55, i32* %56, i64 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %84

63:                                               ; preds = %50
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %7, align 8
  %68 = call i32 @vhost_user_recv_u64(%struct.virtio_uml_device* %67, i64* %15)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %84

73:                                               ; preds = %66
  %74 = load i64, i64* %15, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %7, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i32 @vu_err(%struct.virtio_uml_device* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %84

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %63
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %76, %71, %61
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @full_sendmsg_fds(i32, %struct.vhost_user_msg*, i64, i32*, i64) #1

declare dso_local i32 @vhost_user_recv_u64(%struct.virtio_uml_device*, i64*) #1

declare dso_local i32 @vu_err(%struct.virtio_uml_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
