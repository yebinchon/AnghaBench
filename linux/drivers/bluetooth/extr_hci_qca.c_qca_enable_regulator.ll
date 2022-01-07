; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_enable_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_enable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.qca_vreg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.regulator*)* @qca_enable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_enable_regulator(i64 %0, i64 %1, %struct.regulator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qca_vreg, align 8
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.qca_vreg* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  store %struct.regulator* %2, %struct.regulator** %6, align 8
  %11 = load %struct.regulator*, %struct.regulator** %6, align 8
  %12 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @regulator_set_voltage(%struct.regulator* %11, i32 %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.regulator*, %struct.regulator** %6, align 8
  %27 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @regulator_set_load(%struct.regulator* %26, i64 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load %struct.regulator*, %struct.regulator** %6, align 8
  %37 = call i32 @regulator_enable(%struct.regulator* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %33, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @regulator_set_voltage(%struct.regulator*, i32, i32) #1

declare dso_local i32 @regulator_set_load(%struct.regulator*, i64) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
