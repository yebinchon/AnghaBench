; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfp.h_vfp_double_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfp.h_vfp_double_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32, i32 }

@VFP_DOUBLE_MANTISSA_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfp_double*, i64)* @vfp_double_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfp_double_unpack(%struct.vfp_double* %0, i64 %1) #0 {
  %3 = alloca %struct.vfp_double*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vfp_double* %0, %struct.vfp_double** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @vfp_double_packed_sign(i64 %6)
  %8 = ashr i32 %7, 48
  %9 = load %struct.vfp_double*, %struct.vfp_double** %3, align 8
  %10 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @vfp_double_packed_exponent(i64 %11)
  %13 = load %struct.vfp_double*, %struct.vfp_double** %3, align 8
  %14 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VFP_DOUBLE_MANTISSA_BITS, align 4
  %19 = sub nsw i32 64, %18
  %20 = shl i32 %17, %19
  %21 = ashr i32 %20, 2
  store i32 %21, i32* %5, align 4
  %22 = load %struct.vfp_double*, %struct.vfp_double** %3, align 8
  %23 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.vfp_double*, %struct.vfp_double** %3, align 8
  %28 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 2047
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %33, 4611686018427387904
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %26, %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.vfp_double*, %struct.vfp_double** %3, align 8
  %39 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @vfp_double_packed_sign(i64) #1

declare dso_local i32 @vfp_double_packed_exponent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
