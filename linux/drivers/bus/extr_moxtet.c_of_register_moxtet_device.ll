; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_of_register_moxtet_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_of_register_moxtet_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxtet_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.moxtet = type { i32, i32* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Moxtet device alloc error for %pOF\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%pOF has no valid 'reg' property (%d)\0A\00", align 1
@TURRIS_MOX_MAX_MODULES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%pOF Moxtet address 0x%x out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%pOF Moxtet address 0x%x is empty\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Moxtet device register error for %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.moxtet_device* (%struct.moxtet*, %struct.device_node*)* @of_register_moxtet_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.moxtet_device* @of_register_moxtet_device(%struct.moxtet* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.moxtet_device*, align 8
  %4 = alloca %struct.moxtet*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.moxtet_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.moxtet* %0, %struct.moxtet** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %10 = call %struct.moxtet_device* @moxtet_alloc_device(%struct.moxtet* %9)
  store %struct.moxtet_device* %10, %struct.moxtet_device** %6, align 8
  %11 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %12 = icmp ne %struct.moxtet_device* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %15 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.device_node* %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.moxtet_device* @ERR_PTR(i32 %20)
  store %struct.moxtet_device* %21, %struct.moxtet_device** %3, align 8
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %29 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %31, i32 %32)
  br label %101

34:                                               ; preds = %22
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %37 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %39 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TURRIS_MOX_MAX_MODULES, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %45 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %49 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %47, i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %101

54:                                               ; preds = %34
  %55 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %56 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %59 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %64 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %66 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %54
  %70 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %71 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %75 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %73, i64 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %101

80:                                               ; preds = %54
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i32 @of_node_get(%struct.device_node* %81)
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %85 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store %struct.device_node* %83, %struct.device_node** %86, align 8
  %87 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %88 = call i32 @moxtet_add_device(%struct.moxtet_device* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load %struct.moxtet*, %struct.moxtet** %4, align 8
  %93 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.device_node*, %struct.device_node** %5, align 8
  %96 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %95)
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = call i32 @of_node_put(%struct.device_node* %97)
  br label %101

99:                                               ; preds = %80
  %100 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  store %struct.moxtet_device* %100, %struct.moxtet_device** %3, align 8
  br label %107

101:                                              ; preds = %91, %69, %43, %27
  %102 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %103 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %102, i32 0, i32 1
  %104 = call i32 @put_device(%struct.TYPE_2__* %103)
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.moxtet_device* @ERR_PTR(i32 %105)
  store %struct.moxtet_device* %106, %struct.moxtet_device** %3, align 8
  br label %107

107:                                              ; preds = %101, %99, %13
  %108 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  ret %struct.moxtet_device* %108
}

declare dso_local %struct.moxtet_device* @moxtet_alloc_device(%struct.moxtet*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*, ...) #1

declare dso_local %struct.moxtet_device* @ERR_PTR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @moxtet_add_device(%struct.moxtet_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @put_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
