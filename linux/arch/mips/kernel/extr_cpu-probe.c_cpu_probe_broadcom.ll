; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_broadcom.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_broadcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32, i32 }

@PRID_IMP_MASK = common dso_local global i32 0, align 4
@CPU_BMIPS32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Broadcom BMIPS32\00", align 1
@__cpu_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"bmips32\00", align 1
@CPU_BMIPS3300 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Broadcom BMIPS3300\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"bmips3300\00", align 1
@PRID_REV_MASK = common dso_local global i32 0, align 4
@PRID_REV_BMIPS4380_LO = common dso_local global i32 0, align 4
@PRID_REV_BMIPS4380_HI = common dso_local global i32 0, align 4
@CPU_BMIPS4380 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Broadcom BMIPS4380\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"bmips4380\00", align 1
@MIPS_CPU_RIXI = common dso_local global i32 0, align 4
@CPU_BMIPS4350 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Broadcom BMIPS4350\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"bmips4350\00", align 1
@CPU_BMIPS5000 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Broadcom BMIPS5200\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Broadcom BMIPS5000\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bmips5000\00", align 1
@MIPS_CPU_ULRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*, i32)* @cpu_probe_broadcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_broadcom(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %7 = call i32 @decode_configs(%struct.cpuinfo_mips* %6)
  %8 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %9 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PRID_IMP_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %102 [
    i32 135, label %13
    i32 134, label %13
    i32 133, label %23
    i32 132, label %23
    i32 131, label %23
    i32 130, label %33
    i32 129, label %72
    i32 128, label %72
  ]

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @CPU_BMIPS32, align 4
  %15 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %16 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i8**, i8*** @__cpu_name, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @set_elf_platform(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %102

23:                                               ; preds = %2, %2, %2
  %24 = load i32, i32* @CPU_BMIPS3300, align 4
  %25 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %26 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i8**, i8*** @__cpu_name, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @set_elf_platform(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %102

33:                                               ; preds = %2
  %34 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PRID_REV_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PRID_REV_BMIPS4380_LO, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PRID_REV_BMIPS4380_HI, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i32, i32* @CPU_BMIPS4380, align 4
  %48 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %49 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i8**, i8*** @__cpu_name, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @set_elf_platform(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* @MIPS_CPU_RIXI, align 4
  %57 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %71

61:                                               ; preds = %42, %33
  %62 = load i32, i32* @CPU_BMIPS4350, align 4
  %63 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %64 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i8**, i8*** @__cpu_name, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @set_elf_platform(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %61, %46
  br label %102

72:                                               ; preds = %2, %2
  %73 = load i32, i32* @CPU_BMIPS5000, align 4
  %74 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %75 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %77 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PRID_IMP_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i8**, i8*** @__cpu_name, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %86, align 8
  br label %92

87:                                               ; preds = %72
  %88 = load i8**, i8*** @__cpu_name, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @set_elf_platform(i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %95 = load i32, i32* @MIPS_CPU_ULRI, align 4
  %96 = load i32, i32* @MIPS_CPU_RIXI, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %99 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %2, %92, %71, %23, %13
  ret void
}

declare dso_local i32 @decode_configs(%struct.cpuinfo_mips*) #1

declare dso_local i32 @set_elf_platform(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
