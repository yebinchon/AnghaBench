; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/misc/extr_owl-loader.c_owl_fw_cb.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/misc/extr_owl-loader.c_owl_fw_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i64 }
%struct.pci_dev = type { %struct.pci_bus*, i32 }
%struct.pci_bus = type { i32 }
%struct.owl_ctx = type { i32 }
%struct.ath9k_platform_data = type { i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"no eeprom data received.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eeprom file has an invalid size.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @owl_fw_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_fw_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.owl_ctx*, align 8
  %7 = alloca %struct.ath9k_platform_data*, align 8
  %8 = alloca %struct.pci_bus*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pci_dev*
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i64 @pci_get_drvdata(%struct.pci_dev* %11)
  %13 = inttoptr i64 %12 to %struct.owl_ctx*
  store %struct.owl_ctx* %13, %struct.owl_ctx** %6, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call %struct.ath9k_platform_data* @dev_get_platdata(i32* %15)
  store %struct.ath9k_platform_data* %16, %struct.ath9k_platform_data** %7, align 8
  %17 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.owl_ctx, %struct.owl_ctx* %17, i32 0, i32 0
  %19 = call i32 @complete(i32* %18)
  %20 = load %struct.firmware*, %struct.firmware** %3, align 8
  %21 = icmp ne %struct.firmware* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.firmware*, %struct.firmware** %3, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = load %struct.firmware*, %struct.firmware** %3, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 512
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.firmware*, %struct.firmware** %3, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %32, %26
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %85

47:                                               ; preds = %37
  %48 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %7, align 8
  %49 = icmp ne %struct.ath9k_platform_data* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %7, align 8
  %52 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.firmware*, %struct.firmware** %3, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.firmware*, %struct.firmware** %3, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memcpy(i32 %53, i64 %56, i32 %59)
  %61 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %7, align 8
  %62 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %50, %47
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = load %struct.firmware*, %struct.firmware** %3, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.firmware*, %struct.firmware** %3, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ath9k_pci_fixup(%struct.pci_dev* %64, i32* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %85

75:                                               ; preds = %63
  %76 = call i32 (...) @pci_lock_rescan_remove()
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.pci_bus*, %struct.pci_bus** %78, align 8
  store %struct.pci_bus* %79, %struct.pci_bus** %8, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %80)
  %82 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %83 = call i32 @pci_rescan_bus(%struct.pci_bus* %82)
  %84 = call i32 (...) @pci_unlock_rescan_remove()
  br label %85

85:                                               ; preds = %75, %74, %43, %22
  %86 = load %struct.firmware*, %struct.firmware** %3, align 8
  %87 = call i32 @release_firmware(%struct.firmware* %86)
  ret void
}

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ath9k_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i64 @ath9k_pci_fixup(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_rescan_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
