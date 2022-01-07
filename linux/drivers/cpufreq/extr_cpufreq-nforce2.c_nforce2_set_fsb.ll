; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_set_fsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_set_fsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_fsb = common dso_local global i32 0, align 4
@NFORCE2_MIN_FSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FSB %d is out of range!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error while reading the FSB\0A\00", align 1
@nforce2_dev = common dso_local global i32 0, align 4
@NFORCE2_PLLENABLE = common dso_local global i32 0, align 4
@min_fsb = common dso_local global i32 0, align 4
@NFORCE2_PLLADR = common dso_local global i32 0, align 4
@NFORCE2_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nforce2_set_fsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_set_fsb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @max_fsb, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NFORCE2_MIN_FSB, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %96

20:                                               ; preds = %11
  %21 = call i32 @nforce2_fsb_read(i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %96

28:                                               ; preds = %20
  %29 = load i32, i32* @nforce2_dev, align 4
  %30 = load i32, i32* @NFORCE2_PLLENABLE, align 4
  %31 = call i32 @pci_read_config_byte(i32 %29, i32 %30, i32* %4)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @nforce2_calc_pll(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %96

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @nforce2_write_pll(i32 %43)
  br label %45

45:                                               ; preds = %42, %28
  store i32 1, i32* %4, align 4
  %46 = load i32, i32* @nforce2_dev, align 4
  %47 = load i32, i32* @NFORCE2_PLLENABLE, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pci_write_config_byte(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sub i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %96

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @max_fsb, align 4
  %64 = icmp ule i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @min_fsb, align 4
  %68 = icmp uge i32 %66, %67
  br label %69

69:                                               ; preds = %65, %61, %57
  %70 = phi i1 [ false, %61 ], [ false, %57 ], [ %68, %65 ]
  br i1 %70, label %71, label %91

71:                                               ; preds = %69
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @nforce2_calc_pll(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %96

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @nforce2_write_pll(i32 %89)
  br label %57

91:                                               ; preds = %69
  store i32 64, i32* %4, align 4
  %92 = load i32, i32* @nforce2_dev, align 4
  %93 = load i32, i32* @NFORCE2_PLLADR, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @pci_write_config_byte(i32 %92, i32 %93, i32 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %85, %55, %39, %24, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @nforce2_fsb_read(i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @nforce2_calc_pll(i32) #1

declare dso_local i32 @nforce2_write_pll(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
