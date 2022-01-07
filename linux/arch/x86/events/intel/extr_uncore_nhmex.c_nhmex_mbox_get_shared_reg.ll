; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_get_shared_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_get_shared_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32, i32, i32 }

@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i32 0, align 4
@uncore_nhmex = common dso_local global i64 0, align 8
@NHMEX_M_PMON_ZDP_CTL_FVC_MASK = common dso_local global i32 0, align 4
@WSMEX_M_PMON_ZDP_CTL_FVC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32, i32)* @nhmex_mbox_get_shared_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_uncore_extra_reg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %17 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %16, i32 0, i32 0
  %18 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %18, i64 %20
  store %struct.intel_uncore_extra_reg* %21, %struct.intel_uncore_extra_reg** %8, align 8
  %22 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %23 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %22, i32 0, i32 1
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @raw_spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %27 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %26, i32 0, i32 2
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %15
  %31 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %32 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30, %15
  %37 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %38 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %37, i32 0, i32 2
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %42 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %45 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %44, i32 0, i32 1
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @raw_spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %150

49:                                               ; preds = %3
  %50 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 4
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON_ONCE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %150

59:                                               ; preds = %49
  %60 = load i64, i64* @uncore_nhmex, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @NHMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  store i32 %63, i32* %11, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @WSMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %68 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %67, i32 0, i32 0
  %69 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %68, align 8
  %70 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %69, i64 %71
  store %struct.intel_uncore_extra_reg* %72, %struct.intel_uncore_extra_reg** %8, align 8
  %73 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %74 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %73, i32 0, i32 1
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @raw_spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %78 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %77, i32 0, i32 2
  %79 = call i32 @atomic_read(i32* %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @__BITS_VALUE(i32 %79, i32 %80, i32 8)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %66
  %84 = load i64, i64* @uncore_nhmex, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %96

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %66
  %98 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %99 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %98, i32 0, i32 2
  %100 = call i32 @atomic_read(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %104 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = xor i32 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %144, label %111

111:                                              ; preds = %102, %97
  %112 = load i32, i32* %6, align 4
  %113 = mul nsw i32 %112, 8
  %114 = shl i32 1, %113
  %115 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %116 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %115, i32 0, i32 2
  %117 = call i32 @atomic_add(i32 %114, i32* %116)
  %118 = load i64, i64* @uncore_nhmex, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load i32, i32* @NHMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32 %122)
  %124 = or i32 %121, %123
  store i32 %124, i32* %11, align 4
  br label %130

125:                                              ; preds = %111
  %126 = load i32, i32* @WSMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32 %127)
  %129 = or i32 %126, %128
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %11, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %134 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %141 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  store i32 1, i32* %10, align 4
  br label %144

144:                                              ; preds = %130, %102
  %145 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %8, align 8
  %146 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %145, i32 0, i32 1
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @raw_spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %144, %58, %43
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i32 @NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32) #1

declare dso_local i32 @WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
