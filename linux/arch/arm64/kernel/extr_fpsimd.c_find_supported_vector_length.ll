; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_fpsimd.c_find_supported_vector_length.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_fpsimd.c_find_supported_vector_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sve_max_vl = common dso_local global i32 0, align 4
@SVE_VL_MIN = common dso_local global i8* null, align 8
@sve_vq_map = common dso_local global i32 0, align 4
@SVE_VQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_supported_vector_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_supported_vector_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @sve_max_vl, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @sve_vl_valid(i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** @SVE_VL_MIN, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sve_vl_valid(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i8*, i8** @SVE_VL_MIN, align 8
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* @sve_vq_map, align 4
  %35 = load i32, i32* @SVE_VQ_MAX, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @sve_vq_from_vl(i32 %36)
  %38 = call i32 @__vq_to_bit(i32 %37)
  %39 = call i32 @find_next_bit(i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @__bit_to_vq(i32 %40)
  %42 = call i32 @sve_vl_from_vq(i32 %41)
  ret i32 %42
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sve_vl_valid(i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @__vq_to_bit(i32) #1

declare dso_local i32 @sve_vq_from_vl(i32) #1

declare dso_local i32 @sve_vl_from_vq(i32) #1

declare dso_local i32 @__bit_to_vq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
