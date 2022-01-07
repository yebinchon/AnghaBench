; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32, i32, i64, %struct.TYPE_2__*, i64*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@HOST_CAP = common dso_local global i64 0, align 8
@HOST_CAP_64 = common dso_local global i32 0, align 4
@PORT_LST_ADDR_HI = common dso_local global i64 0, align 8
@PORT_FIS_ADDR_HI = common dso_local global i64 0, align 8
@MTIP_PF_HOST_CAP_64 = common dso_local global i32 0, align 4
@PORT_LST_ADDR = common dso_local global i64 0, align 8
@PORT_FIS_ADDR = common dso_local global i64 0, align 8
@PORT_SCR_ERR = common dso_local global i64 0, align 8
@PORT_IRQ_STAT = common dso_local global i64 0, align 8
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@DEF_PORT_IRQ = common dso_local global i32 0, align 4
@PORT_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*)* @mtip_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_init_port(%struct.mtip_port* %0) #0 {
  %2 = alloca %struct.mtip_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %2, align 8
  %4 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %5 = call i32 @mtip_deinit_port(%struct.mtip_port* %4)
  %6 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %7 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HOST_CAP, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load i32, i32* @HOST_CAP_64, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %19 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 16
  %22 = ashr i32 %21, 16
  %23 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %24 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PORT_LST_ADDR_HI, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = ashr i32 %32, 16
  %34 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %35 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PORT_FIS_ADDR_HI, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* @MTIP_PF_HOST_CAP_64, align 4
  %41 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %42 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %41, i32 0, i32 5
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %17, %1
  %45 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %46 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %49 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PORT_LST_ADDR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %55 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %58 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PORT_FIS_ADDR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %64 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PORT_SCR_ERR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  %69 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %70 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PORT_SCR_ERR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %92, %44
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %78 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %85 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %84, i32 0, i32 4
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @writel(i32 -1, i64 %90)
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %97 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PORT_IRQ_STAT, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readl(i64 %100)
  %102 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %103 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PORT_IRQ_STAT, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %109 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @HOST_IRQ_STAT, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @readl(i64 %114)
  %116 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %117 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HOST_IRQ_STAT, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %115, i64 %122)
  %124 = load i32, i32* @DEF_PORT_IRQ, align 4
  %125 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %126 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PORT_IRQ_MASK, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  ret void
}

declare dso_local i32 @mtip_deinit_port(%struct.mtip_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
