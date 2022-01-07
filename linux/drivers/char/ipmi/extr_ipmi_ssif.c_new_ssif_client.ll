; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_new_ssif_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_new_ssif_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ssif_addr_info = type { i32, i32, i32, i32, %struct.device*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.ssif_addr_info*, i32 }

@ssif_infos_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@ssif_infos = common dso_local global i32 0, align 4
@initialized = common dso_local global i64 0, align 8
@ssif_adapter_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32, %struct.device*)* @new_ssif_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_ssif_client(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.ssif_addr_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.device* %5, %struct.device** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = call i32 @mutex_lock(i32* @ssif_infos_mutex)
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @ssif_info_find(i32 %16, i8* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  br label %94

23:                                               ; preds = %6
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ssif_addr_info* @kzalloc(i32 56, i32 %24)
  store %struct.ssif_addr_info* %25, %struct.ssif_addr_info** %13, align 8
  %26 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %27 = icmp ne %struct.ssif_addr_info* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  br label %94

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kstrdup(i8* %35, i32 %36)
  %38 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %39 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %41 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %46 = call i32 @kfree(%struct.ssif_addr_info* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %94

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %52 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DEVICE_NAME, align 4
  %56 = call i32 @strncpy(i32 %54, i32 %55, i32 4)
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %59 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %62 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %63 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store %struct.ssif_addr_info* %61, %struct.ssif_addr_info** %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %67 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %70 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %73 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.device*, %struct.device** %12, align 8
  %75 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %76 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %75, i32 0, i32 4
  store %struct.device* %74, %struct.device** %76, align 8
  %77 = load %struct.device*, %struct.device** %12, align 8
  %78 = icmp ne %struct.device* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %50
  %80 = load %struct.device*, %struct.device** %12, align 8
  %81 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %82 = call i32 @dev_set_drvdata(%struct.device* %80, %struct.ssif_addr_info* %81)
  br label %83

83:                                               ; preds = %79, %50
  %84 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %85 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %84, i32 0, i32 3
  %86 = call i32 @list_add_tail(i32* %85, i32* @ssif_infos)
  %87 = load i64, i64* @initialized, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %13, align 8
  %91 = load i32, i32* @ssif_adapter_handler, align 4
  %92 = call i32 @i2c_for_each_dev(%struct.ssif_addr_info* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %83
  br label %94

94:                                               ; preds = %93, %44, %28, %20
  %95 = call i32 @mutex_unlock(i32* @ssif_infos_mutex)
  %96 = load i32, i32* %14, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ssif_info_find(i32, i8*, i32) #1

declare dso_local %struct.ssif_addr_info* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.ssif_addr_info*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ssif_addr_info*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i2c_for_each_dev(%struct.ssif_addr_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
