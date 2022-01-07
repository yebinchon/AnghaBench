; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_swconfig.c_get_mib_counter.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_swconfig.c_get_mib_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.gsw_mt753x = type { i32 }

@mt753x_mibs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, i32, i32)* @get_mib_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mib_counter(%struct.gsw_mt753x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt753x_mibs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt753x_mibs, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @MIB_COUNTER_REG(i32 %27, i32 %28)
  %30 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %50, %31
  %33 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 4
  %37 = call i32 @MIB_COUNTER_REG(i32 %34, i32 %36)
  %38 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %33, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MIB_COUNTER_REG(i32 %40, i32 %41)
  %43 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 4
  %48 = call i32 @MIB_COUNTER_REG(i32 %45, i32 %47)
  %49 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %44, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %32, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 32
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %25
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @MIB_COUNTER_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
