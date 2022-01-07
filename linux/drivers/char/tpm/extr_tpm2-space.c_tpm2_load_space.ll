; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_load_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_load_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.tpm_space }
%struct.tpm_space = type { i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"context table is inconsistent\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"session restored to wrong handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm2_load_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_load_space(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 1
  store %struct.tpm_space* %10, %struct.tpm_space** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %14 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %11
  %19 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %20 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %30 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %40 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %132

44:                                               ; preds = %28
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %46 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %47 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %50 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = bitcast i32* %54 to i64*
  %56 = call i32 @tpm2_load_context(%struct.tpm_chip* %45, i32 %48, i32* %5, i64* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %132

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %27
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %11

65:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %128, %65
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %69 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %131

73:                                               ; preds = %66
  %74 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %75 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %128

83:                                               ; preds = %73
  %84 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %85 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %86 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @tpm2_load_context(%struct.tpm_chip* %84, i32 %87, i32* %5, i64* %8)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %95 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 0, i32* %99, align 4
  br label %108

100:                                              ; preds = %83
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %105 = call i32 @tpm2_flush_space(%struct.tpm_chip* %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %132

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %93
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %111 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %109, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %108
  %120 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %121 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %120, i32 0, i32 0
  %122 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %124 = call i32 @tpm2_flush_space(%struct.tpm_chip* %123)
  %125 = load i32, i32* @EFAULT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %132

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127, %82
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %66

131:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %119, %103, %59, %38
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tpm2_load_context(%struct.tpm_chip*, i32, i32*, i64*) #1

declare dso_local i32 @tpm2_flush_space(%struct.tpm_chip*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
