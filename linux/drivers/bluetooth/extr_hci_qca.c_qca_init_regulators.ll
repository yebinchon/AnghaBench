; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_init_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_init_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca_power = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qca_vreg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca_power*, %struct.qca_vreg*, i64)* @qca_init_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_init_regulators(%struct.qca_power* %0, %struct.qca_vreg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qca_power*, align 8
  %6 = alloca %struct.qca_vreg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qca_power* %0, %struct.qca_power** %5, align 8
  store %struct.qca_vreg* %1, %struct.qca_vreg** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.qca_power*, %struct.qca_power** %5, align 8
  %10 = getelementptr inbounds %struct.qca_power, %struct.qca_power* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_3__* @devm_kcalloc(i32 %11, i64 %12, i32 4, i32 %13)
  %15 = load %struct.qca_power*, %struct.qca_power** %5, align 8
  %16 = getelementptr inbounds %struct.qca_power, %struct.qca_power* %15, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %16, align 8
  %17 = load %struct.qca_power*, %struct.qca_power** %5, align 8
  %18 = getelementptr inbounds %struct.qca_power, %struct.qca_power* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.qca_vreg*, %struct.qca_vreg** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %31, i64 %33
  %35 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qca_power*, %struct.qca_power** %5, align 8
  %38 = getelementptr inbounds %struct.qca_power, %struct.qca_power* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load %struct.qca_power*, %struct.qca_power** %5, align 8
  %49 = getelementptr inbounds %struct.qca_power, %struct.qca_power* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.qca_power*, %struct.qca_power** %5, align 8
  %53 = getelementptr inbounds %struct.qca_power, %struct.qca_power* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @devm_regulator_bulk_get(i32 %50, i64 %51, %struct.TYPE_3__* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_3__* @devm_kcalloc(i32, i64, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
