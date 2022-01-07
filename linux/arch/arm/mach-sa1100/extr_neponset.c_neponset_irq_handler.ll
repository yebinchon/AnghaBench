; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_neponset.c_neponset_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_neponset.c_neponset_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.neponset_drvdata = type { i64, i64 }

@IRR = common dso_local global i64 0, align 8
@IRR_ETHERNET = common dso_local global i32 0, align 4
@IRR_USAR = common dso_local global i32 0, align 4
@IRR_SA1111 = common dso_local global i32 0, align 4
@NEP_IRQ_SMC91X = common dso_local global i64 0, align 8
@NEP_IRQ_USAR = common dso_local global i64 0, align 8
@NEP_IRQ_SA1111 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @neponset_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neponset_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.neponset_drvdata*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %6 = call %struct.neponset_drvdata* @irq_desc_get_handler_data(%struct.irq_desc* %5)
  store %struct.neponset_drvdata* %6, %struct.neponset_drvdata** %3, align 8
  br label %7

7:                                                ; preds = %1, %108
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %12, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = call i32 %13(%struct.TYPE_7__* %15)
  %17 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %18 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IRR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb_relaxed(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @IRR_ETHERNET, align 4
  %24 = load i32, i32* @IRR_USAR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IRR_ETHERNET, align 4
  %30 = load i32, i32* @IRR_USAR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IRR_SA1111, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  br label %109

37:                                               ; preds = %7
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IRR_ETHERNET, align 4
  %40 = load i32, i32* @IRR_USAR, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %37
  %45 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %46 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %49, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 0
  %53 = call i32 %50(%struct.TYPE_7__* %52)
  %54 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %58, align 8
  %60 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 0
  %62 = call i32 %59(%struct.TYPE_7__* %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IRR_ETHERNET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %44
  %68 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %69 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NEP_IRQ_SMC91X, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @generic_handle_irq(i64 %72)
  br label %74

74:                                               ; preds = %67, %44
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @IRR_USAR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %81 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NEP_IRQ_USAR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @generic_handle_irq(i64 %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %88 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %91, align 8
  %93 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %94 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %93, i32 0, i32 0
  %95 = call i32 %92(%struct.TYPE_7__* %94)
  br label %96

96:                                               ; preds = %86, %37
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @IRR_SA1111, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.neponset_drvdata*, %struct.neponset_drvdata** %3, align 8
  %103 = getelementptr inbounds %struct.neponset_drvdata, %struct.neponset_drvdata* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NEP_IRQ_SA1111, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @generic_handle_irq(i64 %106)
  br label %108

108:                                              ; preds = %101, %96
  br label %7

109:                                              ; preds = %36
  ret void
}

declare dso_local %struct.neponset_drvdata* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @generic_handle_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
