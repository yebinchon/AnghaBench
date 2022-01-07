; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_3ds_debugboard.c_mxc_expio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_3ds_debugboard.c_mxc_expio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }

@brd_io = common dso_local global i64 0, align 8
@INTR_MASK_REG = common dso_local global i64 0, align 8
@INTR_STATUS_REG = common dso_local global i64 0, align 8
@domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @mxc_expio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_expio_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %10, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 0
  %14 = call i32 %11(%struct.TYPE_6__* %13)
  %15 = load i64, i64* @brd_io, align 8
  %16 = load i64, i64* @INTR_MASK_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @imx_readw(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i64, i64* @brd_io, align 8
  %20 = load i64, i64* @INTR_STATUS_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @imx_readw(i64 %21)
  %23 = load i32, i32* %3, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %39, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @domain, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @irq_find_mapping(i32 %35, i32 %36)
  %38 = call i32 @generic_handle_irq(i32 %37)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %46 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %49, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 0
  %53 = call i32 %50(%struct.TYPE_6__* %52)
  %54 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %58, align 8
  %60 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 0
  %62 = call i32 %59(%struct.TYPE_6__* %61)
  ret void
}

declare dso_local i32 @imx_readw(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
