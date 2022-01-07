; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_init_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_init_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@X86_FEATURE_REP_GOOD = common dso_local global i32 0, align 4
@X86_FEATURE_MCE = common dso_local global i32 0, align 4
@X86_FEATURE_XSAVEERPTR = common dso_local global i32 0, align 4
@X86_BUG_FXSAVE_LEAK = common dso_local global i32 0, align 4
@X86_FEATURE_XMM2 = common dso_local global i32 0, align 4
@MSR_F10H_DECFG = common dso_local global i32 0, align 4
@MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT = common dso_local global i32 0, align 4
@X86_FEATURE_LFENCE_RDTSC = common dso_local global i32 0, align 4
@X86_FEATURE_ARAT = common dso_local global i32 0, align 4
@X86_FEATURE_3DNOWPREFETCH = common dso_local global i32 0, align 4
@X86_FEATURE_3DNOW = common dso_local global i32 0, align 4
@X86_FEATURE_LM = common dso_local global i32 0, align 4
@X86_FEATURE_XENPV = common dso_local global i32 0, align 4
@X86_BUG_SYSRET_SS_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_amd(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = call i32 @early_init_amd(%struct.cpuinfo_x86* %3)
  %5 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %6 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %5, i32 31)
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 16
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = load i32, i32* @X86_FEATURE_REP_GOOD, align 4
  %14 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = call i32 (...) @hard_smp_processor_id()
  %17 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %18 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %25 = load i32, i32* @X86_FEATURE_MCE, align 4
  %26 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %29 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %58 [
    i32 4, label %31
    i32 5, label %34
    i32 6, label %37
    i32 15, label %40
    i32 16, label %43
    i32 18, label %46
    i32 21, label %49
    i32 22, label %52
    i32 23, label %55
  ]

31:                                               ; preds = %27
  %32 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %33 = call i32 @init_amd_k5(%struct.cpuinfo_x86* %32)
  br label %58

34:                                               ; preds = %27
  %35 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %36 = call i32 @init_amd_k6(%struct.cpuinfo_x86* %35)
  br label %58

37:                                               ; preds = %27
  %38 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %39 = call i32 @init_amd_k7(%struct.cpuinfo_x86* %38)
  br label %58

40:                                               ; preds = %27
  %41 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %42 = call i32 @init_amd_k8(%struct.cpuinfo_x86* %41)
  br label %58

43:                                               ; preds = %27
  %44 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %45 = call i32 @init_amd_gh(%struct.cpuinfo_x86* %44)
  br label %58

46:                                               ; preds = %27
  %47 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %48 = call i32 @init_amd_ln(%struct.cpuinfo_x86* %47)
  br label %58

49:                                               ; preds = %27
  %50 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %51 = call i32 @init_amd_bd(%struct.cpuinfo_x86* %50)
  br label %58

52:                                               ; preds = %27
  %53 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %54 = call i32 @init_amd_jg(%struct.cpuinfo_x86* %53)
  br label %58

55:                                               ; preds = %27
  %56 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %57 = call i32 @init_amd_zn(%struct.cpuinfo_x86* %56)
  br label %58

58:                                               ; preds = %27, %55, %52, %49, %46, %43, %40, %37, %34, %31
  %59 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %60 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 6
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %65 = load i32, i32* @X86_FEATURE_XSAVEERPTR, align 4
  %66 = call i64 @cpu_has(%struct.cpuinfo_x86* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %70 = load i32, i32* @X86_BUG_FXSAVE_LEAK, align 4
  %71 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63, %58
  %73 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %74 = call i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86* %73)
  %75 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %76 = call i32 @amd_detect_cmp(%struct.cpuinfo_x86* %75)
  %77 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %78 = call i32 @amd_get_topology(%struct.cpuinfo_x86* %77)
  %79 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %80 = call i32 @srat_detect_node(%struct.cpuinfo_x86* %79)
  %81 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %82 = call i32 @init_amd_cacheinfo(%struct.cpuinfo_x86* %81)
  %83 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %84 = load i32, i32* @X86_FEATURE_XMM2, align 4
  %85 = call i64 @cpu_has(%struct.cpuinfo_x86* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %72
  %88 = load i32, i32* @MSR_F10H_DECFG, align 4
  %89 = load i32, i32* @MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT, align 4
  %90 = call i32 @msr_set_bit(i32 %88, i32 %89)
  %91 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %92 = load i32, i32* @X86_FEATURE_LFENCE_RDTSC, align 4
  %93 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %72
  %95 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %96 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 17
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %101 = load i32, i32* @X86_FEATURE_ARAT, align 4
  %102 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %105 = load i32, i32* @X86_FEATURE_3DNOWPREFETCH, align 4
  %106 = call i64 @cpu_has(%struct.cpuinfo_x86* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %110 = load i32, i32* @X86_FEATURE_3DNOW, align 4
  %111 = call i64 @cpu_has(%struct.cpuinfo_x86* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %115 = load i32, i32* @X86_FEATURE_LM, align 4
  %116 = call i64 @cpu_has(%struct.cpuinfo_x86* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113, %108
  %119 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %120 = load i32, i32* @X86_FEATURE_3DNOWPREFETCH, align 4
  %121 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %122, %103
  %124 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %125 = load i32, i32* @X86_FEATURE_XENPV, align 4
  %126 = call i64 @cpu_has(%struct.cpuinfo_x86* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %130 = load i32, i32* @X86_BUG_SYSRET_SS_ATTRS, align 4
  %131 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %123
  ret void
}

declare dso_local i32 @early_init_amd(%struct.cpuinfo_x86*) #1

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @init_amd_k5(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_k6(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_k7(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_k8(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_gh(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_ln(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_bd(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_jg(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_zn(%struct.cpuinfo_x86*) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @set_cpu_bug(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86*) #1

declare dso_local i32 @amd_detect_cmp(%struct.cpuinfo_x86*) #1

declare dso_local i32 @amd_get_topology(%struct.cpuinfo_x86*) #1

declare dso_local i32 @srat_detect_node(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_amd_cacheinfo(%struct.cpuinfo_x86*) #1

declare dso_local i32 @msr_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
