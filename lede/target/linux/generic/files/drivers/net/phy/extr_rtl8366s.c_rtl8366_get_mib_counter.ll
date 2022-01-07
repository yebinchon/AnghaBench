; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366_get_mib_counter.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366_get_mib_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8366S_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8366S_MIB_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rtl8366s_mib_counters = common dso_local global %struct.TYPE_2__* null, align 8
@RTL8366S_MIB_COUNTER_BASE = common dso_local global i32 0, align 4
@RTL8366S_MIB_COUNTER_PORT_OFFSET = common dso_local global i32 0, align 4
@RTL8366S_MIB_COUNTER_BASE2 = common dso_local global i32 0, align 4
@RTL8366S_MIB_COUNTER_PORT_OFFSET2 = common dso_local global i32 0, align 4
@RTL8366S_MIB_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366S_MIB_CTRL_BUSY_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTL8366S_MIB_CTRL_RESET_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32, i64*)* @rtl8366_get_mib_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_get_mib_counter(%struct.rtl8366_smi* %0, i32 %1, i32 %2, i64* %3) #0 {
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
  %16 = load i32, i32* @RTL8366S_NUM_PORTS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RTL8366S_MIB_COUNT, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %122

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl8366s_mib_counters, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %44 [
    i32 0, label %32
    i32 1, label %38
  ]

32:                                               ; preds = %25
  %33 = load i32, i32* @RTL8366S_MIB_COUNTER_BASE, align 4
  %34 = load i32, i32* @RTL8366S_MIB_COUNTER_PORT_OFFSET, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %12, align 4
  br label %47

38:                                               ; preds = %25
  %39 = load i32, i32* @RTL8366S_MIB_COUNTER_BASE2, align 4
  %40 = load i32, i32* @RTL8366S_MIB_COUNTER_PORT_OFFSET2, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %12, align 4
  br label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %122

47:                                               ; preds = %38, %32
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl8366s_mib_counters, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %56 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %56, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %122

64:                                               ; preds = %47
  %65 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %66 = load i32, i32* @RTL8366S_MIB_CTRL_REG, align 4
  %67 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %65, i32 %66, i32* %13)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %122

72:                                               ; preds = %64
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @RTL8366S_MIB_CTRL_BUSY_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %122

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @RTL8366S_MIB_CTRL_RESET_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %122

88:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl8366s_mib_counters, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %115, %88
  %96 = load i32, i32* %10, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %101, 1
  %103 = add nsw i32 %100, %102
  %104 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %99, i32 %103, i32* %13)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %122

109:                                              ; preds = %98
  %110 = load i32, i32* %14, align 4
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %13, align 4
  %113 = and i32 %112, 65535
  %114 = or i32 %111, %113
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  br label %95

118:                                              ; preds = %95
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** %9, align 8
  store i64 %120, i64* %121, align 8
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %107, %85, %77, %70, %62, %44, %22
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
