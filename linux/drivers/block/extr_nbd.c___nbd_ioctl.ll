; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c___nbd_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c___nbd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.nbd_device = type { %struct.nbd_config* }
%struct.nbd_config = type { i64, i64, i64 }

@NBD_DEF_BLKSIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.nbd_device*, i32, i64)* @__nbd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nbd_ioctl(%struct.block_device* %0, %struct.nbd_device* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.nbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nbd_config*, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store %struct.nbd_device* %1, %struct.nbd_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %12 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %11, i32 0, i32 0
  %13 = load %struct.nbd_config*, %struct.nbd_config** %12, align 8
  store %struct.nbd_config* %13, %struct.nbd_config** %10, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %79 [
    i32 136, label %15
    i32 137, label %18
    i32 129, label %22
    i32 133, label %26
    i32 131, label %47
    i32 130, label %58
    i32 128, label %65
    i32 132, label %69
    i32 135, label %73
    i32 138, label %77
    i32 134, label %78
  ]

15:                                               ; preds = %4
  %16 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %17 = call i32 @nbd_disconnect(%struct.nbd_device* %16)
  store i32 %17, i32* %5, align 4
  br label %82

18:                                               ; preds = %4
  %19 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %20 = load %struct.block_device*, %struct.block_device** %6, align 8
  %21 = call i32 @nbd_clear_sock_ioctl(%struct.nbd_device* %19, %struct.block_device* %20)
  store i32 0, i32* %5, align 4
  br label %82

22:                                               ; preds = %4
  %23 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @nbd_add_socket(%struct.nbd_device* %23, i64 %24, i32 0)
  store i32 %25, i32* %5, align 4
  br label %82

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @NBD_DEF_BLKSIZE, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @nbd_is_valid_blksize(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.nbd_config*, %struct.nbd_config** %10, align 8
  %42 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @div_s64(i64 %43, i64 %44)
  %46 = call i32 @nbd_size_set(%struct.nbd_device* %39, i64 %40, i64 %45)
  store i32 0, i32* %5, align 4
  br label %82

47:                                               ; preds = %4
  %48 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %49 = load %struct.nbd_config*, %struct.nbd_config** %10, align 8
  %50 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.nbd_config*, %struct.nbd_config** %10, align 8
  %54 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @div_s64(i64 %52, i64 %55)
  %57 = call i32 @nbd_size_set(%struct.nbd_device* %48, i64 %51, i64 %56)
  store i32 0, i32* %5, align 4
  br label %82

58:                                               ; preds = %4
  %59 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %60 = load %struct.nbd_config*, %struct.nbd_config** %10, align 8
  %61 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @nbd_size_set(%struct.nbd_device* %59, i64 %62, i64 %63)
  store i32 0, i32* %5, align 4
  br label %82

65:                                               ; preds = %4
  %66 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @nbd_set_cmd_timeout(%struct.nbd_device* %66, i64 %67)
  store i32 0, i32* %5, align 4
  br label %82

69:                                               ; preds = %4
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.nbd_config*, %struct.nbd_config** %10, align 8
  %72 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  store i32 0, i32* %5, align 4
  br label %82

73:                                               ; preds = %4
  %74 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %75 = load %struct.block_device*, %struct.block_device** %6, align 8
  %76 = call i32 @nbd_start_device_ioctl(%struct.nbd_device* %74, %struct.block_device* %75)
  store i32 %76, i32* %5, align 4
  br label %82

77:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

78:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; preds = %4
  %80 = load i32, i32* @ENOTTY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %78, %77, %73, %69, %65, %58, %47, %38, %35, %22, %18, %15
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @nbd_disconnect(%struct.nbd_device*) #1

declare dso_local i32 @nbd_clear_sock_ioctl(%struct.nbd_device*, %struct.block_device*) #1

declare dso_local i32 @nbd_add_socket(%struct.nbd_device*, i64, i32) #1

declare dso_local i32 @nbd_is_valid_blksize(i64) #1

declare dso_local i32 @nbd_size_set(%struct.nbd_device*, i64, i64) #1

declare dso_local i64 @div_s64(i64, i64) #1

declare dso_local i32 @nbd_set_cmd_timeout(%struct.nbd_device*, i64) #1

declare dso_local i32 @nbd_start_device_ioctl(%struct.nbd_device*, %struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
