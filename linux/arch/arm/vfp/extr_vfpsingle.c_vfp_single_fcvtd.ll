; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fcvtd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fcvtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32, i64, i32 }
%struct.vfp_double = type { i32, i32, i32 }

@VFP_SNAN = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@VFP_NAN = common dso_local global i32 0, align 4
@VFP_QNAN = common dso_local global i32 0, align 4
@VFP_DOUBLE_SIGNIFICAND_QNAN = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fcvtd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_single_fcvtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_fcvtd(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_single, align 8
  %11 = alloca %struct.vfp_double, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @vfp_single_unpack(%struct.vfp_single* %10, i32 %14)
  %16 = call i32 @vfp_single_type(%struct.vfp_single* %10)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @VFP_SNAN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %21, i32* %13, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @VFP_DENORMAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %10)
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 32
  %37 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @VFP_INFINITY, align 4
  %40 = load i32, i32* @VFP_NAN, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 1
  store i32 2047, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @VFP_QNAN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @VFP_DOUBLE_SIGNIFICAND_QNAN, align 4
  %51 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  br label %73

55:                                               ; preds = %29
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @VFP_ZERO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 1
  store i32 0, i32* %61, align 4
  br label %67

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 896
  %66 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %60
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @vfp_double_normaliseround(i32 %69, %struct.vfp_double* %11, i32 %70, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %54
  %74 = call i32 @vfp_double_pack(%struct.vfp_double* %11)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @vfp_put_double(i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_type(%struct.vfp_single*) #1

declare dso_local i32 @vfp_single_normalise_denormal(%struct.vfp_single*) #1

declare dso_local i32 @vfp_double_normaliseround(i32, %struct.vfp_double*, i32, i32, i8*) #1

declare dso_local i32 @vfp_put_double(i32, i32) #1

declare dso_local i32 @vfp_double_pack(%struct.vfp_double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
