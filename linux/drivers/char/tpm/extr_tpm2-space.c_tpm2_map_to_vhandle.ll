; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_map_to_vhandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_map_to_vhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_space = type { i64* }

@TPM2_HT_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tpm_space*, i64, i32)* @tpm2_map_to_vhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tpm2_map_to_vhandle(%struct.tpm_space* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tpm_space*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_space* %0, %struct.tpm_space** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %50, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.tpm_space*, %struct.tpm_space** %5, align 8
  %12 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i64* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %9
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.tpm_space*, %struct.tpm_space** %5, align 8
  %21 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.tpm_space*, %struct.tpm_space** %5, align 8
  %31 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %29, i64* %35, align 8
  br label %53

36:                                               ; preds = %19
  br label %49

37:                                               ; preds = %16
  %38 = load %struct.tpm_space*, %struct.tpm_space** %5, align 8
  %39 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %9

53:                                               ; preds = %47, %28, %9
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.tpm_space*, %struct.tpm_space** %5, align 8
  %56 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @ARRAY_SIZE(i64* %57)
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i64 0, i64* %4, align 8
  br label %67

61:                                               ; preds = %53
  %62 = load i32, i32* @TPM2_HT_TRANSIENT, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 16777215, %63
  %65 = or i32 %62, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
