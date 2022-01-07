; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i64* }

@AHCI_MAX_CLKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_platform_enable_clks(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AHCI_MAX_CLKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %6
  %20 = phi i1 [ false, %6 ], [ %18, %10 ]
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @clk_prepare_enable(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %38

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6

37:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %54

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_disable_unprepare(i64 %50)
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %37
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
