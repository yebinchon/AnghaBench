; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_config4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_config4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32, i32, i32, i32, i32 }

@MIPS_CONF4_FTLBPAGESIZE = common dso_local global i32 0, align 4
@cpu_has_tlb = common dso_local global i64 0, align 8
@MIPS_CONF4_IE = common dso_local global i32 0, align 4
@MIPS_CPU_TLBINV = common dso_local global i32 0, align 4
@cpu_has_mips_r6 = common dso_local global i32 0, align 4
@MIPS_CONF4_MMUEXTDEF = common dso_local global i32 0, align 4
@cpu_has_ftlb = common dso_local global i64 0, align 8
@MIPS_CONF4_MMUSIZEEXT = common dso_local global i32 0, align 4
@MIPS_CONF4_VTLBSIZEEXT = common dso_local global i32 0, align 4
@MIPS_CONF4_VTLBSIZEEXT_SHIFT = common dso_local global i32 0, align 4
@MIPS_CONF4_VFTLBPAGESIZE = common dso_local global i32 0, align 4
@mips_ftlb_disabled = common dso_local global i32 0, align 4
@MIPS_CONF4_FTLBPAGESIZE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"PAGE_SIZE 0x%lx is not supported by FTLB (config4=0x%x)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MIPS_CONF4_FTLBSETS = common dso_local global i32 0, align 4
@MIPS_CONF4_FTLBSETS_SHIFT = common dso_local global i32 0, align 4
@MIPS_CONF4_FTLBWAYS = common dso_local global i32 0, align 4
@MIPS_CONF4_FTLBWAYS_SHIFT = common dso_local global i32 0, align 4
@mips_has_ftlb_configured = common dso_local global i32 0, align 4
@MIPS_CONF4_KSCREXIST = common dso_local global i32 0, align 4
@MIPS_CONF4_KSCREXIST_SHIFT = common dso_local global i32 0, align 4
@MIPS_ENTRYHI_ASID = common dso_local global i64 0, align 8
@MIPS_CONF4_AE = common dso_local global i32 0, align 4
@MIPS_ENTRYHI_ASIDX = common dso_local global i64 0, align 8
@MIPS_CONF_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_config4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_config4(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %8 = load i32, i32* @MIPS_CONF4_FTLBPAGESIZE, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @read_c0_config4()
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @cpu_has_tlb, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %126

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MIPS_CONF4_IE, align 4
  %15 = and i32 %13, %14
  %16 = lshr i32 %15, 29
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* @MIPS_CPU_TLBINV, align 4
  %20 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* @cpu_has_mips_r6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MIPS_CONF4_MMUEXTDEF, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %24
  %32 = load i64, i64* @cpu_has_ftlb, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 128, i32* %5, align 4
  br label %36

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %125 [
    i32 129, label %39
    i32 128, label %53
    i32 130, label %70
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MIPS_CONF4_MMUSIZEEXT, align 4
  %42 = and i32 %40, %41
  %43 = mul i32 %42, 64
  %44 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %49 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %52 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %125

53:                                               ; preds = %37
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @MIPS_CONF4_VTLBSIZEEXT, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MIPS_CONF4_VTLBSIZEEXT_SHIFT, align 4
  %58 = lshr i32 %56, %57
  %59 = mul i32 %58, 64
  %60 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %61 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %65 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %68 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @MIPS_CONF4_VFTLBPAGESIZE, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %37, %53
  %71 = load i32, i32* @mips_ftlb_disabled, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %125

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %6, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @page_size_ftlb(i32 %79)
  %81 = load i32, i32* @MIPS_CONF4_FTLBPAGESIZE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %78, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @write_c0_config4(i32 %84)
  %86 = call i32 (...) @back_to_back_c0_hazard()
  %87 = call i32 (...) @read_c0_config4()
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %96 = call i32 @set_ftlb_enable(%struct.cpuinfo_mips* %95, i32 0)
  store i32 1, i32* @mips_ftlb_disabled, align 4
  br label %125

97:                                               ; preds = %74
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @MIPS_CONF4_FTLBSETS, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @MIPS_CONF4_FTLBSETS_SHIFT, align 4
  %102 = lshr i32 %100, %101
  %103 = shl i32 1, %102
  %104 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %105 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @MIPS_CONF4_FTLBWAYS, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @MIPS_CONF4_FTLBWAYS_SHIFT, align 4
  %110 = lshr i32 %108, %109
  %111 = add i32 %110, 2
  %112 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %113 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %115 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %118 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul i32 %116, %119
  %121 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %122 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, %120
  store i32 %124, i32* %122, align 4
  store i32 1, i32* @mips_has_ftlb_configured, align 4
  br label %125

125:                                              ; preds = %37, %97, %91, %73, %39
  br label %126

126:                                              ; preds = %125, %1
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @MIPS_CONF4_KSCREXIST, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @MIPS_CONF4_KSCREXIST_SHIFT, align 4
  %131 = lshr i32 %129, %130
  %132 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %133 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* @MIPS_ENTRYHI_ASID, align 8
  store i64 %134, i64* %7, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @MIPS_CONF4_AE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %126
  %140 = load i64, i64* @MIPS_ENTRYHI_ASIDX, align 8
  %141 = load i64, i64* %7, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %139, %126
  %144 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @set_cpu_asid_mask(%struct.cpuinfo_mips* %144, i64 %145)
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %149 = call i64 @cpu_asid_mask(%struct.cpuinfo_mips* %148)
  %150 = icmp ne i64 %147, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @WARN_ON(i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @MIPS_CONF_M, align 4
  %155 = and i32 %153, %154
  ret i32 %155
}

declare dso_local i32 @read_c0_config4(...) #1

declare dso_local i32 @page_size_ftlb(i32) #1

declare dso_local i32 @write_c0_config4(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @set_ftlb_enable(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @set_cpu_asid_mask(%struct.cpuinfo_mips*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @cpu_asid_mask(%struct.cpuinfo_mips*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
