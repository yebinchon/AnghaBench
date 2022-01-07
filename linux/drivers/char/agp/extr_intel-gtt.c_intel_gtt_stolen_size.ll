; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_stolen_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_stolen_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@intel_gtt_stolen_size.ddt = internal constant [4 x i32] [i32 0, i32 16, i32 32, i32 64], align 16
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I830_GMCH_CTRL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82830_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82845G_HB = common dso_local global i64 0, align 8
@I830_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@I830_RDRAM_CHANNEL_TYPE = common dso_local global i64 0, align 8
@I855_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"detected %lluK %s memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stolen\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"no pre-allocated video memory detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @intel_gtt_stolen_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_gtt_stolen_size() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @INTEL_GTT_GEN, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %103

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %11 = load i32, i32* @I830_GMCH_CTRL, align 4
  %12 = call i32 @pci_read_config_word(%struct.TYPE_3__* %10, i32 %11, i32* %2)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_DEVICE_ID_INTEL_82830_HB, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_DEVICE_ID_INTEL_82845G_HB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18, %9
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @I830_GMCH_GMS_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %49 [
    i32 140, label %28
    i32 141, label %30
    i32 139, label %32
    i32 142, label %34
  ]

28:                                               ; preds = %24
  %29 = call i64 @KB(i32 512)
  store i64 %29, i64* %5, align 8
  br label %50

30:                                               ; preds = %24
  %31 = call i64 @MB(i32 1)
  store i64 %31, i64* %5, align 8
  br label %50

32:                                               ; preds = %24
  %33 = call i64 @MB(i32 8)
  store i64 %33, i64* %5, align 8
  br label %50

34:                                               ; preds = %24
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1), align 8
  %36 = load i64, i64* @I830_RDRAM_CHANNEL_TYPE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readb(i64 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @I830_RDRAM_ND(i32 %39)
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @I830_RDRAM_DDT(i32 %43)
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* @intel_gtt_stolen_size.ddt, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @MB(i32 %46)
  %48 = mul nsw i64 %42, %47
  store i64 %48, i64* %5, align 8
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %49, %34, %32, %30, %28
  br label %83

51:                                               ; preds = %18
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @I855_GMCH_GMS_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %81 [
    i32 137, label %55
    i32 135, label %57
    i32 134, label %59
    i32 138, label %61
    i32 136, label %63
    i32 133, label %65
    i32 132, label %67
    i32 144, label %69
    i32 143, label %71
    i32 128, label %73
    i32 131, label %75
    i32 130, label %77
    i32 129, label %79
  ]

55:                                               ; preds = %51
  %56 = call i64 @MB(i32 1)
  store i64 %56, i64* %5, align 8
  br label %82

57:                                               ; preds = %51
  %58 = call i64 @MB(i32 4)
  store i64 %58, i64* %5, align 8
  br label %82

59:                                               ; preds = %51
  %60 = call i64 @MB(i32 8)
  store i64 %60, i64* %5, align 8
  br label %82

61:                                               ; preds = %51
  %62 = call i64 @MB(i32 16)
  store i64 %62, i64* %5, align 8
  br label %82

63:                                               ; preds = %51
  %64 = call i64 @MB(i32 32)
  store i64 %64, i64* %5, align 8
  br label %82

65:                                               ; preds = %51
  %66 = call i64 @MB(i32 48)
  store i64 %66, i64* %5, align 8
  br label %82

67:                                               ; preds = %51
  %68 = call i64 @MB(i32 64)
  store i64 %68, i64* %5, align 8
  br label %82

69:                                               ; preds = %51
  %70 = call i64 @MB(i32 128)
  store i64 %70, i64* %5, align 8
  br label %82

71:                                               ; preds = %51
  %72 = call i64 @MB(i32 256)
  store i64 %72, i64* %5, align 8
  br label %82

73:                                               ; preds = %51
  %74 = call i64 @MB(i32 96)
  store i64 %74, i64* %5, align 8
  br label %82

75:                                               ; preds = %51
  %76 = call i64 @MB(i32 160)
  store i64 %76, i64* %5, align 8
  br label %82

77:                                               ; preds = %51
  %78 = call i64 @MB(i32 224)
  store i64 %78, i64* %5, align 8
  br label %82

79:                                               ; preds = %51
  %80 = call i64 @MB(i32 352)
  store i64 %80, i64* %5, align 8
  br label %82

81:                                               ; preds = %51
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i64, i64* %5, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @KB(i32 1)
  %91 = sdiv i64 %89, %90
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %96 = call i32 (i32*, i8*, ...) @dev_info(i32* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %91, i8* %95)
  br label %101

97:                                               ; preds = %83
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = call i32 (i32*, i8*, ...) @dev_info(i32* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %101

101:                                              ; preds = %97, %86
  %102 = load i64, i64* %5, align 8
  store i64 %102, i64* %1, align 8
  br label %103

103:                                              ; preds = %101, %8
  %104 = load i64, i64* %1, align 8
  ret i64 %104
}

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i64 @KB(i32) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @I830_RDRAM_ND(i32) #1

declare dso_local i64 @I830_RDRAM_DDT(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
