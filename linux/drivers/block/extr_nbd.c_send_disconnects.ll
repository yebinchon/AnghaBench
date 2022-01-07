; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_send_disconnects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_send_disconnects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, %struct.nbd_config* }
%struct.nbd_config = type { i32, %struct.nbd_sock** }
%struct.nbd_sock = type { i32 }
%struct.nbd_request = type { i32, i32 }
%struct.kvec = type { i32, %struct.nbd_request* }
%struct.iov_iter = type { i32 }

@NBD_CMD_DISC = common dso_local global i32 0, align 4
@NBD_REQUEST_MAGIC = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Send disconnect failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @send_disconnects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_disconnects(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  %3 = alloca %struct.nbd_config*, align 8
  %4 = alloca %struct.nbd_request, align 4
  %5 = alloca %struct.kvec, align 8
  %6 = alloca %struct.iov_iter, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nbd_sock*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %10 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %11 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %10, i32 0, i32 1
  %12 = load %struct.nbd_config*, %struct.nbd_config** %11, align 8
  store %struct.nbd_config* %12, %struct.nbd_config** %3, align 8
  %13 = getelementptr inbounds %struct.nbd_request, %struct.nbd_request* %4, i32 0, i32 0
  %14 = load i32, i32* @NBD_CMD_DISC, align 4
  %15 = call i32 @htonl(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.nbd_request, %struct.nbd_request* %4, i32 0, i32 1
  %17 = load i32, i32* @NBD_REQUEST_MAGIC, align 4
  %18 = call i32 @htonl(i32 %17)
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 0
  store i32 8, i32* %19, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 1
  store %struct.nbd_request* %4, %struct.nbd_request** %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %56, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %24 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %29 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %28, i32 0, i32 1
  %30 = load %struct.nbd_sock**, %struct.nbd_sock*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %30, i64 %32
  %34 = load %struct.nbd_sock*, %struct.nbd_sock** %33, align 8
  store %struct.nbd_sock* %34, %struct.nbd_sock** %9, align 8
  %35 = load i32, i32* @WRITE, align 4
  %36 = call i32 @iov_iter_kvec(%struct.iov_iter* %6, i32 %35, %struct.kvec* %5, i32 1, i32 8)
  %37 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %38 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @sock_xmit(%struct.nbd_device* %40, i32 %41, i32 1, %struct.iov_iter* %6, i32 0, i32* null)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %47 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @disk_to_dev(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %27
  %53 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %54 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %21

59:                                               ; preds = %21
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sock_xmit(%struct.nbd_device*, i32, i32, %struct.iov_iter*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
