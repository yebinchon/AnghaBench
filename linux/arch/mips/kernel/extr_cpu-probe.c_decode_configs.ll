; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_configs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MIPS_CPU_4KEX = common dso_local global i32 0, align 4
@MIPS_CPU_4K_CACHE = common dso_local global i32 0, align 4
@MIPS_CPU_COUNTER = common dso_local global i32 0, align 4
@MIPS_CPU_DIVEC = common dso_local global i32 0, align 4
@MIPS_CPU_LLSC = common dso_local global i32 0, align 4
@MIPS_CPU_MCHECK = common dso_local global i32 0, align 4
@MIPS_CACHE_NOT_PRESENT = common dso_local global i32 0, align 4
@mips_ftlb_disabled = common dso_local global i64 0, align 8
@FTLB_EN = common dso_local global i32 0, align 4
@cpu_has_mips_r2_r6 = common dso_local global i64 0, align 8
@cpu_has_mips64r6 = common dso_local global i64 0, align 8
@MIPS_EBASE_WG = common dso_local global i32 0, align 4
@MIPS_CPU_EBASE_WG = common dso_local global i32 0, align 4
@ST0_BEV = common dso_local global i32 0, align 4
@FTLB_SET_PROB = common dso_local global i32 0, align 4
@cpu_has_mipsmt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*)* @decode_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_configs(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %7 = load i32, i32* @MIPS_CPU_4KEX, align 4
  %8 = load i32, i32* @MIPS_CPU_4K_CACHE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MIPS_CPU_COUNTER, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MIPS_CPU_DIVEC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MIPS_CPU_LLSC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MIPS_CPU_MCHECK, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MIPS_CACHE_NOT_PRESENT, align 4
  %21 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %22 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %25 = load i64, i64* @mips_ftlb_disabled, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @FTLB_EN, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  %32 = call i32 @set_ftlb_enable(%struct.cpuinfo_mips* %24, i32 %31)
  %33 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %34 = call i32 @decode_config0(%struct.cpuinfo_mips* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %44 = call i32 @decode_config1(%struct.cpuinfo_mips* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %50 = call i32 @decode_config2(%struct.cpuinfo_mips* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %56 = call i32 @decode_config3(%struct.cpuinfo_mips* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %62 = call i32 @decode_config4(%struct.cpuinfo_mips* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %68 = call i32 @decode_config5(%struct.cpuinfo_mips* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* @cpu_has_mips_r2_r6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %128

72:                                               ; preds = %69
  %73 = load i64, i64* @cpu_has_mips64r6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @read_c0_ebase_64()
  br label %79

77:                                               ; preds = %72
  %78 = call i32 (...) @read_c0_ebase()
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @MIPS_EBASE_WG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* @MIPS_CPU_EBASE_WG, align 4
  %87 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %127

91:                                               ; preds = %79
  %92 = call i32 (...) @read_c0_status()
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ST0_BEV, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @write_c0_status(i32 %95)
  %97 = call i32 (...) @irq_enable_hazard()
  %98 = load i64, i64* @cpu_has_mips64r6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MIPS_EBASE_WG, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @write_c0_ebase_64(i32 %103)
  br label %110

105:                                              ; preds = %91
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @MIPS_EBASE_WG, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @write_c0_ebase(i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = call i32 (...) @back_to_back_c0_hazard()
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @write_c0_status(i32 %112)
  %114 = call i32 (...) @read_c0_ebase()
  %115 = load i32, i32* @MIPS_EBASE_WG, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i32, i32* @MIPS_CPU_EBASE_WG, align 4
  %120 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %121 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @write_c0_ebase(i32 %124)
  br label %126

126:                                              ; preds = %118, %110
  br label %127

127:                                              ; preds = %126, %85
  br label %128

128:                                              ; preds = %127, %69
  %129 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %130 = load i64, i64* @mips_ftlb_disabled, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @FTLB_EN, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = phi i32 [ 0, %132 ], [ %134, %133 ]
  %137 = load i32, i32* @FTLB_SET_PROB, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @set_ftlb_enable(%struct.cpuinfo_mips* %129, i32 %138)
  %140 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %141 = call i32 @mips_probe_watch_registers(%struct.cpuinfo_mips* %140)
  %142 = load i64, i64* @cpu_has_mips_r2_r6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %135
  %145 = call i32 (...) @get_ebase_cpunum()
  store i32 %145, i32* %6, align 4
  %146 = load i64, i64* @cpu_has_mipsmt, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = call i32 (...) @core_nvpes()
  %150 = call i32 @fls(i32 %149)
  %151 = sub nsw i32 %150, 1
  %152 = load i32, i32* %6, align 4
  %153 = lshr i32 %152, %151
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %148, %144
  %155 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @cpu_set_core(%struct.cpuinfo_mips* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %135
  ret void
}

declare dso_local i32 @set_ftlb_enable(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @decode_config0(%struct.cpuinfo_mips*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @decode_config1(%struct.cpuinfo_mips*) #1

declare dso_local i32 @decode_config2(%struct.cpuinfo_mips*) #1

declare dso_local i32 @decode_config3(%struct.cpuinfo_mips*) #1

declare dso_local i32 @decode_config4(%struct.cpuinfo_mips*) #1

declare dso_local i32 @decode_config5(%struct.cpuinfo_mips*) #1

declare dso_local i32 @read_c0_ebase_64(...) #1

declare dso_local i32 @read_c0_ebase(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @write_c0_status(i32) #1

declare dso_local i32 @irq_enable_hazard(...) #1

declare dso_local i32 @write_c0_ebase_64(i32) #1

declare dso_local i32 @write_c0_ebase(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @mips_probe_watch_registers(%struct.cpuinfo_mips*) #1

declare dso_local i32 @get_ebase_cpunum(...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @core_nvpes(...) #1

declare dso_local i32 @cpu_set_core(%struct.cpuinfo_mips*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
