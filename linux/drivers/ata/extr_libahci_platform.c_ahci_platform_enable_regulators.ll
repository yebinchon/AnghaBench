; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i32, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_platform_enable_regulators(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %6 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @regulator_enable(i64 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @regulator_enable(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %85

22:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %52

39:                                               ; preds = %29
  %40 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @regulator_enable(i64 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %56

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %23

55:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %91

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @regulator_disable(i64 %77)
  br label %79

79:                                               ; preds = %70, %61
  br label %57

80:                                               ; preds = %57
  %81 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %82 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @regulator_disable(i64 %83)
  br label %85

85:                                               ; preds = %80, %21
  %86 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %87 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @regulator_disable(i64 %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %55, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
