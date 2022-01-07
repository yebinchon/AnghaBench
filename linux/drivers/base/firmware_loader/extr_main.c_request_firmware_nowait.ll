; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_request_firmware_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_request_firmware_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.device = type { i32 }
%struct.firmware = type opaque
%struct.firmware_work = type { void (%struct.firmware.0*, i8*)*, i32, i32, %struct.device*, i32, i8*, %struct.module* }
%struct.firmware.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@FW_OPT_NOWAIT = common dso_local global i32 0, align 4
@FW_OPT_UEVENT = common dso_local global i32 0, align 4
@FW_OPT_USERHELPER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@request_firmware_work_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_firmware_nowait(%struct.module* %0, i32 %1, i8* %2, %struct.device* %3, i32 %4, i8* %5, void (%struct.firmware*, i8*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca void (%struct.firmware*, i8*)*, align 8
  %16 = alloca %struct.firmware_work*, align 8
  store %struct.module* %0, %struct.module** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store %struct.device* %3, %struct.device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store void (%struct.firmware*, i8*)* %6, void (%struct.firmware*, i8*)** %15, align 8
  %17 = load i32, i32* %13, align 4
  %18 = call %struct.firmware_work* @kzalloc(i32 48, i32 %17)
  store %struct.firmware_work* %18, %struct.firmware_work** %16, align 8
  %19 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %20 = icmp ne %struct.firmware_work* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %106

24:                                               ; preds = %7
  %25 = load %struct.module*, %struct.module** %9, align 8
  %26 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %27 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %26, i32 0, i32 6
  store %struct.module* %25, %struct.module** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @kstrdup_const(i8* %28, i32 %29)
  %31 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %32 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %34 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %39 = call i32 @kfree(%struct.firmware_work* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %106

42:                                               ; preds = %24
  %43 = load %struct.device*, %struct.device** %12, align 8
  %44 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %45 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %44, i32 0, i32 3
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %48 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load void (%struct.firmware*, i8*)*, void (%struct.firmware*, i8*)** %15, align 8
  %50 = bitcast void (%struct.firmware*, i8*)* %49 to void (%struct.firmware.0*, i8*)*
  %51 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %52 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %51, i32 0, i32 0
  store void (%struct.firmware.0*, i8*)* %50, void (%struct.firmware.0*, i8*)** %52, align 8
  %53 = load i32, i32* @FW_OPT_NOWAIT, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @FW_OPT_UEVENT, align 4
  br label %60

58:                                               ; preds = %42
  %59 = load i32, i32* @FW_OPT_USERHELPER, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = or i32 %53, %61
  %63 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %64 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %12, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @fw_cache_is_setup(%struct.device* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %74 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kfree_const(i32 %75)
  %77 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %78 = call i32 @kfree(%struct.firmware_work* %77)
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %106

81:                                               ; preds = %67, %60
  %82 = load %struct.module*, %struct.module** %9, align 8
  %83 = call i32 @try_module_get(%struct.module* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %87 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @kfree_const(i32 %88)
  %90 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %91 = call i32 @kfree(%struct.firmware_work* %90)
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %106

94:                                               ; preds = %81
  %95 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %96 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %95, i32 0, i32 3
  %97 = load %struct.device*, %struct.device** %96, align 8
  %98 = call i32 @get_device(%struct.device* %97)
  %99 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %100 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %99, i32 0, i32 2
  %101 = load i32, i32* @request_firmware_work_func, align 4
  %102 = call i32 @INIT_WORK(i32* %100, i32 %101)
  %103 = load %struct.firmware_work*, %struct.firmware_work** %16, align 8
  %104 = getelementptr inbounds %struct.firmware_work, %struct.firmware_work* %103, i32 0, i32 2
  %105 = call i32 @schedule_work(i32* %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %94, %85, %72, %37, %21
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local %struct.firmware_work* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

declare dso_local i32 @kfree(%struct.firmware_work*) #1

declare dso_local i64 @fw_cache_is_setup(%struct.device*, i8*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
