; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_gsw_interrupt_mt7620.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_gsw_interrupt_mt7620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mt7620_gsw = type { i64 }

@PORT4_EPHY = common dso_local global i64 0, align 8
@GSW_REG_ISR = common dso_local global i32 0, align 4
@PORT_IRQ_ST_CHG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gsw_interrupt_mt7620 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsw_interrupt_mt7620(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca %struct.mt7620_gsw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.fe_priv*
  store %struct.fe_priv* %13, %struct.fe_priv** %5, align 8
  %14 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %15 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mt7620_gsw*
  store %struct.mt7620_gsw* %19, %struct.mt7620_gsw** %6, align 8
  %20 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %21 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORT4_EPHY, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4, i32 3
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %28 = load i32, i32* @GSW_REG_ISR, align 4
  %29 = call i32 @mtk_switch_r32(%struct.mt7620_gsw* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PORT_IRQ_ST_CHG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @GSW_REG_PORT_STATUS(i32 %41)
  %43 = call i32 @mtk_switch_r32(%struct.mt7620_gsw* %40, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %48 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %46, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %39
  %56 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 2
  %61 = and i32 %60, 3
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 2
  %64 = call i32 @mt7620_print_link_state(%struct.fe_priv* %56, i32 %57, i32 %58, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %55, %39
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %68 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %35

76:                                               ; preds = %35
  br label %77

77:                                               ; preds = %76, %2
  %78 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %79 = call i32 @mt7620_handle_carrier(%struct.fe_priv* %78)
  %80 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @GSW_REG_ISR, align 4
  %83 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @mtk_switch_r32(%struct.mt7620_gsw*, i32) #1

declare dso_local i32 @GSW_REG_PORT_STATUS(i32) #1

declare dso_local i32 @mt7620_print_link_state(%struct.fe_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7620_handle_carrier(%struct.fe_priv*) #1

declare dso_local i32 @mtk_switch_w32(%struct.mt7620_gsw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
