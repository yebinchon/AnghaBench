; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_multiply_accumulate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_multiply_accumulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i64, i8*, i64 }

@NEG_MULTIPLY = common dso_local global i32 0, align 4
@NEG_SUBTRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*)* @vfp_double_multiply_accumulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_multiply_accumulate(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vfp_double, align 8
  %14 = alloca %struct.vfp_double, align 8
  %15 = alloca %struct.vfp_double, align 8
  %16 = alloca %struct.vfp_double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @vfp_get_double(i32 %18)
  %20 = call i32 @vfp_double_unpack(%struct.vfp_double* %15, i32 %19)
  %21 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %15)
  br label %30

30:                                               ; preds = %28, %24, %6
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @vfp_get_double(i32 %31)
  %33 = call i32 @vfp_double_unpack(%struct.vfp_double* %16, i32 %32)
  %34 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %16, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %16, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %16)
  br label %43

43:                                               ; preds = %41, %37, %30
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @vfp_double_multiply(%struct.vfp_double* %14, %struct.vfp_double* %15, %struct.vfp_double* %16, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @NEG_MULTIPLY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %14, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @vfp_sign_negate(i8* %52)
  %54 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %14, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @vfp_get_double(i32 %56)
  %58 = call i32 @vfp_double_unpack(%struct.vfp_double* %15, i32 %57)
  %59 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %15)
  br label %68

68:                                               ; preds = %66, %62, %55
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @NEG_SUBTRACT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @vfp_sign_negate(i8* %75)
  %77 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @vfp_double_add(%struct.vfp_double* %13, %struct.vfp_double* %15, %struct.vfp_double* %14, i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @vfp_double_normaliseround(i32 %83, %struct.vfp_double* %13, i32 %84, i32 %85, i8* %86)
  ret i32 %87
}

declare dso_local i32 @vfp_double_unpack(%struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_get_double(i32) #1

declare dso_local i32 @vfp_double_normalise_denormal(%struct.vfp_double*) #1

declare dso_local i32 @vfp_double_multiply(%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32) #1

declare dso_local i8* @vfp_sign_negate(i8*) #1

declare dso_local i32 @vfp_double_add(%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_double_normaliseround(i32, %struct.vfp_double*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
