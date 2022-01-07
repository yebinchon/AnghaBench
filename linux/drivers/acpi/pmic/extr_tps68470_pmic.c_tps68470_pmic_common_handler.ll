; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_tps68470_pmic.c_tps68470_pmic_common_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_tps68470_pmic.c_tps68470_pmic_common_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type opaque
%struct.tps68470_pmic_table = type { i32 }
%struct.tps68470_pmic_opregion = type { %struct.regmap*, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WRITE = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i8*, i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32)*, %struct.tps68470_pmic_table*, i32)* @tps68470_pmic_common_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps68470_pmic_common_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i32 (%struct.regmap*, i32, i32, i32*)* %5, i32 (%struct.regmap*, i32, i32, i32)* %6, %struct.tps68470_pmic_table* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32 (%struct.regmap*, i32, i32, i32*)*, align 8
  %17 = alloca i32 (%struct.regmap*, i32, i32, i32)*, align 8
  %18 = alloca %struct.tps68470_pmic_table*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.tps68470_pmic_opregion*, align 8
  %21 = alloca %struct.regmap*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 (%struct.regmap*, i32, i32, i32*)* %5, i32 (%struct.regmap*, i32, i32, i32*)** %16, align 8
  store i32 (%struct.regmap*, i32, i32, i32)* %6, i32 (%struct.regmap*, i32, i32, i32)** %17, align 8
  store %struct.tps68470_pmic_table* %7, %struct.tps68470_pmic_table** %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load i8*, i8** %15, align 8
  %26 = bitcast i8* %25 to %struct.tps68470_pmic_opregion*
  store %struct.tps68470_pmic_opregion* %26, %struct.tps68470_pmic_opregion** %20, align 8
  %27 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %20, align 8
  %28 = getelementptr inbounds %struct.tps68470_pmic_opregion, %struct.tps68470_pmic_opregion* %27, i32 0, i32 0
  %29 = load %struct.regmap*, %struct.regmap** %28, align 8
  store %struct.regmap* %29, %struct.regmap** %21, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 32
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %33, i32* %10, align 4
  br label %89

34:                                               ; preds = %9
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.tps68470_pmic_table*, %struct.tps68470_pmic_table** %18, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @pmic_get_reg_bit(i32 %35, %struct.tps68470_pmic_table* %36, i32 %37, i32* %22, i32* %24)
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* %23, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %42, i32* %10, align 4
  br label %89

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @ACPI_WRITE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %53, i32* %10, align 4
  br label %89

54:                                               ; preds = %47, %43
  %55 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %20, align 8
  %56 = getelementptr inbounds %struct.tps68470_pmic_opregion, %struct.tps68470_pmic_opregion* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ACPI_READ, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32*)** %16, align 8
  %63 = load %struct.regmap*, %struct.regmap** %21, align 8
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %24, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 %62(%struct.regmap* %63, i32 %64, i32 %65, i32* %66)
  br label %76

68:                                               ; preds = %54
  %69 = load i32 (%struct.regmap*, i32, i32, i32)*, i32 (%struct.regmap*, i32, i32, i32)** %17, align 8
  %70 = load %struct.regmap*, %struct.regmap** %21, align 8
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %24, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %69(%struct.regmap* %70, i32 %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %68, %61
  %77 = phi i32 [ %67, %61 ], [ %75, %68 ]
  store i32 %77, i32* %23, align 4
  %78 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %20, align 8
  %79 = getelementptr inbounds %struct.tps68470_pmic_opregion, %struct.tps68470_pmic_opregion* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %23, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @AE_ERROR, align 4
  br label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @AE_OK, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %87, %52, %41, %32
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i32 @pmic_get_reg_bit(i32, %struct.tps68470_pmic_table*, i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
