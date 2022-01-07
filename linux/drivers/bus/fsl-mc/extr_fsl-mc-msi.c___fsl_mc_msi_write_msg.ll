; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c___fsl_mc_msi_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c___fsl_mc_msi_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fsl_mc_device_irq = type { i32, %struct.msi_desc*, %struct.fsl_mc_device* }
%struct.msi_desc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.dprc_irq_cfg = type { i32, i32, i32 }

@MC_CMD_FLAG_INTR_DIS = common dso_local global i32 0, align 4
@MC_CMD_FLAG_PRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dprc_set_irq() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dprc_obj_set_irq() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_mc_device*, %struct.fsl_mc_device_irq*)* @__fsl_mc_msi_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fsl_mc_msi_write_msg(%struct.fsl_mc_device* %0, %struct.fsl_mc_device_irq* %1) #0 {
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.fsl_mc_device_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_device*, align 8
  %7 = alloca %struct.msi_desc*, align 8
  %8 = alloca %struct.dprc_irq_cfg, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  store %struct.fsl_mc_device_irq* %1, %struct.fsl_mc_device_irq** %4, align 8
  %9 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %9, i32 0, i32 2
  %11 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %10, align 8
  store %struct.fsl_mc_device* %11, %struct.fsl_mc_device** %6, align 8
  %12 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %12, i32 0, i32 1
  %14 = load %struct.msi_desc*, %struct.msi_desc** %13, align 8
  store %struct.msi_desc* %14, %struct.msi_desc** %7, align 8
  %15 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %16 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %22 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %107

27:                                               ; preds = %20, %2
  %28 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %29 = icmp ne %struct.fsl_mc_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %107

31:                                               ; preds = %27
  %32 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %33 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 32
  %37 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %38 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds %struct.dprc_irq_cfg, %struct.dprc_irq_cfg* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %44 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.dprc_irq_cfg, %struct.dprc_irq_cfg* %8, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %49 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.dprc_irq_cfg, %struct.dprc_irq_cfg* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %53 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %54 = icmp eq %struct.fsl_mc_device* %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %31
  %56 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %57 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MC_CMD_FLAG_INTR_DIS, align 4
  %60 = load i32, i32* @MC_CMD_FLAG_PRI, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %63 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %4, align 8
  %66 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dprc_set_irq(i32 %58, i32 %61, i32 %64, i32 %67, %struct.dprc_irq_cfg* %8)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %55
  %72 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %73 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %55
  br label %107

77:                                               ; preds = %31
  %78 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %79 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MC_CMD_FLAG_INTR_DIS, align 4
  %82 = load i32, i32* @MC_CMD_FLAG_PRI, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %85 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %88 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %92 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %4, align 8
  %96 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dprc_set_obj_irq(i32 %80, i32 %83, i32 %86, i32 %90, i32 %94, i32 %97, %struct.dprc_irq_cfg* %8)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %77
  %102 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %103 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %77
  br label %107

107:                                              ; preds = %26, %30, %106, %76
  ret void
}

declare dso_local i32 @dprc_set_irq(i32, i32, i32, i32, %struct.dprc_irq_cfg*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dprc_set_obj_irq(i32, i32, i32, i32, i32, i32, %struct.dprc_irq_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
