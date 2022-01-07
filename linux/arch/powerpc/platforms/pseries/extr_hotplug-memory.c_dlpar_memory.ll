; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid action (%d) specified\0A\00", align 1
@rtas_hp_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlpar_memory(%struct.pseries_hp_errorlog* %0) #0 {
  %2 = alloca %struct.pseries_hp_errorlog*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pseries_hp_errorlog* %0, %struct.pseries_hp_errorlog** %2, align 8
  %6 = call i32 (...) @lock_device_hotplug()
  %7 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %8 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %89 [
    i32 133, label %10
    i32 131, label %46
    i32 132, label %82
  ]

10:                                               ; preds = %1
  %11 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %12 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %42 [
    i32 130, label %14
    i32 128, label %21
    i32 129, label %28
  ]

14:                                               ; preds = %10
  %15 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %16 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dlpar_memory_add_by_count(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %10
  %22 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %23 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dlpar_memory_add_by_index(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %10
  %29 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %30 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  %34 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %35 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dlpar_memory_add_by_ic(i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %10
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %28, %21, %14
  br label %96

46:                                               ; preds = %1
  %47 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %48 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %78 [
    i32 130, label %50
    i32 128, label %57
    i32 129, label %64
  ]

50:                                               ; preds = %46
  %51 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %52 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @dlpar_memory_remove_by_count(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %81

57:                                               ; preds = %46
  %58 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %59 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dlpar_memory_remove_by_index(i32 %62)
  store i32 %63, i32* %5, align 4
  br label %81

64:                                               ; preds = %46
  %65 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %66 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  %70 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %71 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @dlpar_memory_remove_by_ic(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %46
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %64, %57, %50
  br label %96

82:                                               ; preds = %1
  %83 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %84 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @dlpar_memory_readd_by_index(i32 %87)
  store i32 %88, i32* %5, align 4
  br label %96

89:                                               ; preds = %1
  %90 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %91 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %89, %82, %81, %45
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  store i32 1, i32* @rtas_hp_event, align 4
  %100 = call i32 (...) @drmem_update_dt()
  store i32 %100, i32* %5, align 4
  store i32 0, i32* @rtas_hp_event, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = call i32 (...) @unlock_device_hotplug()
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @lock_device_hotplug(...) #1

declare dso_local i32 @dlpar_memory_add_by_count(i32) #1

declare dso_local i32 @dlpar_memory_add_by_index(i32) #1

declare dso_local i32 @dlpar_memory_add_by_ic(i32, i32) #1

declare dso_local i32 @dlpar_memory_remove_by_count(i32) #1

declare dso_local i32 @dlpar_memory_remove_by_index(i32) #1

declare dso_local i32 @dlpar_memory_remove_by_ic(i32, i32) #1

declare dso_local i32 @dlpar_memory_readd_by_index(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drmem_update_dt(...) #1

declare dso_local i32 @unlock_device_hotplug(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
