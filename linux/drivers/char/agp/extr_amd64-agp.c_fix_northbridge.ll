; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_fix_northbridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_fix_northbridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@AMD64_GARTAPERTURECTL = common dso_local global i32 0, align 4
@AMD64_GARTAPERTUREBASE = common dso_local global i32 0, align 4
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"aperture size %u MB is not right, using settings from NB\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"aperture from AGP @ %Lx size %u MB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_dev*, i32)* @fix_northbridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_northbridge(%struct.pci_dev* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %16 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 %15, i32* %11)
  %17 = load i32, i32* %11, align 4
  %18 = ashr i32 %17, 1
  %19 = and i32 %18, 7
  store i32 %19, i32* %11, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* @AMD64_GARTAPERTUREBASE, align 4
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 %21, i32* %12)
  %23 = load i32, i32* %12, align 4
  %24 = shl i32 %23, 25
  store i32 %24, i32* %9, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 20
  %28 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i32 %27, i32* %13)
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 33554432, %33
  %35 = call i64 @agp_aperture_valid(i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %110

38:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %110

39:                                               ; preds = %3
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 4095
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 255
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, 3840
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @hweight16(i32 %49)
  %51 = sub nsw i32 7, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %54 = call i32 @pci_bus_address(%struct.pci_dev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 20, %60
  %62 = zext i32 %61 to i64
  %63 = shl i64 32, %62
  %64 = add i64 %59, %63
  %65 = icmp ugt i64 %64, 4294967296
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 32, %69
  %71 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %68, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %66, %57, %48
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 33554432, %79
  %81 = call i64 @agp_aperture_valid(i32 %78, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %110

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = shl i32 32, %89
  %91 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 33554432, %96
  %98 = call i64 @agp_aperture_valid(i32 %95, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94, %85
  store i32 -1, i32* %4, align 4
  br label %110

101:                                              ; preds = %94
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @gart_set_size_and_enable(%struct.pci_dev* %102, i32 %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = load i32, i32* @AMD64_GARTAPERTUREBASE, align 4
  %107 = load i32, i32* %8, align 4
  %108 = ashr i32 %107, 25
  %109 = call i32 @pci_write_config_dword(%struct.pci_dev* %105, i32 %106, i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %101, %100, %83, %38, %37
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @agp_aperture_valid(i32, i32) #1

declare dso_local i32 @hweight16(i32) #1

declare dso_local i32 @pci_bus_address(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @gart_set_size_and_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
