; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_normalise_denormal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_normalise_denormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"normalise_denormal: in\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"normalise_denormal: out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfp_double*)* @vfp_double_normalise_denormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfp_double_normalise_denormal(%struct.vfp_double* %0) #0 {
  %2 = alloca %struct.vfp_double*, align 8
  %3 = alloca i32, align 4
  store %struct.vfp_double* %0, %struct.vfp_double** %2, align 8
  %4 = load %struct.vfp_double*, %struct.vfp_double** %2, align 8
  %5 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 32
  %8 = call i32 @fls(i32 %7)
  %9 = sub nsw i32 31, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.vfp_double*, %struct.vfp_double** %2, align 8
  %14 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fls(i32 %15)
  %17 = sub nsw i32 63, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.vfp_double*, %struct.vfp_double** %2, align 8
  %20 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.vfp_double* %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.vfp_double*, %struct.vfp_double** %2, align 8
  %27 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.vfp_double*, %struct.vfp_double** %2, align 8
  %32 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %23, %18
  %36 = load %struct.vfp_double*, %struct.vfp_double** %2, align 8
  %37 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.vfp_double* %36)
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @vfp_double_dump(i8*, %struct.vfp_double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
