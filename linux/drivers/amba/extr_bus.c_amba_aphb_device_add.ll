; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_aphb_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_aphb_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, i8*, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amba_device* (%struct.device*, i8*, i32, i64, i32, i32, i8*, i32, i32, %struct.resource*)* @amba_aphb_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amba_device* @amba_aphb_device_add(%struct.device* %0, i8* %1, i32 %2, i64 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, %struct.resource* %9) #0 {
  %11 = alloca %struct.amba_device*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.resource*, align 8
  %22 = alloca %struct.amba_device*, align 8
  %23 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.resource* %9, %struct.resource** %21, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* %15, align 8
  %27 = call %struct.amba_device* @amba_device_alloc(i8* %24, i32 %25, i64 %26)
  store %struct.amba_device* %27, %struct.amba_device** %22, align 8
  %28 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %29 = icmp ne %struct.amba_device* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %10
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.amba_device* @ERR_PTR(i32 %32)
  store %struct.amba_device* %33, %struct.amba_device** %11, align 8
  br label %72

34:                                               ; preds = %10
  %35 = load i32, i32* %20, align 4
  %36 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %37 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %41 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %46 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %51 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %54 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load %struct.device*, %struct.device** %12, align 8
  %57 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %58 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %61 = load %struct.resource*, %struct.resource** %21, align 8
  %62 = call i32 @amba_device_add(%struct.amba_device* %60, %struct.resource* %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %34
  %66 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  %67 = call i32 @amba_device_put(%struct.amba_device* %66)
  %68 = load i32, i32* %23, align 4
  %69 = call %struct.amba_device* @ERR_PTR(i32 %68)
  store %struct.amba_device* %69, %struct.amba_device** %11, align 8
  br label %72

70:                                               ; preds = %34
  %71 = load %struct.amba_device*, %struct.amba_device** %22, align 8
  store %struct.amba_device* %71, %struct.amba_device** %11, align 8
  br label %72

72:                                               ; preds = %70, %65, %30
  %73 = load %struct.amba_device*, %struct.amba_device** %11, align 8
  ret %struct.amba_device* %73
}

declare dso_local %struct.amba_device* @amba_device_alloc(i8*, i32, i64) #1

declare dso_local %struct.amba_device* @ERR_PTR(i32) #1

declare dso_local i32 @amba_device_add(%struct.amba_device*, %struct.resource*) #1

declare dso_local i32 @amba_device_put(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
