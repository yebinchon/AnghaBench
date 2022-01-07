; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_cmdline_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_cmdline_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }
%struct.virtio_uml_platform_data = type { i8*, i32 }
%struct.platform_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c":%u%n:%d%n\00", align 1
@vu_cmdline_id = common dso_local global i32 0, align 4
@vu_cmdline_parent_registered = common dso_local global i32 0, align 4
@vu_cmdline_parent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register parent device!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Registering device virtio-uml.%d id=%d at %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"virtio-uml\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @vu_cmdline_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vu_cmdline_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.virtio_uml_platform_data, align 8
  %13 = alloca %struct.platform_device*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 58)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %9, i32* @vu_cmdline_id, i32* %9)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %90

41:                                               ; preds = %30
  %42 = load i32, i32* @vu_cmdline_parent_registered, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = call i32 @device_register(i32* @vu_cmdline_parent)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @put_device(i32* @vu_cmdline_parent)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %90

52:                                               ; preds = %44
  store i32 1, i32* @vu_cmdline_parent_registered, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kmemdup_nul(i8* %54, i32 %60, i32 %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %90

68:                                               ; preds = %53
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds %struct.virtio_uml_platform_data, %struct.virtio_uml_platform_data* %12, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds %struct.virtio_uml_platform_data, %struct.virtio_uml_platform_data* %12, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @vu_cmdline_id, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i8* %75)
  %77 = load i32, i32* @vu_cmdline_id, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @vu_cmdline_id, align 4
  %79 = call %struct.platform_device* @platform_device_register_data(i32* @vu_cmdline_parent, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %77, %struct.virtio_uml_platform_data* %12, i32 16)
  store %struct.platform_device* %79, %struct.platform_device** %13, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %81 = call i32 @PTR_ERR_OR_ZERO(%struct.platform_device* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %86

85:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %90

86:                                               ; preds = %84
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %85, %65, %48, %38, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i8* @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*) #1

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.virtio_uml_platform_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.platform_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
