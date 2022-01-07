; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_open_card_oam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_open_card_oam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32, %struct.vc_map**, i32 }
%struct.vc_map = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: can't alloc vc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SAR_RCTE_CONNECTOPEN = common dso_local global i32 0, align 4
@SAR_RCTE_RAWCELLINTEN = common dso_local global i32 0, align 4
@SAR_RCTE_RCQ = common dso_local global i32 0, align 4
@SAR_RCTE_FBP_1 = common dso_local global i32 0, align 4
@SAR_CMD_OPEN_CONNECTION = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @open_card_oam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_card_oam(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %94, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %14 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 1, %15
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %97

18:                                               ; preds = %11
  store i32 3, i32* %8, align 4
  br label %19

19:                                               ; preds = %90, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %93

22:                                               ; preds = %19
  %23 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @VPCI2VC(%struct.idt77252_dev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.vc_map* @kzalloc(i32 8, i32 %27)
  store %struct.vc_map* %28, %struct.vc_map** %6, align 8
  %29 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %30 = icmp ne %struct.vc_map* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %33 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %98

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %41 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %43 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %44 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %43, i32 0, i32 3
  %45 = load %struct.vc_map**, %struct.vc_map*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %45, i64 %47
  store %struct.vc_map* %42, %struct.vc_map** %48, align 8
  %49 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %50 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %51 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @flush_rx_pool(%struct.idt77252_dev* %49, i32* %52)
  %54 = load i32, i32* @SAR_RCTE_CONNECTOPEN, align 4
  %55 = load i32, i32* @SAR_RCTE_RAWCELLINTEN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SAR_RCTE_RCQ, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SAR_RCTE_FBP_1, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %62 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %65 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 2
  %68 = add nsw i32 %63, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %5, align 8
  %70 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @write_sram(%struct.idt77252_dev* %70, i64 %71, i32 %72)
  %74 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %75 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %74, i32 0, i32 2
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load i64, i64* @SAR_CMD_OPEN_CONNECTION, align 8
  %79 = load i64, i64* %5, align 8
  %80 = shl i64 %79, 2
  %81 = or i64 %78, %80
  %82 = load i32, i32* @SAR_REG_CMD, align 4
  %83 = call i32 @writel(i64 %81, i32 %82)
  %84 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %85 = call i32 @waitfor_idle(%struct.idt77252_dev* %84)
  %86 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %87 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %86, i32 0, i32 2
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %38
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %19

93:                                               ; preds = %19
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %11

97:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %31
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @VPCI2VC(%struct.idt77252_dev*, i32, i32) #1

declare dso_local %struct.vc_map* @kzalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @flush_rx_pool(%struct.idt77252_dev*, i32*) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
