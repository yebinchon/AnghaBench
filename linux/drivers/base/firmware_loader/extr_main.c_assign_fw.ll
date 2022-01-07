; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_assign_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_assign_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { %struct.fw_priv* }
%struct.fw_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@fw_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FW_OPT_UEVENT = common dso_local global i32 0, align 4
@FW_OPT_NOCACHE = common dso_local global i32 0, align 4
@FW_LOADER_START_CACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assign_fw(%struct.firmware* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.firmware*, %struct.firmware** %5, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %12 = load %struct.fw_priv*, %struct.fw_priv** %11, align 8
  store %struct.fw_priv* %12, %struct.fw_priv** %8, align 8
  %13 = call i32 @mutex_lock(i32* @fw_lock)
  %14 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %15 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %20 = call i64 @fw_state_is_aborted(%struct.fw_priv* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %3
  %23 = call i32 @mutex_unlock(i32* @fw_lock)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %80

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = icmp ne %struct.device* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FW_OPT_UEVENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FW_OPT_NOCACHE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %42 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fw_add_devm_name(%struct.device* %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = call i32 @mutex_unlock(i32* @fw_lock)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %80

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %34, %29, %26
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FW_OPT_NOCACHE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %51
  %57 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %58 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FW_LOADER_START_CACHE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %66 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @fw_cache_piggyback_on_request(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %72 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %71, i32 0, i32 0
  %73 = call i32 @kref_get(i32* %72)
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %56, %51
  %76 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %77 = load %struct.firmware*, %struct.firmware** %5, align 8
  %78 = call i32 @fw_set_page_data(%struct.fw_priv* %76, %struct.firmware* %77)
  %79 = call i32 @mutex_unlock(i32* @fw_lock)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %47, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fw_state_is_aborted(%struct.fw_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fw_add_devm_name(%struct.device*, i32) #1

declare dso_local i64 @fw_cache_piggyback_on_request(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @fw_set_page_data(%struct.fw_priv*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
