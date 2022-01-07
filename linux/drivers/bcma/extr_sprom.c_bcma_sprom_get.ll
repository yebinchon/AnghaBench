; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_sprom.c_bcma_sprom_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_sprom.c_bcma_sprom_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BCMA_CC_SPROM = common dso_local global i32 0, align 4
@bcma_sprom_get.sprom_sizes = internal constant [3 x i64] [i64 128, i64 130, i64 129], align 16
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4331 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43431 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"SPROM offset 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Invalid SPROM read from the PCIe card, trying to use fallback SPROM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_sprom_get(%struct.bcma_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  %10 = load i32, i32* @BCMA_CC_SPROM, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %21 = call i32 @bcma_sprom_ext_available(%struct.bcma_bus* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %25 = call i32 @bcma_sprom_onchip_available(%struct.bcma_bus* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %30 = call i32 @bcma_sprom_onchip_offset(%struct.bcma_bus* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %39 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %40 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %39, i32 0, i32 0
  %41 = call i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus* %38, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %138

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %46 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BCMA_CHIP_ID_BCM4331, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %53 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BCMA_CHIP_ID_BCM43431, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51, %44
  %59 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %60 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %59, i32 0, i32 1
  %61 = call i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.TYPE_4__* %60, i32 0)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @bcma_debug(%struct.bcma_bus* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %99, %62
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bcma_sprom_get.sprom_sizes, i64 0, i64 0))
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* @bcma_sprom_get.sprom_sizes, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32* @kcalloc(i64 %75, i32 4, i32 %76)
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %138

83:                                               ; preds = %70
  %84 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @bcma_sprom_read(%struct.bcma_bus* %84, i32 %85, i32* %86, i64 %87)
  %89 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @bcma_sprom_valid(%struct.bcma_bus* %89, i32* %90, i64 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %102

96:                                               ; preds = %83
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @kfree(i32* %97)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %66

102:                                              ; preds = %95, %66
  %103 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %104 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BCMA_CHIP_ID_BCM4331, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %111 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @BCMA_CHIP_ID_BCM43431, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %109, %102
  %117 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %118 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %117, i32 0, i32 1
  %119 = call i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.TYPE_4__* %118, i32 1)
  br label %120

120:                                              ; preds = %116, %109
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %125 = call i32 @bcma_warn(%struct.bcma_bus* %124, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %127 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %128 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %127, i32 0, i32 0
  %129 = call i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus* %126, i32* %128)
  store i32 %129, i32* %7, align 4
  br label %136

130:                                              ; preds = %120
  %131 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @bcma_sprom_extract_r8(%struct.bcma_bus* %131, i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @kfree(i32* %134)
  br label %136

136:                                              ; preds = %130, %123
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %80, %37, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @bcma_sprom_ext_available(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_sprom_onchip_available(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_sprom_onchip_offset(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus*, i32*) #1

declare dso_local i32 @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @bcma_sprom_read(%struct.bcma_bus*, i32, i32*, i64) #1

declare dso_local i32 @bcma_sprom_valid(%struct.bcma_bus*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bcma_warn(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_sprom_extract_r8(%struct.bcma_bus*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
