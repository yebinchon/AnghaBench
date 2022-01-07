; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_config0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_config0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@MIPS_CONF_MT = common dso_local global i32 0, align 4
@MIPS_CONF_MT_TLB = common dso_local global i32 0, align 4
@MIPS_CPU_TLB = common dso_local global i32 0, align 4
@MIPS_CONF_MT_FTLB = common dso_local global i32 0, align 4
@MIPS_CPU_FTLB = common dso_local global i32 0, align 4
@MIPS_CONF_AT = common dso_local global i32 0, align 4
@MIPS_CONF_AR = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R1 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R2 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M32R6 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R1 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R2 = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R6 = common dso_local global i32 0, align 4
@MIPS_CONF_M = common dso_local global i32 0, align 4
@unknown_isa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_config0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_config0(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  %7 = call i32 (...) @read_c0_config()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MIPS_CONF_MT, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MIPS_CONF_MT_TLB, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @MIPS_CPU_TLB, align 4
  %16 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MIPS_CONF_MT_FTLB, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, i32* @MIPS_CPU_TLB, align 4
  %26 = load i32, i32* @MIPS_CPU_FTLB, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %29 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %20
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MIPS_CONF_AT, align 4
  %36 = and i32 %34, %35
  %37 = lshr i32 %36, 13
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %77 [
    i32 0, label %39
    i32 2, label %58
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MIPS_CONF_AR, align 4
  %42 = and i32 %40, %41
  %43 = lshr i32 %42, 10
  switch i32 %43, label %56 [
    i32 0, label %44
    i32 1, label %48
    i32 2, label %52
  ]

44:                                               ; preds = %39
  %45 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %46 = load i32, i32* @MIPS_CPU_ISA_M32R1, align 4
  %47 = call i32 @set_isa(%struct.cpuinfo_mips* %45, i32 %46)
  br label %57

48:                                               ; preds = %39
  %49 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %50 = load i32, i32* @MIPS_CPU_ISA_M32R2, align 4
  %51 = call i32 @set_isa(%struct.cpuinfo_mips* %49, i32 %50)
  br label %57

52:                                               ; preds = %39
  %53 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %54 = load i32, i32* @MIPS_CPU_ISA_M32R6, align 4
  %55 = call i32 @set_isa(%struct.cpuinfo_mips* %53, i32 %54)
  br label %57

56:                                               ; preds = %39
  br label %82

57:                                               ; preds = %52, %48, %44
  br label %78

58:                                               ; preds = %33
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MIPS_CONF_AR, align 4
  %61 = and i32 %59, %60
  %62 = lshr i32 %61, 10
  switch i32 %62, label %75 [
    i32 0, label %63
    i32 1, label %67
    i32 2, label %71
  ]

63:                                               ; preds = %58
  %64 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %65 = load i32, i32* @MIPS_CPU_ISA_M64R1, align 4
  %66 = call i32 @set_isa(%struct.cpuinfo_mips* %64, i32 %65)
  br label %76

67:                                               ; preds = %58
  %68 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %69 = load i32, i32* @MIPS_CPU_ISA_M64R2, align 4
  %70 = call i32 @set_isa(%struct.cpuinfo_mips* %68, i32 %69)
  br label %76

71:                                               ; preds = %58
  %72 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %73 = load i32, i32* @MIPS_CPU_ISA_M64R6, align 4
  %74 = call i32 @set_isa(%struct.cpuinfo_mips* %72, i32 %73)
  br label %76

75:                                               ; preds = %58
  br label %82

76:                                               ; preds = %71, %67, %63
  br label %78

77:                                               ; preds = %33
  br label %82

78:                                               ; preds = %76, %57
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MIPS_CONF_M, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %2, align 4
  br label %86

82:                                               ; preds = %77, %75, %56
  %83 = load i32, i32* @unknown_isa, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @panic(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @set_isa(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @panic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
