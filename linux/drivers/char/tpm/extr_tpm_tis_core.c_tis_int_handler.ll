; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tis_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tis_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@TPM_INTF_DATA_AVAIL_INT = common dso_local global i32 0, align 4
@TPM_INTF_LOCALITY_CHANGE_INT = common dso_local global i32 0, align 4
@TPM_INTF_STS_VALID_INT = common dso_local global i32 0, align 4
@TPM_INTF_CMD_READY_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tis_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tis_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.tpm_tis_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tpm_chip*
  store %struct.tpm_chip* %12, %struct.tpm_chip** %6, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %14)
  store %struct.tpm_tis_data* %15, %struct.tpm_tis_data** %7, align 8
  %16 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %17 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %18 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TPM_INT_STATUS(i32 %19)
  %21 = call i32 @tpm_tis_read32(%struct.tpm_tis_data* %16, i32 %20, i32* %8)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %95

31:                                               ; preds = %26
  %32 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %33 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TPM_INTF_DATA_AVAIL_INT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %40 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %39, i32 0, i32 3
  %41 = call i32 @wake_up_interruptible(i32* %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TPM_INTF_LOCALITY_CHANGE_INT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @check_locality(%struct.tpm_chip* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %48

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @TPM_INTF_LOCALITY_CHANGE_INT, align 4
  %65 = load i32, i32* @TPM_INTF_STS_VALID_INT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TPM_INTF_CMD_READY_INT, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %73 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %72, i32 0, i32 2
  %74 = call i32 @wake_up_interruptible(i32* %73)
  br label %75

75:                                               ; preds = %71, %62
  %76 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %77 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %78 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @TPM_INT_STATUS(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @tpm_tis_write32(%struct.tpm_tis_data* %76, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @IRQ_NONE, align 4
  store i32 %86, i32* %3, align 4
  br label %95

87:                                               ; preds = %75
  %88 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %89 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %7, align 8
  %90 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TPM_INT_STATUS(i32 %91)
  %93 = call i32 @tpm_tis_read32(%struct.tpm_tis_data* %88, i32 %92, i32* %8)
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %85, %29, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_read32(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_INT_STATUS(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @check_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_tis_write32(%struct.tpm_tis_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
