; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_apply_r_mips_lo16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_apply_r_mips_lo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_hi16 = type { i64, i64*, %struct.mips_hi16* }
%struct.module = type { i32 }

@mips_hi16_list = common dso_local global %struct.mips_hi16* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"VPE loader: apply_r_mips_lo16/hi16: inconsistent value information\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i64*, i64)* @apply_r_mips_lo16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_lo16(%struct.module* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mips_hi16*, align 8
  %12 = alloca %struct.mips_hi16*, align 8
  %13 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = and i64 %16, 65535
  %18 = xor i64 %17, 32768
  %19 = sub i64 %18, 32768
  store i64 %19, i64* %10, align 8
  %20 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  %21 = icmp ne %struct.mips_hi16* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %3
  %23 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  store %struct.mips_hi16* %23, %struct.mips_hi16** %11, align 8
  br label %24

24:                                               ; preds = %35, %22
  %25 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %26 = icmp ne %struct.mips_hi16* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %30 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %83

35:                                               ; preds = %27
  %36 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %37 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = and i64 %40, 65535
  %42 = shl i64 %41, 16
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = ashr i64 %48, 16
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, 32768
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %49, %54
  %56 = and i64 %55, 65535
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %13, align 8
  %58 = and i64 %57, -65536
  %59 = load i64, i64* %9, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %63 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  store i64 %61, i64* %64, align 8
  %65 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %66 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %65, i32 0, i32 2
  %67 = load %struct.mips_hi16*, %struct.mips_hi16** %66, align 8
  store %struct.mips_hi16* %67, %struct.mips_hi16** %12, align 8
  %68 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %69 = call i32 @kfree(%struct.mips_hi16* %68)
  %70 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  store %struct.mips_hi16* %70, %struct.mips_hi16** %11, align 8
  br label %24

71:                                               ; preds = %24
  store %struct.mips_hi16* null, %struct.mips_hi16** @mips_hi16_list, align 8
  br label %72

72:                                               ; preds = %71, %3
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %73, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = and i64 %76, -65536
  %78 = load i64, i64* %9, align 8
  %79 = and i64 %78, 65535
  %80 = or i64 %77, %79
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %4, align 4
  br label %97

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %87, %83
  %85 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %86 = icmp ne %struct.mips_hi16* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %89 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %88, i32 0, i32 2
  %90 = load %struct.mips_hi16*, %struct.mips_hi16** %89, align 8
  store %struct.mips_hi16* %90, %struct.mips_hi16** %12, align 8
  %91 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %92 = call i32 @kfree(%struct.mips_hi16* %91)
  %93 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  store %struct.mips_hi16* %93, %struct.mips_hi16** %11, align 8
  br label %84

94:                                               ; preds = %84
  store %struct.mips_hi16* null, %struct.mips_hi16** @mips_hi16_list, align 8
  %95 = load i32, i32* @ENOEXEC, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %72
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kfree(%struct.mips_hi16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
