; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_pe_report_edev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_pe_report_edev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32, %struct.pci_dev*, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_driver = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no driver\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"driver not EEH aware\00", align 1
@EEH_DEV_NO_HANDLER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"driver bound too late\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s driver reports: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"not actionable (%d,%d,%d)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Device changed during processing!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeh_dev*, i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)*, i32*)* @eeh_pe_report_edev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeh_pe_report_edev(%struct.eeh_dev* %0, i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)* %1, i32* %2) #0 {
  %4 = alloca %struct.eeh_dev*, align 8
  %5 = alloca i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pci_driver*, align 8
  %9 = alloca i32, align 4
  store %struct.eeh_dev* %0, %struct.eeh_dev** %4, align 8
  store i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)* %1, i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 (...) @pci_lock_rescan_remove()
  %11 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %12 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @get_device(i32* %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = call i32 (...) @pci_unlock_rescan_remove()
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %26 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_info(%struct.eeh_dev* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %127

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @device_lock(i32* %29)
  %31 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %32 = call i64 @eeh_edev_actionable(%struct.eeh_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = call %struct.pci_driver* @eeh_pcid_get(%struct.pci_dev* %35)
  store %struct.pci_driver* %36, %struct.pci_driver** %8, align 8
  %37 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %38 = icmp ne %struct.pci_driver* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %41 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_info(%struct.eeh_dev* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %84

42:                                               ; preds = %34
  %43 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %44 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %49 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_info(%struct.eeh_dev* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %83

50:                                               ; preds = %42
  %51 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %52 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EEH_DEV_NO_HANDLER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %59 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_info(%struct.eeh_dev* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %82

60:                                               ; preds = %50
  %61 = load i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)*, i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)** %5, align 8
  %62 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %64 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %65 = call i32 %61(%struct.eeh_dev* %62, %struct.pci_dev* %63, %struct.pci_driver* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %67 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %68 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @pci_ers_result_name(i32 %70)
  %72 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_info(%struct.eeh_dev* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pci_ers_merge_result(i32 %77, i32 %78)
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %60
  br label %82

82:                                               ; preds = %81, %57
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %39
  %85 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %86 = icmp ne %struct.pci_driver* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %89 = call i32 @eeh_pcid_put(%struct.pci_dev* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %111

91:                                               ; preds = %27
  %92 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %94 = icmp ne %struct.pci_dev* %93, null
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %99 = call i32 @eeh_dev_removed(%struct.eeh_dev* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %104 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @eeh_pe_passed(i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_info(%struct.eeh_dev* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %102, i32 %109)
  br label %111

111:                                              ; preds = %91, %90
  %112 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = call i32 @device_unlock(i32* %113)
  %115 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %116 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %115, i32 0, i32 1
  %117 = load %struct.pci_dev*, %struct.pci_dev** %116, align 8
  %118 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %119 = icmp ne %struct.pci_dev* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %122 = call i32 @eeh_edev_warn(%struct.eeh_dev* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %111
  %124 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 0
  %126 = call i32 @put_device(i32* %125)
  br label %127

127:                                              ; preds = %123, %24
  ret void
}

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @eeh_edev_info(%struct.eeh_dev*, i8*, ...) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i64 @eeh_edev_actionable(%struct.eeh_dev*) #1

declare dso_local %struct.pci_driver* @eeh_pcid_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_ers_result_name(i32) #1

declare dso_local i32 @pci_ers_merge_result(i32, i32) #1

declare dso_local i32 @eeh_pcid_put(%struct.pci_dev*) #1

declare dso_local i32 @eeh_dev_removed(%struct.eeh_dev*) #1

declare dso_local i32 @eeh_pe_passed(i32) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @eeh_edev_warn(%struct.eeh_dev*, i8*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
