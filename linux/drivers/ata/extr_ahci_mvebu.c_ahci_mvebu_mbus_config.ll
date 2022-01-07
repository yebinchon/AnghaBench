; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mvebu.c_ahci_mvebu_mbus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mvebu.c_ahci_mvebu_mbus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i64 }
%struct.mbus_dram_target_info = type { i32, i32, %struct.mbus_dram_window* }
%struct.mbus_dram_window = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_host_priv*, %struct.mbus_dram_target_info*)* @ahci_mvebu_mbus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_mvebu_mbus_config(%struct.ahci_host_priv* %0, %struct.mbus_dram_target_info* %1) #0 {
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.mbus_dram_target_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbus_dram_window*, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  store %struct.mbus_dram_target_info* %1, %struct.mbus_dram_target_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @AHCI_WINDOW_CTRL(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @AHCI_WINDOW_BASE(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writel(i32 0, i64 %23)
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @AHCI_WINDOW_SIZE(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  br label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %7

35:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %89, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %4, align 8
  %39 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %36
  %43 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %4, align 8
  %44 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %43, i32 0, i32 2
  %45 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %45, i64 %47
  store %struct.mbus_dram_window* %48, %struct.mbus_dram_window** %6, align 8
  %49 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %50 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %4, align 8
  %54 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 4
  %57 = or i32 %52, %56
  %58 = or i32 %57, 1
  %59 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @AHCI_WINDOW_CTRL(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @writel(i32 %58, i64 %64)
  %66 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %67 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 16
  %70 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @AHCI_WINDOW_BASE(i32 %73)
  %75 = add nsw i64 %72, %74
  %76 = call i32 @writel(i32 %69, i64 %75)
  %77 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %78 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = and i32 %80, -65536
  %82 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @AHCI_WINDOW_SIZE(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @writel(i32 %81, i64 %87)
  br label %89

89:                                               ; preds = %42
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %36

92:                                               ; preds = %36
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @AHCI_WINDOW_CTRL(i32) #1

declare dso_local i64 @AHCI_WINDOW_BASE(i32) #1

declare dso_local i64 @AHCI_WINDOW_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
