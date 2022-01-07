; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_reply.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32 }
%struct.vhost_user_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@VHOST_USER_FLAG_NEED_REPLY = common dso_local global i32 0, align 4
@VHOST_USER_FLAG_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"sending reply to slave request failed: %d (size %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_uml_device*, %struct.vhost_user_msg*, i32)* @vhost_user_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_user_reply(%struct.virtio_uml_device* %0, %struct.vhost_user_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.virtio_uml_device*, align 8
  %5 = alloca %struct.vhost_user_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vhost_user_msg, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %4, align 8
  store %struct.vhost_user_msg* %1, %struct.vhost_user_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %7, i32 0, i32 0
  %11 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 4
  store i64 12, i64* %8, align 8
  %15 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %7, i32 0, i32 0
  %16 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %5, align 8
  %17 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %16, i32 0, i32 0
  %18 = bitcast %struct.TYPE_4__* %15 to i8*
  %19 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load i32, i32* @VHOST_USER_FLAG_NEED_REPLY, align 4
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @VHOST_USER_FLAG_REPLY, align 4
  %27 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 4
  %33 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %4, align 8
  %34 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @full_sendmsg_fds(i32 %35, %struct.vhost_user_msg* %7, i64 %36, i32* null, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @vu_err(%struct.virtio_uml_device* %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @full_sendmsg_fds(i32, %struct.vhost_user_msg*, i64, i32*, i32) #2

declare dso_local i32 @vu_err(%struct.virtio_uml_device*, i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
