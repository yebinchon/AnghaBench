; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.crb_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CRB_CTRL_STS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @crb_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crb_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crb_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 0
  %12 = call %struct.crb_priv* @dev_get_drvdata(i32* %11)
  store %struct.crb_priv* %12, %struct.crb_priv** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %21 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @ioread32(i32* %23)
  %25 = load i32, i32* @CRB_CTRL_STS_ERROR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %34 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @memcpy_fromio(i32* %32, i32* %35, i32 8)
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = call i32 @be32_to_cpup(i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %31
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %63

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load %struct.crb_priv*, %struct.crb_priv** %8, align 8
  %56 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = load i32, i32* %9, align 4
  %60 = sub i32 %59, 8
  %61 = call i32 @memcpy_fromio(i32* %54, i32* %58, i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %52, %49, %28, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.crb_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
