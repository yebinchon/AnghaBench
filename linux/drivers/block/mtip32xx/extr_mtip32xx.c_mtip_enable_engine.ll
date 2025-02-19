; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_enable_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_enable_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i64 }

@PORT_CMD = common dso_local global i64 0, align 8
@PORT_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, i32)* @mtip_enable_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_enable_engine(%struct.mtip_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mtip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %7 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PORT_CMD, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PORT_CMD_START, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %19 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PORT_CMD, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  br label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PORT_CMD_START, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %24, %14
  %36 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %37 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PORT_CMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PORT_CMD_START, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @PORT_CMD_START, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
