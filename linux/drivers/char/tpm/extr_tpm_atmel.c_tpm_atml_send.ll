; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_atmel.c_tpm_atml_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_atmel.c_tpm_atml_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_atmel_priv = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tpm_atml_send:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d 0x%x(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_atml_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_atml_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tpm_atmel_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 0
  %11 = call %struct.tpm_atmel_priv* @dev_get_drvdata(i32* %10)
  store %struct.tpm_atmel_priv* %11, %struct.tpm_atmel_priv** %7, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 0
  %14 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %44, %3
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %22 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %28, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tpm_atmel_priv*, %struct.tpm_atmel_priv** %7, align 8
  %41 = getelementptr inbounds %struct.tpm_atmel_priv, %struct.tpm_atmel_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iowrite8(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %15

47:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.tpm_atmel_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @iowrite8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
