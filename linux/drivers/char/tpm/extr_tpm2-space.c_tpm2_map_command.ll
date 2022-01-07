; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_map_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_map_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32*, %struct.tpm_space }
%struct.tpm_space = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TPM2_CC_ATTR_CHANDLES = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@TPM2_HT_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i32*)* @tpm2_map_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_map_command(%struct.tpm_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tpm_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 1
  store %struct.tpm_space* %14, %struct.tpm_space** %8, align 8
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @tpm2_find_cc(%struct.tpm_chip* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TPM2_CC_ATTR_CHANDLES, align 4
  %33 = lshr i32 %31, %32
  %34 = call i32 @GENMASK(i32 2, i32 0)
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %60, %23
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = and i32 %46, -16777216
  %48 = load i32, i32* @TPM2_HT_TRANSIENT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.tpm_space*, %struct.tpm_space** %8, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @tpm2_map_to_phandle(%struct.tpm_space* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %11, align 8
  br label %39

65:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %55, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @tpm2_find_cc(%struct.tpm_chip*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tpm2_map_to_phandle(%struct.tpm_space*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
