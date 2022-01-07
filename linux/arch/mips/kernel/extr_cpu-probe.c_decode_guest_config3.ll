; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_guest_config3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_guest_config3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MIPS_CONF_M = common dso_local global i32 0, align 4
@MIPS_CONF3_MSA = common dso_local global i32 0, align 4
@MIPS_CONF3_ULRI = common dso_local global i32 0, align 4
@MIPS_CONF3_CTXTC = common dso_local global i32 0, align 4
@MIPS_CPU_CTXTC = common dso_local global i32 0, align 4
@MIPS_CONF3_PW = common dso_local global i32 0, align 4
@MIPS_CPU_HTW = common dso_local global i32 0, align 4
@MIPS_CPU_ULRI = common dso_local global i32 0, align 4
@MIPS_CONF3_SC = common dso_local global i32 0, align 4
@MIPS_CPU_SEGMENTS = common dso_local global i32 0, align 4
@MIPS_CONF3_BI = common dso_local global i32 0, align 4
@MIPS_CPU_BADINSTR = common dso_local global i32 0, align 4
@MIPS_CONF3_BP = common dso_local global i32 0, align 4
@MIPS_CPU_BADINSTRP = common dso_local global i32 0, align 4
@MIPS_ASE_MSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_guest_config3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_guest_config3(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MIPS_CONF_M, align 4
  %9 = load i32, i32* @MIPS_CONF3_MSA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MIPS_CONF3_CTXTC, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @probe_gc0_config_dyn(i32 %5, i32 %6, i32 %7, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MIPS_CONF3_CTXTC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @MIPS_CPU_CTXTC, align 4
  %22 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MIPS_CONF3_CTXTC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @MIPS_CPU_CTXTC, align 4
  %34 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MIPS_CONF3_PW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @MIPS_CPU_HTW, align 4
  %46 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %47 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @MIPS_CPU_ULRI, align 4
  %58 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %59 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @MIPS_CONF3_SC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @MIPS_CPU_SEGMENTS, align 4
  %70 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %71 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @MIPS_CONF3_BI, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32, i32* @MIPS_CPU_BADINSTR, align 4
  %82 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %83 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @MIPS_CONF3_BP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @MIPS_CPU_BADINSTRP, align 4
  %94 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %95 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %92, %87
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @MIPS_CONF3_MSA, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* @MIPS_ASE_MSA, align 4
  %106 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %107 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @MIPS_CONF3_MSA, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32, i32* @MIPS_ASE_MSA, align 4
  %118 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %119 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %116, %111
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @MIPS_CONF_M, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = call i32 @BIT(i32 4)
  %130 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %131 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %123
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @MIPS_CONF_M, align 4
  %138 = and i32 %136, %137
  ret i32 %138
}

declare dso_local i32 @probe_gc0_config_dyn(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
