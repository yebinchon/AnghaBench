; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_wakeup.c_xlp_enable_secondary_cores.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_wakeup.c_xlp_enable_secondary_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_soc_info = type { i32, i32 }

@NLM_NR_NODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Node %d SoC PCI bus %d.\0A\00", align 1
@FUSE_9XX_DEVCFG6 = common dso_local global i32 0, align 4
@PRID_IMP_MASK = common dso_local global i32 0, align 4
@SYS_EFUSE_DEVICE_CFG_STATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Node %d - SYS/FUSE coremask %x\0A\00", align 1
@NLM_THREADS_PER_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Node %d : timeout core %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @xlp_enable_secondary_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_enable_secondary_cores(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.nlm_soc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %148, %1
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @NLM_NR_NODES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %151

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = call i64 (...) @cpu_is_xlp9xx()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @xlp9xx_get_socbus(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %151

33:                                               ; preds = %24
  br label %42

34:                                               ; preds = %21
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @nlm_get_sys_pcibase(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @nlm_read_reg(i32 %37, i32 0)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %151

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @nlm_node_init(i32 %43)
  br label %45

45:                                               ; preds = %42, %18
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.nlm_soc_info* @nlm_get_node(i32 %46)
  store %struct.nlm_soc_info* %47, %struct.nlm_soc_info** %3, align 8
  %48 = call i64 (...) @cpu_is_xlp9xx()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @nlm_get_fuse_regbase(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @FUSE_9XX_DEVCFG6, align 4
  %55 = call i32 @nlm_read_reg(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = call i32 (...) @read_c0_prid()
  %57 = load i32, i32* @PRID_IMP_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %61 [
    i32 130, label %59
    i32 128, label %60
  ]

59:                                               ; preds = %50
  store i32 255, i32* %7, align 4
  br label %62

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %50, %60
  store i32 1048575, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %59
  br label %77

63:                                               ; preds = %45
  %64 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %65 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SYS_EFUSE_DEVICE_CFG_STATUS0, align 4
  %68 = call i32 @nlm_read_sys_reg(i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = call i32 (...) @read_c0_prid()
  %70 = load i32, i32* @PRID_IMP_MASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %75 [
    i32 131, label %72
    i32 132, label %73
    i32 129, label %74
  ]

72:                                               ; preds = %63
  store i32 15, i32* %7, align 4
  br label %76

73:                                               ; preds = %63
  store i32 3, i32* %7, align 4
  br label %76

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %63, %74
  store i32 255, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %73, %72
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %8, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @hweight32(i32 %81)
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  %88 = call i32 (...) @nlm_cores_per_node()
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %144, %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %147

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %144

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %144

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* @NLM_THREADS_PER_CORE, align 4
  %114 = mul nsw i32 %112, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @cpumask_test_cpu(i32 %115, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %107
  br label %144

120:                                              ; preds = %107
  %121 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %122 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @xlp_wakeup_core(i32 %123, i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  br label %144

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 1, %130
  %132 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %133 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @wait_for_cpus(i32 %136, i32 0)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %129
  br label %144

144:                                              ; preds = %143, %128, %119, %106, %99
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %89

147:                                              ; preds = %89
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %14

151:                                              ; preds = %40, %32, %14
  ret void
}

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @xlp9xx_get_socbus(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @nlm_get_sys_pcibase(i32) #1

declare dso_local i32 @nlm_read_reg(i32, i32) #1

declare dso_local i32 @nlm_node_init(i32) #1

declare dso_local %struct.nlm_soc_info* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_get_fuse_regbase(i32) #1

declare dso_local i32 @read_c0_prid(...) #1

declare dso_local i32 @nlm_read_sys_reg(i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @nlm_cores_per_node(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @xlp_wakeup_core(i32, i32, i32) #1

declare dso_local i32 @wait_for_cpus(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
