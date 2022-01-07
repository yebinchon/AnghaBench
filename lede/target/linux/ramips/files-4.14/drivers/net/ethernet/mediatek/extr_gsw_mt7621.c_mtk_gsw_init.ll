; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7621.c_mtk_gsw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7621.c_mtk_gsw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fe_priv = type { %struct.TYPE_3__*, %struct.device_node* }
%struct.TYPE_3__ = type { %struct.mt7620_gsw* }
%struct.mt7620_gsw = type { i64 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@mediatek_gsw_match = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@gsw_interrupt_mt7621 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gsw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_gsw_init(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mt7620_gsw*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %7 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %7, i32 0, i32 1
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = icmp ne %struct.platform_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mediatek_gsw_match, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_device_is_compatible(%struct.device_node* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = call %struct.mt7620_gsw* @platform_get_drvdata(%struct.platform_device* %28)
  store %struct.mt7620_gsw* %29, %struct.mt7620_gsw** %6, align 8
  %30 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %31 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %32 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.mt7620_gsw* %30, %struct.mt7620_gsw** %34, align 8
  %35 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %36 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %41 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @gsw_interrupt_mt7621, align 4
  %44 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %45 = call i32 @request_irq(i64 %42, i32 %43, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.fe_priv* %44)
  %46 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %47 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @disable_irq(i64 %48)
  br label %50

50:                                               ; preds = %39, %27
  %51 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = call i32 @mt7621_hw_init(%struct.mt7620_gsw* %51, %struct.device_node* %52)
  %54 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %55 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %60 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @enable_irq(i64 %61)
  br label %63

63:                                               ; preds = %58, %50
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %24, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i32) #1

declare dso_local %struct.mt7620_gsw* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.fe_priv*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @mt7621_hw_init(%struct.mt7620_gsw*, %struct.device_node*) #1

declare dso_local i32 @enable_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
