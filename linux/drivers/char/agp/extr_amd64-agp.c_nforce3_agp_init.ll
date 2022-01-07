; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_nforce3_agp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_nforce3_agp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [24 x i8] c"setting up Nforce3 AGP\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"can't find Nforce3 secondary device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nforce3_sizes = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"no NForce3 size found for %d\0A\00", align 1
@NVIDIA_X86_64_1_APSIZE = common dso_local global i32 0, align 4
@AMD64_GARTAPERTUREBASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"aperture base > 4G\0A\00", align 1
@NVIDIA_X86_64_0_APBASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APBASE1 = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APLIMIT1 = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APBASE2 = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APLIMIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @nforce3_agp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce3_agp_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %12 = call i32 (...) @amd64_fetch_size()
  store i32 %12, i32* %11, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PCI_DEVFN(i32 11, i32 0)
  %20 = call %struct.pci_dev* @pci_get_slot(i32 %18, i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %22 = icmp eq %struct.pci_dev* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_info(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %30

49:                                               ; preds = %44, %30
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_info(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %134

61:                                               ; preds = %49
  %62 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %63 = load i32, i32* @NVIDIA_X86_64_1_APSIZE, align 4
  %64 = call i32 @pci_read_config_dword(%struct.pci_dev* %62, i32 %63, i32* %4)
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, -16
  store i32 %66, i32* %4, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %76 = load i32, i32* @NVIDIA_X86_64_1_APSIZE, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @pci_write_config_dword(%struct.pci_dev* %75, i32 %76, i32 %77)
  %79 = call %struct.TYPE_4__* @node_to_amd_nb(i32 0)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.pci_dev*, %struct.pci_dev** %80, align 8
  %82 = load i32, i32* @AMD64_GARTAPERTUREBASE, align 4
  %83 = call i32 @pci_read_config_dword(%struct.pci_dev* %81, i32 %82, i32* %5)
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 32767
  %86 = ashr i32 %85, 7
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %61
  %89 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_info(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %134

94:                                               ; preds = %61
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, 32767
  %97 = shl i32 %96, 25
  store i32 %97, i32* %5, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %99 = load i32, i32* @NVIDIA_X86_64_0_APBASE, align 4
  %100 = call i32 @pci_read_config_dword(%struct.pci_dev* %98, i32 %99, i32* %6)
  %101 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = load i32, i32* @NVIDIA_X86_64_0_APBASE, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @pci_write_config_dword(%struct.pci_dev* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %11, align 4
  %114 = mul i32 %113, 1024
  %115 = mul i32 %114, 1024
  %116 = add i32 %112, %115
  %117 = sub i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %119 = load i32, i32* @NVIDIA_X86_64_1_APBASE1, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @pci_write_config_dword(%struct.pci_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %123 = load i32, i32* @NVIDIA_X86_64_1_APLIMIT1, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @pci_write_config_dword(%struct.pci_dev* %122, i32 %123, i32 %124)
  %126 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %127 = load i32, i32* @NVIDIA_X86_64_1_APBASE2, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @pci_write_config_dword(%struct.pci_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %131 = load i32, i32* @NVIDIA_X86_64_1_APLIMIT2, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @pci_write_config_dword(%struct.pci_dev* %130, i32 %131, i32 %132)
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %94, %88, %54
  %135 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %136 = call i32 @pci_dev_put(%struct.pci_dev* %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %23
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @amd64_fetch_size(...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
