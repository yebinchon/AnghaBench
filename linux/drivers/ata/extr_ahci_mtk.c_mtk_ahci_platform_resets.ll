; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mtk.c_mtk_ahci_platform_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mtk.c_mtk_ahci_platform_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.mtk_ahci_plat* }
%struct.mtk_ahci_plat = type { i8*, i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to assert AXI bus\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to assert PHY digital part\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to assert PHY register part\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to deassert PHY register part\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to deassert PHY digital part\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to deassert AXI bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*, %struct.device*)* @mtk_ahci_platform_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ahci_platform_resets(%struct.ahci_host_priv* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtk_ahci_plat*, align 8
  %7 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %8, i32 0, i32 0
  %10 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %9, align 8
  store %struct.mtk_ahci_plat* %10, %struct.mtk_ahci_plat** %6, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i8* @devm_reset_control_get_optional_exclusive(%struct.device* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %16 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @PTR_ERR(i8* %17)
  %19 = load i32, i32* @EPROBE_DEFER, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %24 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %3, align 4
  br label %128

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i8* @devm_reset_control_get_optional_exclusive(%struct.device* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %33 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %3, align 4
  br label %128

44:                                               ; preds = %27
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i8* @devm_reset_control_get_optional_exclusive(%struct.device* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %48 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %50 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %3, align 4
  br label %128

61:                                               ; preds = %44
  %62 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @reset_control_assert(i8* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %128

72:                                               ; preds = %61
  %73 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %74 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @reset_control_assert(i8* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %128

83:                                               ; preds = %72
  %84 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %85 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @reset_control_assert(i8* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %128

94:                                               ; preds = %83
  %95 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %96 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @reset_control_deassert(i8* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %128

105:                                              ; preds = %94
  %106 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %107 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @reset_control_deassert(i8* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %128

116:                                              ; preds = %105
  %117 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %118 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @reset_control_deassert(i8* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %128

127:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %123, %112, %101, %90, %79, %68, %56, %39, %22
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i8* @devm_reset_control_get_optional_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @reset_control_assert(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
