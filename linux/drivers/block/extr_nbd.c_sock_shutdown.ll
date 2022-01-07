; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_sock_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_sock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, %struct.nbd_config* }
%struct.nbd_config = type { i32, %struct.nbd_sock**, i32 }
%struct.nbd_sock = type { i32 }

@NBD_RT_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"shutting down sockets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @sock_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_shutdown(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  %3 = alloca %struct.nbd_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbd_sock*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %6 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %7 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %6, i32 0, i32 1
  %8 = load %struct.nbd_config*, %struct.nbd_config** %7, align 8
  store %struct.nbd_config* %8, %struct.nbd_config** %3, align 8
  %9 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %10 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  %15 = load i32, i32* @NBD_RT_DISCONNECTED, align 4
  %16 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %17 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %16, i32 0, i32 2
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %54

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %25 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %30 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %29, i32 0, i32 1
  %31 = load %struct.nbd_sock**, %struct.nbd_sock*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %31, i64 %33
  %35 = load %struct.nbd_sock*, %struct.nbd_sock** %34, align 8
  store %struct.nbd_sock* %35, %struct.nbd_sock** %5, align 8
  %36 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %37 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %40 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %41 = call i32 @nbd_mark_nsock_dead(%struct.nbd_device* %39, %struct.nbd_sock* %40, i32 0)
  %42 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %43 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %50 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @disk_to_dev(i32 %51)
  %53 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %48, %20, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nbd_mark_nsock_dead(%struct.nbd_device*, %struct.nbd_sock*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
