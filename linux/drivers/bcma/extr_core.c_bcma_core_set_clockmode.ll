; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_set_clockmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_core.c_bcma_core_set_clockmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BCMA_CORE_CHIPCOMMON = common dso_local global i64 0, align 8
@BCMA_CORE_PCIE = common dso_local global i64 0, align 8
@BCMA_CORE_80211 = common dso_local global i64 0, align 8
@BCMA_CLKCTLST = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_FORCEHT = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_HAVEHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HT force timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_set_clockmode(%struct.bcma_device* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %7 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BCMA_CORE_CHIPCOMMON, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BCMA_CORE_PCIE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %21 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BCMA_CORE_80211, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %19, %12, %2
  %27 = phi i1 [ false, %12 ], [ false, %2 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %68 [
    i32 128, label %31
    i32 129, label %62
  ]

31:                                               ; preds = %26
  %32 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %33 = load i32, i32* @BCMA_CLKCTLST, align 4
  %34 = load i32, i32* @BCMA_CLKCTLST_FORCEHT, align 4
  %35 = call i32 @bcma_set32(%struct.bcma_device* %32, i32 %33, i32 %34)
  %36 = call i32 @usleep_range(i32 64, i32 300)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %50, %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 1500
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %42 = load i32, i32* @BCMA_CLKCTLST, align 4
  %43 = call i32 @bcma_read32(%struct.bcma_device* %41, i32 %42)
  %44 = load i32, i32* @BCMA_CLKCTLST_HAVEHT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %53

48:                                               ; preds = %40
  %49 = call i32 @udelay(i32 10)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %37

53:                                               ; preds = %47, %37
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %58 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bcma_err(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %53
  br label %68

62:                                               ; preds = %26
  %63 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %64 = load i32, i32* @BCMA_CLKCTLST, align 4
  %65 = load i32, i32* @BCMA_CLKCTLST_FORCEHT, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @bcma_set32(%struct.bcma_device* %63, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %26, %62, %61
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bcma_set32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bcma_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
