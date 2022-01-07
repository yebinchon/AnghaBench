; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fnmul.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fnmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i64, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"VFP: s%u = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fnmul\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_single_fnmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_fnmul(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfp_single, align 8
  %10 = alloca %struct.vfp_single, align 8
  %11 = alloca %struct.vfp_single, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @vfp_get_float(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @vfp_single_unpack(%struct.vfp_single* %10, i32 %19)
  %21 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %10)
  br label %30

30:                                               ; preds = %28, %24, %4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @vfp_single_unpack(%struct.vfp_single* %11, i32 %31)
  %33 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %11)
  br label %42

42:                                               ; preds = %40, %36, %30
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vfp_single_multiply(%struct.vfp_single* %9, %struct.vfp_single* %10, %struct.vfp_single* %11, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @vfp_sign_negate(i32 %46)
  %48 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @vfp_single_normaliseround(i32 %49, %struct.vfp_single* %9, i32 %50, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 %52
}

declare dso_local i32 @vfp_get_float(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_normalise_denormal(%struct.vfp_single*) #1

declare dso_local i32 @vfp_single_multiply(%struct.vfp_single*, %struct.vfp_single*, %struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_sign_negate(i32) #1

declare dso_local i32 @vfp_single_normaliseround(i32, %struct.vfp_single*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
