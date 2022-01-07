; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_find_by_major.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_find_by_major.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_version = type { i64 }

@ver_arr = common dso_local global %struct.ldc_version* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ldc_version* (i64)* @find_by_major to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ldc_version* @find_by_major(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ldc_version*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_version*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.ldc_version* null, %struct.ldc_version** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ldc_version*, %struct.ldc_version** @ver_arr, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.ldc_version* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.ldc_version*, %struct.ldc_version** @ver_arr, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %12, i64 %14
  store %struct.ldc_version* %15, %struct.ldc_version** %5, align 8
  %16 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %17 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  store %struct.ldc_version* %22, %struct.ldc_version** %3, align 8
  br label %27

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %21, %6
  %28 = load %struct.ldc_version*, %struct.ldc_version** %3, align 8
  ret %struct.ldc_version* %28
}

declare dso_local i32 @ARRAY_SIZE(%struct.ldc_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
