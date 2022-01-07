; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_get_mib_counter.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_get_mib_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8366RB_MIB_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_MIB_COUNTER_BASE = common dso_local global i32 0, align 4
@RTL8366RB_MIB_COUNTER_PORT_OFFSET = common dso_local global i32 0, align 4
@rtl8366rb_mib_counters = common dso_local global %struct.TYPE_2__* null, align 8
@RTL8366RB_MIB_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_MIB_CTRL_BUSY_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTL8366RB_MIB_CTRL_RESET_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32, i64*)* @rtl8366rb_get_mib_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_get_mib_counter(%struct.rtl8366_smi* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8366_smi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @RTL8366RB_NUM_PORTS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RTL8366RB_MIB_COUNT, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %18
  %26 = load i32, i32* @RTL8366RB_MIB_COUNTER_BASE, align 4
  %27 = load i32, i32* @RTL8366RB_MIB_COUNTER_PORT_OFFSET, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl8366rb_mib_counters, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %31, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %40 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %25
  %49 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %50 = load i32, i32* @RTL8366RB_MIB_CTRL_REG, align 4
  %51 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %49, i32 %50, i32* %13)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %106

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @RTL8366RB_MIB_CTRL_BUSY_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %106

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @RTL8366RB_MIB_CTRL_RESET_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %106

72:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl8366rb_mib_counters, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %99, %72
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 1
  %87 = add nsw i32 %84, %86
  %88 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %83, i32 %87, i32* %13)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %106

93:                                               ; preds = %82
  %94 = load i32, i32* %14, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, 65535
  %98 = or i32 %95, %97
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  br label %79

102:                                              ; preds = %79
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %91, %69, %61, %54, %46, %22
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
