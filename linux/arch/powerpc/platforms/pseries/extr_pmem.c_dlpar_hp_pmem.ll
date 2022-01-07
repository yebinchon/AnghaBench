; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pmem.c_dlpar_hp_pmem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pmem.c_dlpar_hp_pmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pmem_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"ibm,persistent-memory\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Hotplug event for a pmem device, but none exists\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PSERIES_HP_ELOG_ID_DRC_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unsupported hotplug event type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PSERIES_HP_ELOG_ACTION_ADD = common dso_local global i64 0, align 8
@PSERIES_HP_ELOG_ACTION_REMOVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported hotplug action (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlpar_hp_pmem(%struct.pseries_hp_errorlog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pseries_hp_errorlog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pseries_hp_errorlog* %0, %struct.pseries_hp_errorlog** %3, align 8
  %6 = load i64, i64* @pmem_node, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* @pmem_node, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* @pmem_node, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %10
  %18 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %3, align 8
  %19 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PSERIES_HP_ELOG_ID_DRC_INDEX, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %3, align 8
  %25 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %64

30:                                               ; preds = %17
  %31 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %3, align 8
  %32 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  %35 = call i32 (...) @lock_device_hotplug()
  %36 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %3, align 8
  %37 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PSERIES_HP_ELOG_ACTION_ADD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pmem_drc_add_node(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %30
  %45 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %3, align 8
  %46 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PSERIES_HP_ELOG_ACTION_REMOVE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @pmem_drc_remove_node(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %60

53:                                               ; preds = %44
  %54 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %3, align 8
  %55 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %53, %50
  br label %61

61:                                               ; preds = %60, %41
  %62 = call i32 (...) @unlock_device_hotplug()
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %23, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @lock_device_hotplug(...) #1

declare dso_local i32 @pmem_drc_add_node(i32) #1

declare dso_local i32 @pmem_drc_remove_node(i32) #1

declare dso_local i32 @unlock_device_hotplug(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
