; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_translate_mc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_translate_mc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32 }
%struct.device = type { i32 }
%struct.fsl_mc = type { i32, %struct.fsl_mc_addr_translation_range* }
%struct.fsl_mc_addr_translation_range = type { i32, i64, i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*, i32, i64, i64*)* @translate_mc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_mc_addr(%struct.fsl_mc_device* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.fsl_mc*, align 8
  %13 = alloca %struct.fsl_mc_addr_translation_range*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %15 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %14, i32 0, i32 0
  %16 = call i32 @fsl_mc_get_root_dprc(i32* %15, %struct.device** %11)
  %17 = load %struct.device*, %struct.device** %11, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.fsl_mc* @dev_get_drvdata(i32 %19)
  store %struct.fsl_mc* %20, %struct.fsl_mc** %12, align 8
  %21 = load %struct.fsl_mc*, %struct.fsl_mc** %12, align 8
  %22 = getelementptr inbounds %struct.fsl_mc, %struct.fsl_mc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %5, align 4
  br label %77

28:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.fsl_mc*, %struct.fsl_mc** %12, align 8
  %32 = getelementptr inbounds %struct.fsl_mc, %struct.fsl_mc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.fsl_mc*, %struct.fsl_mc** %12, align 8
  %37 = getelementptr inbounds %struct.fsl_mc, %struct.fsl_mc* %36, i32 0, i32 1
  %38 = load %struct.fsl_mc_addr_translation_range*, %struct.fsl_mc_addr_translation_range** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fsl_mc_addr_translation_range, %struct.fsl_mc_addr_translation_range* %38, i64 %40
  store %struct.fsl_mc_addr_translation_range* %41, %struct.fsl_mc_addr_translation_range** %13, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.fsl_mc_addr_translation_range*, %struct.fsl_mc_addr_translation_range** %13, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_addr_translation_range, %struct.fsl_mc_addr_translation_range* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %35
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.fsl_mc_addr_translation_range*, %struct.fsl_mc_addr_translation_range** %13, align 8
  %50 = getelementptr inbounds %struct.fsl_mc_addr_translation_range, %struct.fsl_mc_addr_translation_range* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.fsl_mc_addr_translation_range*, %struct.fsl_mc_addr_translation_range** %13, align 8
  %56 = getelementptr inbounds %struct.fsl_mc_addr_translation_range, %struct.fsl_mc_addr_translation_range* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.fsl_mc_addr_translation_range*, %struct.fsl_mc_addr_translation_range** %13, align 8
  %61 = getelementptr inbounds %struct.fsl_mc_addr_translation_range, %struct.fsl_mc_addr_translation_range* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.fsl_mc_addr_translation_range*, %struct.fsl_mc_addr_translation_range** %13, align 8
  %65 = getelementptr inbounds %struct.fsl_mc_addr_translation_range, %struct.fsl_mc_addr_translation_range* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = add nsw i64 %62, %67
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %77

70:                                               ; preds = %53, %47, %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %59, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @fsl_mc_get_root_dprc(i32*, %struct.device**) #1

declare dso_local %struct.fsl_mc* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
