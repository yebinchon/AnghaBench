; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32, %struct.TYPE_3__*, %struct.bridge_irq_chip_data* }
%struct.TYPE_3__ = type { i32 }
%struct.bridge_irq_chip_data = type { i32, %struct.bridge_controller* }
%struct.bridge_controller = type { i32 }

@b_int_addr = common dso_local global %struct.TYPE_4__* null, align 8
@b_int_enable = common dso_local global i32 0, align 4
@b_int_mode = common dso_local global i32 0, align 4
@b_int_device = common dso_local global i32 0, align 4
@b_wid_tflush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_data*, i32)* @bridge_domain_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_domain_activate(%struct.irq_domain* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bridge_irq_chip_data*, align 8
  %8 = alloca %struct.bridge_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.irq_data* %1, %struct.irq_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 2
  %14 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %13, align 8
  store %struct.bridge_irq_chip_data* %14, %struct.bridge_irq_chip_data** %7, align 8
  %15 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %7, align 8
  %16 = getelementptr inbounds %struct.bridge_irq_chip_data, %struct.bridge_irq_chip_data* %15, i32 0, i32 1
  %17 = load %struct.bridge_controller*, %struct.bridge_controller** %16, align 8
  store %struct.bridge_controller* %17, %struct.bridge_controller** %8, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @b_int_addr, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %34 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 30
  %37 = and i32 %36, 196608
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %7, align 8
  %41 = getelementptr inbounds %struct.bridge_irq_chip_data, %struct.bridge_irq_chip_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 8
  %44 = or i32 %39, %43
  %45 = call i32 @bridge_write(%struct.bridge_controller* %26, i32 %32, i32 %44)
  %46 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %47 = load i32, i32* @b_int_enable, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = call i32 @bridge_set(%struct.bridge_controller* %46, i32 %47, i64 %50)
  %52 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %53 = load i32, i32* @b_int_enable, align 4
  %54 = call i32 @bridge_set(%struct.bridge_controller* %52, i32 %53, i64 2147483136)
  %55 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %56 = load i32, i32* @b_int_mode, align 4
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = call i32 @bridge_set(%struct.bridge_controller* %55, i32 %56, i64 %59)
  %61 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %62 = load i32, i32* @b_int_device, align 4
  %63 = call i32 @bridge_read(%struct.bridge_controller* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 3
  %66 = shl i32 7, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 3
  %73 = shl i32 %70, %72
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %77 = load i32, i32* @b_int_device, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @bridge_write(%struct.bridge_controller* %76, i32 %77, i32 %78)
  %80 = load %struct.bridge_controller*, %struct.bridge_controller** %8, align 8
  %81 = load i32, i32* @b_wid_tflush, align 4
  %82 = call i32 @bridge_read(%struct.bridge_controller* %80, i32 %81)
  ret i32 0
}

declare dso_local i32 @bridge_write(%struct.bridge_controller*, i32, i32) #1

declare dso_local i32 @bridge_set(%struct.bridge_controller*, i32, i64) #1

declare dso_local i32 @bridge_read(%struct.bridge_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
