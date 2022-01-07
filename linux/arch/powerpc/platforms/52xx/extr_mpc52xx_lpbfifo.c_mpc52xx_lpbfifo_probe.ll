; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_6__*, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.resource = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@lpbfifo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LPBFIFO_REG_ENABLE = common dso_local global i32 0, align 4
@mpc52xx_lpbfifo_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mpc52xx-lpbfifo\00", align 1
@LPBFIFO_REG_FIFO_DATA = common dso_local global i64 0, align 8
@BCOM_INITIATOR_SCLPC = common dso_local global i32 0, align 4
@BCOM_IPR_SCLPC = common dso_local global i32 0, align 4
@mpc52xx_lpbfifo_bcom_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"mpc52xx-lpbfifo-rx\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"mpc52xx_lpbfifo_probe() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_lpbfifo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_lpbfifo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 3), align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %109

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @irq_of_parse_and_map(i32 %17, i32 0)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 5), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 5), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %13
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @of_address_to_resource(i32 %28, i32 0, %struct.resource* %4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %109

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 7), align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @of_iomap(i32 %40, i32 0)
  store i32* %41, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 1), align 8
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 1), align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %109

47:                                               ; preds = %34
  %48 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 6))
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 1), align 8
  %50 = load i32, i32* @LPBFIFO_REG_ENABLE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @out_be32(i32* %52, i32 16842752)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 5), align 4
  %55 = load i32, i32* @mpc52xx_lpbfifo_irq, align 4
  %56 = call i32 @request_irq(i32 %54, i32 %55, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* @lpbfifo)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %101

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LPBFIFO_REG_FIFO_DATA, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @BCOM_INITIATOR_SCLPC, align 4
  %66 = load i32, i32* @BCOM_IPR_SCLPC, align 4
  %67 = call i32 @bcom_gen_bd_rx_init(i32 2, i64 %64, i32 %65, i32 %66, i32 16777216)
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 2), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 2), align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %100

71:                                               ; preds = %60
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 2), align 8
  %73 = call i32 @bcom_get_task_irq(i32 %72)
  %74 = load i32, i32* @mpc52xx_lpbfifo_bcom_irq, align 4
  %75 = call i32 @request_irq(i32 %73, i32 %74, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* @lpbfifo)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %97

79:                                               ; preds = %71
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 0), align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LPBFIFO_REG_FIFO_DATA, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* @BCOM_INITIATOR_SCLPC, align 4
  %85 = load i32, i32* @BCOM_IPR_SCLPC, align 4
  %86 = call i32 @bcom_gen_bd_tx_init(i32 2, i64 %83, i32 %84, i32 %85)
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 4), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 4), align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %93

90:                                               ; preds = %79
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 3), align 8
  store i32 0, i32* %2, align 4
  br label %109

93:                                               ; preds = %89
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 2), align 8
  %95 = call i32 @bcom_get_task_irq(i32 %94)
  %96 = call i32 @free_irq(i32 %95, %struct.TYPE_5__* @lpbfifo)
  br label %97

97:                                               ; preds = %93, %78
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 2), align 8
  %99 = call i32 @bcom_gen_bd_rx_release(i32 %98)
  br label %100

100:                                              ; preds = %97, %70
  br label %101

101:                                              ; preds = %100, %59
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 1), align 8
  %103 = call i32 @iounmap(i32* %102)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lpbfifo, i32 0, i32 1), align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_6__* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %101, %90, %44, %31, %21, %10
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i64 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32* @of_iomap(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @bcom_gen_bd_rx_init(i32, i64, i32, i32, i32) #1

declare dso_local i32 @bcom_get_task_irq(i32) #1

declare dso_local i32 @bcom_gen_bd_tx_init(i32, i64, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @bcom_gen_bd_rx_release(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
