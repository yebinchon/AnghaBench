; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_get_mib_counter.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_get_mib_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_mib_counter = type { i32, i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8367_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8367_MIB_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rtl8367_mib_counters = common dso_local global %struct.rtl8366_mib_counter* null, align 8
@RTL8367_MIB_COUNTER_PORT_OFFSET = common dso_local global i32 0, align 4
@RTL8367_MIB_ADDRESS_REG = common dso_local global i32 0, align 4
@RTL8367_MIB_CTRL_BUSY_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTL8367_MIB_CTRL_RESET_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32, i64*)* @rtl8367_get_mib_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_get_mib_counter(%struct.rtl8366_smi* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8366_smi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rtl8366_mib_counter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @RTL8367_NUM_PORTS, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RTL8367_MIB_COUNT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %100

27:                                               ; preds = %20
  %28 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** @rtl8367_mib_counters, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %28, i64 %30
  store %struct.rtl8366_mib_counter* %31, %struct.rtl8366_mib_counter** %10, align 8
  %32 = load i32, i32* @RTL8367_MIB_COUNTER_PORT_OFFSET, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %36 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %14, align 4
  %39 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %40 = load i32, i32* @RTL8367_MIB_ADDRESS_REG, align 4
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %41, 2
  %43 = call i32 @REG_WR(%struct.rtl8366_smi* %39, i32 %40, i32 %42)
  %44 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %45 = call i32 @RTL8367_MIB_CTRL_REG(i32 0)
  %46 = call i32 @REG_RD(%struct.rtl8366_smi* %44, i32 %45, i32* %15)
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @RTL8367_MIB_CTRL_BUSY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %100

54:                                               ; preds = %27
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @RTL8367_MIB_CTRL_RESET_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %100

62:                                               ; preds = %54
  %63 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %64 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 3, i32* %11, align 4
  br label %74

68:                                               ; preds = %62
  %69 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %70 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = srem i32 %72, 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %68, %67
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %78 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @RTL8367_MIB_COUNTER_REG(i32 %85)
  %87 = call i32 @REG_RD(%struct.rtl8366_smi* %82, i32 %86, i32* %15)
  %88 = load i32, i32* %16, align 4
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, 65535
  %92 = or i32 %89, %91
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %75

96:                                               ; preds = %75
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %9, align 8
  store i64 %98, i64* %99, align 8
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %59, %51, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @RTL8367_MIB_CTRL_REG(i32) #1

declare dso_local i32 @RTL8367_MIB_COUNTER_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
