; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_sprom.c_bcma_sprom_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_sprom.c_bcma_sprom_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SSB_SPROM_REVISION_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported SPROM revision: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Found SPROM revision %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*, i32*, i64)* @bcma_sprom_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_sprom_valid(%struct.bcma_bus* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_bus*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @bcma_sprom_check_crc(i32* %10, i64 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SSB_SPROM_REVISION_REV, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 8
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 9
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %30, %27, %17
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %41 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @bcma_debug(%struct.bcma_bus* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %33, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @bcma_sprom_check_crc(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
