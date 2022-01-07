; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_add_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_add_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i64, i32, %struct.nbd_config* }
%struct.nbd_config = type { i32, i32, %struct.nbd_sock**, i32 }
%struct.nbd_sock = type { i32, i32, i64, i64, i32*, %struct.socket*, i32 }
%struct.socket = type { i32 }

@NBD_RT_BOUND = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Device being setup by another task\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, i64, i32)* @nbd_add_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_add_socket(%struct.nbd_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nbd_config*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.nbd_sock**, align 8
  %11 = alloca %struct.nbd_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.nbd_device* %0, %struct.nbd_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %14 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %13, i32 0, i32 2
  %15 = load %struct.nbd_config*, %struct.nbd_config** %14, align 8
  store %struct.nbd_config* %15, %struct.nbd_config** %8, align 8
  %16 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.socket* @nbd_get_socket(%struct.nbd_device* %16, i64 %17, i32* %12)
  store %struct.socket* %18, %struct.socket** %9, align 8
  %19 = load %struct.socket*, %struct.socket** %9, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %127

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %28 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @NBD_RT_BOUND, align 4
  %33 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %34 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %33, i32 0, i32 3
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @current, align 8
  %39 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %40 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31, %26, %23
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %41
  %45 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %46 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @current, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @NBD_RT_BOUND, align 4
  %52 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %53 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %52, i32 0, i32 3
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %44
  %57 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %58 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @disk_to_dev(i32 %59)
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.socket*, %struct.socket** %9, align 8
  %63 = call i32 @sockfd_put(%struct.socket* %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %127

66:                                               ; preds = %50, %41
  %67 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %68 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %67, i32 0, i32 2
  %69 = load %struct.nbd_sock**, %struct.nbd_sock*** %68, align 8
  %70 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %71 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.nbd_sock** @krealloc(%struct.nbd_sock** %69, i32 %76, i32 %77)
  store %struct.nbd_sock** %78, %struct.nbd_sock*** %10, align 8
  %79 = load %struct.nbd_sock**, %struct.nbd_sock*** %10, align 8
  %80 = icmp ne %struct.nbd_sock** %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %66
  %82 = load %struct.socket*, %struct.socket** %9, align 8
  %83 = call i32 @sockfd_put(%struct.socket* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %127

86:                                               ; preds = %66
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.nbd_sock* @kzalloc(i32 48, i32 %87)
  store %struct.nbd_sock* %88, %struct.nbd_sock** %11, align 8
  %89 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %90 = icmp ne %struct.nbd_sock* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.socket*, %struct.socket** %9, align 8
  %93 = call i32 @sockfd_put(%struct.socket* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %127

96:                                               ; preds = %86
  %97 = load %struct.nbd_sock**, %struct.nbd_sock*** %10, align 8
  %98 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %99 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %98, i32 0, i32 2
  store %struct.nbd_sock** %97, %struct.nbd_sock*** %99, align 8
  %100 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %101 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 8
  %102 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %103 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %105 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %104, i32 0, i32 6
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load %struct.socket*, %struct.socket** %9, align 8
  %108 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %109 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %108, i32 0, i32 5
  store %struct.socket* %107, %struct.socket** %109, align 8
  %110 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %111 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %110, i32 0, i32 4
  store i32* null, i32** %111, align 8
  %112 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %113 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %115 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.nbd_sock*, %struct.nbd_sock** %11, align 8
  %117 = load %struct.nbd_sock**, %struct.nbd_sock*** %10, align 8
  %118 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %119 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %117, i64 %122
  store %struct.nbd_sock* %116, %struct.nbd_sock** %123, align 8
  %124 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %125 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %124, i32 0, i32 1
  %126 = call i32 @atomic_inc(i32* %125)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %96, %91, %81, %56, %21
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.socket* @nbd_get_socket(%struct.nbd_device*, i64, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local %struct.nbd_sock** @krealloc(%struct.nbd_sock**, i32, i32) #1

declare dso_local %struct.nbd_sock* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
