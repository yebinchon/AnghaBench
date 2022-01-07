; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nbd_device* }
%struct.nbd_device = type { i32, %struct.nbd_config* }
%struct.nbd_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NBD_RT_BOUND = common dso_local global i32 0, align 4
@NBD_DISCONNECT = common dso_local global i32 0, align 4
@NBD_CLEAR_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Cannot use ioctl interface on a netlink controlled device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @nbd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nbd_device*, align 8
  %11 = alloca %struct.nbd_config*, align 8
  %12 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.block_device*, %struct.block_device** %6, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nbd_device*, %struct.nbd_device** %16, align 8
  store %struct.nbd_device* %17, %struct.nbd_device** %10, align 8
  %18 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %19 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %18, i32 0, i32 1
  %20 = load %struct.nbd_config*, %struct.nbd_config** %19, align 8
  store %struct.nbd_config* %20, %struct.nbd_config** %11, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @_IOC_TYPE(i32 %30)
  %32 = icmp ne i32 %31, 171
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %68

36:                                               ; preds = %29
  %37 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %38 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @NBD_RT_BOUND, align 4
  %41 = load %struct.nbd_config*, %struct.nbd_config** %11, align 8
  %42 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %41, i32 0, i32 0
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @NBD_DISCONNECT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @NBD_CLEAR_SOCK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49, %45, %36
  %54 = load %struct.block_device*, %struct.block_device** %6, align 8
  %55 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @__nbd_ioctl(%struct.block_device* %54, %struct.nbd_device* %55, i32 %56, i64 %57)
  store i32 %58, i32* %12, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %61 = call i32 @nbd_to_dev(%struct.nbd_device* %60)
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.nbd_device*, %struct.nbd_device** %10, align 8
  %65 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %33, %26
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @_IOC_TYPE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__nbd_ioctl(%struct.block_device*, %struct.nbd_device*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nbd_to_dev(%struct.nbd_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
