; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_switch_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.adm6996_priv = type { i64, i32, %struct.switch_dev }
%struct.switch_dev = type { i8*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.net_device = type { i32 }

@ADM_VID_CHECK = common dso_local global i32 0, align 4
@ADM6996FC = common dso_local global i64 0, align 8
@ADM6996M = common dso_local global i64 0, align 8
@adm6996_model_name = common dso_local global i32* null, align 8
@ADM_CPU_PORT = common dso_local global i32 0, align 4
@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@ADM_NUM_VLANS = common dso_local global i32 0, align 4
@adm6996_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ADM6996L = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: %s model PHY found.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm6996_priv*, i8*, %struct.net_device*)* @adm6996_switch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_switch_init(%struct.adm6996_priv* %0, i8* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adm6996_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.switch_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %11 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %12 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %3
  %16 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %17 = load i32, i32* @ADM_VID_CHECK, align 4
  %18 = call i32 @r16(%struct.adm6996_priv* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = xor i32 %19, 4096
  store i32 %20, i32* %9, align 4
  %21 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %22 = load i32, i32* @ADM_VID_CHECK, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @w16(%struct.adm6996_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %26 = load i32, i32* @ADM_VID_CHECK, align 4
  %27 = call i32 @r16(%struct.adm6996_priv* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 4096
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %15
  %34 = load i64, i64* @ADM6996FC, align 8
  %35 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %36 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %45

37:                                               ; preds = %15
  %38 = load i64, i64* @ADM6996M, align 8
  %39 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %40 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %42 = load i32, i32* @ADM_VID_CHECK, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @w16(%struct.adm6996_priv* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %48 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %47, i32 0, i32 2
  store %struct.switch_dev* %48, %struct.switch_dev** %8, align 8
  %49 = load i32*, i32** @adm6996_model_name, align 8
  %50 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %51 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %56 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ADM_CPU_PORT, align 4
  %58 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %59 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ADM_NUM_PORTS, align 4
  %61 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %62 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ADM_NUM_VLANS, align 4
  %64 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %65 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %67 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %66, i32 0, i32 2
  store %struct.TYPE_4__* @adm6996_ops, %struct.TYPE_4__** %67, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %70 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %72 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ADM6996L, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adm6996_ops, i32 0, i32 1, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @adm6996_ops, i32 0, i32 0), align 8
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %80 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %81)
  %83 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %84 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %83, i32 0, i32 1
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %87 = call i32 @adm6996_perform_reset(%struct.adm6996_priv* %86)
  %88 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %89 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %92 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ADM6996M, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %77
  %97 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %98 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ADM6996L, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %77
  %103 = load %struct.switch_dev*, %struct.switch_dev** %8, align 8
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = call i32 @register_switch(%struct.switch_dev* %103, %struct.net_device* %104)
  store i32 %105, i32* %4, align 4
  br label %109

106:                                              ; preds = %96
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @r16(%struct.adm6996_priv*, i32) #1

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm6996_perform_reset(%struct.adm6996_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @register_switch(%struct.switch_dev*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
