; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_85xx_l2ctlr.c_mpc85xx_l2ctlr_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_85xx_l2ctlr.c_mpc85xx_l2ctlr_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sram_parameters = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Device's OF-node is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Missing L2 cache-size\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Illegal cache-sram-size in command line\0A\00", align 1
@l2ctlr = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Can't map L2 controller\0A\00", align 1
@L2SRAM_BAR_MSK_LO18 = common dso_local global i32 0, align 4
@L2CR_L2E = common dso_local global i32 0, align 4
@L2CR_L2FI = common dso_local global i32 0, align 4
@L2CR_SRAM_EIGHTH = common dso_local global i32 0, align 4
@L2CR_SRAM_QUART = common dso_local global i32 0, align 4
@L2CR_SRAM_HALF = common dso_local global i32 0, align 4
@L2CR_SRAM_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Can't instantiate Cache-SRAM\0A\00", align 1
@L2SRAM_BARE_MSK_HI4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc85xx_l2ctlr_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_l2ctlr_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sram_parameters, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %152

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @of_get_property(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %152

35:                                               ; preds = %21
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = call i64 @get_cache_sram_params(%struct.sram_parameters* %9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %152

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds %struct.sram_parameters, %struct.sram_parameters* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = urem i32 %42, %44
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.sram_parameters, %struct.sram_parameters* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 130, %47
  %49 = load i32, i32* %8, align 4
  %50 = udiv i32 %48, %49
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %6, align 1
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %41
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54, %41
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %152

68:                                               ; preds = %54
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_5__* @of_iomap(i32 %72, i32 0)
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** @l2ctlr, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %75 = icmp ne %struct.TYPE_5__* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %152

82:                                               ; preds = %68
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.sram_parameters, %struct.sram_parameters* %9, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = load i32, i32* @L2SRAM_BAR_MSK_LO18, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @out_be32(i32* %84, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* @L2CR_L2E, align 4
  %94 = load i32, i32* @L2CR_L2FI, align 4
  %95 = call i32 @clrsetbits_be32(i32* %92, i32 %93, i32 %94)
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i32
  switch i32 %97, label %126 [
    i32 131, label %98
    i32 128, label %107
    i32 129, label %116
    i32 130, label %125
  ]

98:                                               ; preds = %82
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* @L2CR_L2E, align 4
  %102 = load i32, i32* @L2CR_L2FI, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @L2CR_SRAM_EIGHTH, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @setbits32(i32* %100, i32 %105)
  br label %135

107:                                              ; preds = %82
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* @L2CR_L2E, align 4
  %111 = load i32, i32* @L2CR_L2FI, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @L2CR_SRAM_QUART, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @setbits32(i32* %109, i32 %114)
  br label %135

116:                                              ; preds = %82
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* @L2CR_L2E, align 4
  %120 = load i32, i32* @L2CR_L2FI, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @L2CR_SRAM_HALF, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @setbits32(i32* %118, i32 %123)
  br label %135

125:                                              ; preds = %82
  br label %126

126:                                              ; preds = %82, %125
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* @L2CR_L2E, align 4
  %130 = load i32, i32* @L2CR_L2FI, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @L2CR_SRAM_FULL, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @setbits32(i32* %128, i32 %133)
  br label %135

135:                                              ; preds = %126, %116, %107, %98
  %136 = call i32 (...) @eieio()
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = bitcast %struct.sram_parameters* %9 to i64*
  %139 = load i64, i64* %138, align 4
  %140 = call i64 @instantiate_cache_sram(%struct.platform_device* %137, i64 %139)
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %135
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @dev_err(%struct.TYPE_6__* %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** @l2ctlr, align 8
  %148 = call i32 @iounmap(%struct.TYPE_5__* %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %152

151:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %143, %76, %62, %40, %29, %15
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i64 @get_cache_sram_params(%struct.sram_parameters*) #1

declare dso_local %struct.TYPE_5__* @of_iomap(i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @clrsetbits_be32(i32*, i32, i32) #1

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i64 @instantiate_cache_sram(%struct.platform_device*, i64) #1

declare dso_local i32 @iounmap(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
