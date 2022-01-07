; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mc_scan_banks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mc_scan_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_config = type { i32, i64 }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.mce = type { i32, i32, i32, i64, i64 }
%struct.mce_bank = type { i32 }

@mce_banks_array = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.mca_config zeroinitializer, align 8
@mce_num_banks = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@MCI_STATUS_S = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@TAINT_MACHINE_CHECK = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@MCE_KEEP_SEVERITY = common dso_local global i32 0, align 4
@MCE_UCNA_SEVERITY = common dso_local global i32 0, align 4
@MCE_NO_SEVERITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mce*, %struct.mce*, i64*, i64*, i32, i32*)* @__mc_scan_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mc_scan_banks(%struct.mce* %0, %struct.mce* %1, i64* %2, i64* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.mce*, align 8
  %8 = alloca %struct.mce*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mce_bank*, align 8
  %14 = alloca %struct.mca_config*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %7, align 8
  store %struct.mce* %1, %struct.mce** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = load i32, i32* @mce_banks_array, align 4
  %18 = call %struct.mce_bank* @this_cpu_ptr(i32 %17)
  store %struct.mce_bank* %18, %struct.mce_bank** %13, align 8
  store %struct.mca_config* @mca_cfg, %struct.mca_config** %14, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %132, %6
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* @mce_num_banks, align 4
  %22 = call i32 @this_cpu_read(i32 %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %135

24:                                               ; preds = %19
  %25 = load i32, i32* %16, align 4
  %26 = load i64*, i64** %9, align 8
  %27 = call i32 @__clear_bit(i32 %25, i64* %26)
  %28 = load i32, i32* %16, align 4
  %29 = load i64*, i64** %10, align 8
  %30 = call i32 @test_bit(i32 %28, i64* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %132

33:                                               ; preds = %24
  %34 = load %struct.mce_bank*, %struct.mce_bank** %13, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %34, i64 %36
  %38 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %132

42:                                               ; preds = %33
  %43 = load %struct.mce*, %struct.mce** %7, align 8
  %44 = getelementptr inbounds %struct.mce, %struct.mce* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.mce*, %struct.mce** %7, align 8
  %46 = getelementptr inbounds %struct.mce, %struct.mce* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.mce*, %struct.mce** %7, align 8
  %49 = getelementptr inbounds %struct.mce, %struct.mce* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msr_ops, i32 0, i32 0), align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 %50(i32 %51)
  %53 = call i32 @mce_rdmsrl(i32 %52)
  %54 = load %struct.mce*, %struct.mce** %7, align 8
  %55 = getelementptr inbounds %struct.mce, %struct.mce* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mce*, %struct.mce** %7, align 8
  %57 = getelementptr inbounds %struct.mce, %struct.mce* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MCI_STATUS_VAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %42
  br label %132

63:                                               ; preds = %42
  %64 = load %struct.mce*, %struct.mce** %7, align 8
  %65 = getelementptr inbounds %struct.mce, %struct.mce* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mca_config*, %struct.mca_config** %14, align 8
  %68 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @MCI_STATUS_S, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @MCI_STATUS_UC, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = and i32 %66, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %132

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @TAINT_MACHINE_CHECK, align 4
  %85 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %86 = call i32 @add_taint(i32 %84, i32 %85)
  %87 = load %struct.mce*, %struct.mce** %7, align 8
  %88 = load %struct.mca_config*, %struct.mca_config** %14, align 8
  %89 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mce_severity(%struct.mce* %87, i32 %90, i32* null, i32 1)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @MCE_KEEP_SEVERITY, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @MCE_UCNA_SEVERITY, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95, %83
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  br label %132

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %16, align 4
  %105 = load i64*, i64** %9, align 8
  %106 = call i32 @__set_bit(i32 %104, i64* %105)
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @MCE_NO_SEVERITY, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %132

111:                                              ; preds = %103
  %112 = load %struct.mce*, %struct.mce** %7, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @mce_read_aux(%struct.mce* %112, i32 %113)
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.mce*, %struct.mce** %7, align 8
  %117 = getelementptr inbounds %struct.mce, %struct.mce* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.mce*, %struct.mce** %7, align 8
  %119 = call i32 @mce_log(%struct.mce* %118)
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %111
  %125 = load %struct.mce*, %struct.mce** %8, align 8
  %126 = load %struct.mce*, %struct.mce** %7, align 8
  %127 = bitcast %struct.mce* %125 to i8*
  %128 = bitcast %struct.mce* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 32, i1 false)
  %129 = load i32, i32* %15, align 4
  %130 = load i32*, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %111
  br label %132

132:                                              ; preds = %131, %110, %102, %82, %62, %41, %32
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %19

135:                                              ; preds = %19
  %136 = load %struct.mce*, %struct.mce** %7, align 8
  %137 = load %struct.mce*, %struct.mce** %8, align 8
  %138 = bitcast %struct.mce* %136 to i8*
  %139 = bitcast %struct.mce* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 32, i1 false)
  ret void
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @mce_rdmsrl(i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @mce_severity(%struct.mce*, i32, i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @mce_read_aux(%struct.mce*, i32) #1

declare dso_local i32 @mce_log(%struct.mce*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
