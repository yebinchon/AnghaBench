; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_put_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_put_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahci_host_priv = type { i32, i64*, i64*, i64 }

@AHCI_MAX_CLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @ahci_platform_put_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_platform_put_resources(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ahci_host_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ahci_host_priv*
  store %struct.ahci_host_priv* %8, %struct.ahci_host_priv** %5, align 8
  %9 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @pm_runtime_put_sync(%struct.device* %14)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @pm_runtime_disable(%struct.device* %16)
  br label %18

18:                                               ; preds = %13, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AHCI_MAX_CLKS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %23, %19
  %33 = phi i1 [ false, %19 ], [ %31, %23 ]
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @clk_put(i64 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %19

46:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %77, %46
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %50 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @regulator_put(i64 %74)
  br label %76

76:                                               ; preds = %67, %58, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %47

80:                                               ; preds = %47
  %81 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %82 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @kfree(i64* %83)
  ret void
}

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @regulator_put(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
