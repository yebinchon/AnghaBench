; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_setup_scache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_setup_scache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 4
@probe_scache = common dso_local global i32 0, align 4
@MIPS_CPU_CACHE_CDEX_S = common dso_local global i32 0, align 4
@R10K_CONF_SS = common dso_local global i32 0, align 4
@scache_size = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R1 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R2 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R6 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R1 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R2 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R6 = common dso_local global i32 0, align 4
@MIPS_CACHE_NOT_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Dunno how to handle MIPS32 / MIPS64 second level cache\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Unified secondary cache %ldkB %s, linesize %d bytes.\0A\00", align 1
@way_string = common dso_local global i32* null, align 8
@MIPS_CPU_INCLUSIVE_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_scache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_scache() #0 {
  %1 = alloca %struct.cpuinfo_mips*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %1, align 8
  %4 = call i32 (...) @read_c0_config()
  store i32 %4, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @current_cpu_type()
  switch i32 %5, label %44 [
    i32 133, label %6
    i32 134, label %6
    i32 131, label %6
    i32 132, label %6
    i32 138, label %18
    i32 137, label %18
    i32 136, label %18
    i32 135, label %18
    i32 130, label %37
    i32 139, label %37
    i32 129, label %38
    i32 141, label %39
    i32 140, label %41
    i32 142, label %43
    i32 128, label %43
  ]

6:                                                ; preds = %0, %0, %0, %0
  %7 = load i32, i32* @probe_scache, align 4
  %8 = call i32 @run_uncached(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* @MIPS_CPU_CACHE_CDEX_S, align 4
  %13 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %6
  br label %73

18:                                               ; preds = %0, %0, %0, %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @R10K_CONF_SS, align 4
  %21 = and i32 %19, %20
  %22 = lshr i32 %21, 16
  %23 = shl i32 524288, %22
  store i32 %23, i32* @scache_size, align 4
  %24 = load i32, i32* %2, align 4
  %25 = lshr i32 %24, 13
  %26 = and i32 %25, 1
  %27 = shl i32 64, %26
  %28 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %29 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 2, i32* %33, align 4
  %34 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 0, i32* %36, align 4
  store i32 1, i32* %3, align 4
  br label %73

37:                                               ; preds = %0, %0
  br label %121

38:                                               ; preds = %0
  br label %121

39:                                               ; preds = %0
  %40 = call i32 (...) @loongson2_sc_init()
  br label %121

41:                                               ; preds = %0
  %42 = call i32 (...) @loongson3_sc_init()
  br label %121

43:                                               ; preds = %0, %0
  br label %121

44:                                               ; preds = %0
  %45 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MIPS_CPU_ISA_M32R1, align 4
  %49 = load i32, i32* @MIPS_CPU_ISA_M32R2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MIPS_CPU_ISA_M32R6, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MIPS_CPU_ISA_M64R1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MIPS_CPU_ISA_M64R2, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MIPS_CPU_ISA_M64R6, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %47, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %44
  %62 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %63 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MIPS_CACHE_NOT_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %61
  br label %121

72:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %18, %17
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %121

77:                                               ; preds = %73
  %78 = load i32, i32* @scache_size, align 4
  %79 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %80 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %78, %82
  %84 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %85 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @scache_size, align 4
  %88 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %89 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %93 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %91, %95
  %97 = sdiv i32 %87, %96
  %98 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %99 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @scache_size, align 4
  %102 = ashr i32 %101, 10
  %103 = load i32*, i32** @way_string, align 8
  %104 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %105 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %112 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %110, i32 %114)
  %116 = load i32, i32* @MIPS_CPU_INCLUSIVE_CACHES, align 4
  %117 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %118 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %77, %76, %71, %43, %41, %39, %38, %37
  ret void
}

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @run_uncached(i32) #1

declare dso_local i32 @loongson2_sc_init(...) #1

declare dso_local i32 @loongson3_sc_init(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
