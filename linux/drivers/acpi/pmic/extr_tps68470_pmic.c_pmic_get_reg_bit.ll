; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_tps68470_pmic.c_pmic_get_reg_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_tps68470_pmic.c_pmic_get_reg_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps68470_pmic_table = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tps68470_pmic_table*, i32, i32*, i32*)* @pmic_get_reg_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_get_reg_bit(i32 %0, %struct.tps68470_pmic_table* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps68470_pmic_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.tps68470_pmic_table* %1, %struct.tps68470_pmic_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.tps68470_pmic_table*, %struct.tps68470_pmic_table** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tps68470_pmic_table, %struct.tps68470_pmic_table* %31, i64 %33
  %35 = getelementptr inbounds %struct.tps68470_pmic_table, %struct.tps68470_pmic_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.tps68470_pmic_table*, %struct.tps68470_pmic_table** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.tps68470_pmic_table, %struct.tps68470_pmic_table* %38, i64 %40
  %42 = getelementptr inbounds %struct.tps68470_pmic_table, %struct.tps68470_pmic_table* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %30, %27, %18
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
