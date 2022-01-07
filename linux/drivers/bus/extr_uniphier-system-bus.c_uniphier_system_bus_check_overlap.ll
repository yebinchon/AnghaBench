; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_uniphier-system-bus.c_uniphier_system_bus_check_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_uniphier-system-bus.c_uniphier_system_bus_check_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_system_bus_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"region overlap between bank%d and bank%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_system_bus_priv*)* @uniphier_system_bus_check_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_system_bus_check_overlap(%struct.uniphier_system_bus_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_system_bus_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_system_bus_priv* %0, %struct.uniphier_system_bus_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %73, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %9 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %76

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %69, %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %19 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %16
  %24 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %25 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %33 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %31, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %23
  %42 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %43 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %51 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %49, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %41
  %60 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %3, align 8
  %61 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %41, %23
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %16

72:                                               ; preds = %16
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %6

76:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
