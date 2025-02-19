; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32 }
%struct.platform_device = type { i32 }

@lpbfifo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@LPBFIFO_REG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_lpbfifo_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_lpbfifo_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 0), align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = icmp ne i32* %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  %11 = load i32, i32* @LPBFIFO_REG_ENABLE, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @out_be32(i32* %13, i32 16842752)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 4), align 8
  %16 = call i32 @bcom_get_task_irq(i32 %15)
  %17 = call i32 @free_irq(i32 %16, %struct.TYPE_3__* @lpbfifo)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 4), align 8
  %19 = call i32 @bcom_gen_bd_tx_release(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 3), align 4
  %21 = call i32 @bcom_get_task_irq(i32 %20)
  %22 = call i32 @free_irq(i32 %21, %struct.TYPE_3__* @lpbfifo)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 3), align 4
  %24 = call i32 @bcom_gen_bd_rx_release(i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 2), align 8
  %26 = call i32 @free_irq(i32 %25, %struct.TYPE_3__* @lpbfifo)
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  %28 = call i32 @iounmap(i32* %27)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpbfifo, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %9, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @bcom_get_task_irq(i32) #1

declare dso_local i32 @bcom_gen_bd_tx_release(i32) #1

declare dso_local i32 @bcom_gen_bd_rx_release(i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
