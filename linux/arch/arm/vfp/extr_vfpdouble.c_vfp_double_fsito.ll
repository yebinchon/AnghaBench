; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fsito.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fsito.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"fsito\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_double_fsito to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_fsito(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfp_double, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @vfp_get_float(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = and i32 %13, -2147483648
  %15 = lshr i32 %14, 16
  %16 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  store i32 1085, i32* %17, align 4
  %18 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 0, %22
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @vfp_double_normaliseround(i32 %29, %struct.vfp_double* %9, i32 %30, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret i32 %31
}

declare dso_local i32 @vfp_get_float(i32) #1

declare dso_local i32 @vfp_double_normaliseround(i32, %struct.vfp_double*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
