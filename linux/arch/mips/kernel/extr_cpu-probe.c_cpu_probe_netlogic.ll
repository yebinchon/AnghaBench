; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_netlogic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_netlogic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i64, i32, i32, i32 }

@PRID_IMP_MASK = common dso_local global i32 0, align 4
@PRID_IMP_NETLOGIC_AU13XX = common dso_local global i32 0, align 4
@CPU_ALCHEMY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Au1300\00", align 1
@__cpu_name = common dso_local global i8** null, align 8
@MIPS_CPU_TLB = common dso_local global i32 0, align 4
@MIPS_CPU_4KEX = common dso_local global i32 0, align 4
@MIPS_CPU_COUNTER = common dso_local global i32 0, align 4
@MIPS_CPU_DIVEC = common dso_local global i32 0, align 4
@MIPS_CPU_WATCH = common dso_local global i32 0, align 4
@MIPS_CPU_EJTAG = common dso_local global i32 0, align 4
@MIPS_CPU_LLSC = common dso_local global i32 0, align 4
@CPU_XLP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Broadcom XLPII\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Netlogic XLP\00", align 1
@CPU_XLR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Netlogic XLR\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Netlogic XLS\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unknown Netlogic chip id [%02x]!\0A\00", align 1
@MIPS_CPU_ISA_M64R2 = common dso_local global i32 0, align 4
@MIPS_CPU_FPU = common dso_local global i32 0, align 4
@MIPS_CPU_ULRI = common dso_local global i32 0, align 4
@MIPS_CPU_MCHECK = common dso_local global i32 0, align 4
@MIPS_CPU_ISA_M64R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*, i32)* @cpu_probe_netlogic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_netlogic(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %6 = call i32 @decode_configs(%struct.cpuinfo_mips* %5)
  %7 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PRID_IMP_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @PRID_IMP_NETLOGIC_AU13XX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* @CPU_ALCHEMY, align 8
  %16 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i8**, i8*** @__cpu_name, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %124

22:                                               ; preds = %2
  %23 = load i32, i32* @MIPS_CPU_TLB, align 4
  %24 = load i32, i32* @MIPS_CPU_4KEX, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MIPS_CPU_COUNTER, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MIPS_CPU_DIVEC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MIPS_CPU_WATCH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MIPS_CPU_EJTAG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MIPS_CPU_LLSC, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %37 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %39 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PRID_IMP_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %77 [
    i32 153, label %43
    i32 149, label %43
    i32 151, label %43
    i32 150, label %51
    i32 152, label %51
    i32 141, label %59
    i32 142, label %59
    i32 144, label %59
    i32 148, label %59
    i32 143, label %59
    i32 145, label %59
    i32 146, label %59
    i32 147, label %59
    i32 130, label %68
    i32 134, label %68
    i32 136, label %68
    i32 137, label %68
    i32 138, label %68
    i32 139, label %68
    i32 140, label %68
    i32 128, label %68
    i32 129, label %68
    i32 131, label %68
    i32 132, label %68
    i32 133, label %68
    i32 135, label %68
  ]

43:                                               ; preds = %22, %22, %22
  %44 = load i64, i64* @CPU_XLP, align 8
  %45 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i8**, i8*** @__cpu_name, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %86

51:                                               ; preds = %22, %22
  %52 = load i64, i64* @CPU_XLP, align 8
  %53 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %54 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i8**, i8*** @__cpu_name, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  br label %86

59:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %60 = load i8*, i8** @CPU_XLR, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %63 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i8**, i8*** @__cpu_name, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %67, align 8
  br label %86

68:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %69 = load i8*, i8** @CPU_XLR, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %72 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i8**, i8*** @__cpu_name, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %76, align 8
  br label %86

77:                                               ; preds = %22
  %78 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %79 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** @CPU_XLR, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %85 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %68, %59, %51, %43
  %87 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CPU_XLP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %94 = load i32, i32* @MIPS_CPU_ISA_M64R2, align 4
  %95 = call i32 @set_isa(%struct.cpuinfo_mips* %93, i32 %94)
  %96 = load i32, i32* @MIPS_CPU_FPU, align 4
  %97 = load i32, i32* @MIPS_CPU_ULRI, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @MIPS_CPU_MCHECK, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %102 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = call i32 (...) @read_c0_config6()
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 65535
  %108 = add nsw i32 %107, 1
  %109 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %110 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %121

111:                                              ; preds = %86
  %112 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %113 = load i32, i32* @MIPS_CPU_ISA_M64R1, align 4
  %114 = call i32 @set_isa(%struct.cpuinfo_mips* %112, i32 %113)
  %115 = call i32 (...) @read_c0_config1()
  %116 = ashr i32 %115, 25
  %117 = and i32 %116, 63
  %118 = add nsw i32 %117, 1
  %119 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %120 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %92
  %122 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %123 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %122, i32 0, i32 4
  store i32 15, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %14
  ret void
}

declare dso_local i32 @decode_configs(%struct.cpuinfo_mips*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @set_isa(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @read_c0_config6(...) #1

declare dso_local i32 @read_c0_config1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
