; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_tpm_nsc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_tpm_nsc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_nsc_priv = type { i64 }

@NSC_COMMAND_CANCEL = common dso_local global i32 0, align 4
@NSC_COMMAND = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@NSC_STATUS_IBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IBF timeout\0A\00", align 1
@NSC_COMMAND_NORMAL = common dso_local global i32 0, align 4
@NSC_STATUS_IBR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IBR timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"IBF timeout (while writing data)\0A\00", align 1
@NSC_DATA = common dso_local global i64 0, align 8
@NSC_COMMAND_EOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_nsc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_nsc_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tpm_nsc_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = call %struct.tpm_nsc_priv* @dev_get_drvdata(i32* %12)
  store %struct.tpm_nsc_priv* %13, %struct.tpm_nsc_priv** %8, align 8
  %14 = load i32, i32* @NSC_COMMAND_CANCEL, align 4
  %15 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %8, align 8
  %16 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NSC_COMMAND, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %14, i64 %19)
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %22 = call i64 @nsc_wait_for_ready(%struct.tpm_chip* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %108

27:                                               ; preds = %3
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %29 = load i32, i32* @NSC_STATUS_IBF, align 4
  %30 = call i64 @wait_for_stat(%struct.tpm_chip* %28, i32 %29, i32 0, i32* %9)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %34 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %108

38:                                               ; preds = %27
  %39 = load i32, i32* @NSC_COMMAND_NORMAL, align 4
  %40 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %8, align 8
  %41 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NSC_COMMAND, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %47 = load i32, i32* @NSC_STATUS_IBR, align 4
  %48 = load i32, i32* @NSC_STATUS_IBR, align 4
  %49 = call i64 @wait_for_stat(%struct.tpm_chip* %46, i32 %47, i32 %48, i32* %9)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %53 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %108

57:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %65 = load i32, i32* @NSC_STATUS_IBF, align 4
  %66 = call i64 @wait_for_stat(%struct.tpm_chip* %64, i32 %65, i32 0, i32* %9)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %70 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %108

74:                                               ; preds = %63
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %8, align 8
  %81 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NSC_DATA, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 %79, i64 %84)
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %58

89:                                               ; preds = %58
  %90 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %91 = load i32, i32* @NSC_STATUS_IBF, align 4
  %92 = call i64 @wait_for_stat(%struct.tpm_chip* %90, i32 %91, i32 0, i32* %9)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %96 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load i32, i32* @NSC_COMMAND_EOC, align 4
  %102 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %8, align 8
  %103 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NSC_COMMAND, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 %101, i64 %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %94, %68, %51, %32, %24
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.tpm_nsc_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @nsc_wait_for_ready(%struct.tpm_chip*) #1

declare dso_local i64 @wait_for_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
