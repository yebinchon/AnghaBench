; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_set_ftlb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_set_ftlb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@FTLB_EN = common dso_local global i32 0, align 4
@MIPS_CONF6_FTLBEN = common dso_local global i32 0, align 4
@FTLB_SET_PROB = common dso_local global i32 0, align 4
@MIPS_CONF6_FTLBP_SHIFT = common dso_local global i32 0, align 4
@LOONGSON_DIAG_ITLB = common dso_local global i32 0, align 4
@LOONGSON_DIAG_DTLB = common dso_local global i32 0, align 4
@LOONGSON_DIAG_VTLB = common dso_local global i32 0, align 4
@LOONGSON_DIAG_FTLB = common dso_local global i32 0, align 4
@MIPS_CONF6_FTLBDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*, i32)* @set_ftlb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ftlb_enable(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuinfo_mips*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %79 [
    i32 128, label %10
    i32 130, label %10
    i32 129, label %10
    i32 133, label %46
    i32 132, label %46
    i32 131, label %53
  ]

10:                                               ; preds = %2, %2, %2
  %11 = call i32 (...) @read_c0_config6()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FTLB_EN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @MIPS_CONF6_FTLBEN, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %10
  %21 = load i32, i32* @MIPS_CONF6_FTLBEN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FTLB_SET_PROB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* @MIPS_CONF6_FTLBP_SHIFT, align 4
  %32 = shl i32 3, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %37 = call i32 @calculate_ftlb_probability(%struct.cpuinfo_mips* %36)
  %38 = load i32, i32* @MIPS_CONF6_FTLBP_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %30, %25
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @write_c0_config6(i32 %43)
  %45 = call i32 (...) @back_to_back_c0_hazard()
  br label %80

46:                                               ; preds = %2, %2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @FTLB_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %81

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %81

53:                                               ; preds = %2
  %54 = load i32, i32* @LOONGSON_DIAG_ITLB, align 4
  %55 = load i32, i32* @LOONGSON_DIAG_DTLB, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @LOONGSON_DIAG_VTLB, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @LOONGSON_DIAG_FTLB, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @write_c0_diag(i32 %60)
  %62 = call i32 (...) @read_c0_config6()
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @FTLB_EN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MIPS_CONF6_FTLBDIS, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @write_c0_config6(i32 %71)
  br label %78

73:                                               ; preds = %53
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MIPS_CONF6_FTLBDIS, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @write_c0_config6(i32 %76)
  br label %78

78:                                               ; preds = %73, %67
  br label %80

79:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %78, %42
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79, %52, %51
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @read_c0_config6(...) #1

declare dso_local i32 @calculate_ftlb_probability(%struct.cpuinfo_mips*) #1

declare dso_local i32 @write_c0_config6(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @write_c0_diag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
