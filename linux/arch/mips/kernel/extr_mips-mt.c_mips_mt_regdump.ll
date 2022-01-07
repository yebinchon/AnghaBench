; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-mt.c_mips_mt_regdump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-mt.c_mips_mt_regdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"=== MIPS MT State Dump ===\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"-- Global State --\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"   MVPControl Passed: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"   MVPControl Read: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"   MVPConf0 : %08lx\0A\00", align 1
@MVPCONF0_PVPE = common dso_local global i64 0, align 8
@MVPCONF0_PVPE_SHIFT = common dso_local global i64 0, align 8
@MVPCONF0_PTC = common dso_local global i64 0, align 8
@MVPCONF0_PTC_SHIFT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"-- per-VPE State --\0A\00", align 1
@TCBIND_CURVPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"  VPE %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"   VPEControl : %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"   VPEConf0 : %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"   VPE%d.Status : %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"   VPE%d.EPC : %08lx %pS\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"   VPE%d.Cause : %08lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"   VPE%d.Config7 : %08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"-- per-TC State --\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"  TC %d (current TC with VPE EPC above)\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"  TC %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"   TCStatus : %08lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"   TCBind : %08lx\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"   TCRestart : %08lx %pS\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"   TCHalt : %08lx\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"   TCContext : %08lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"===========================\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_mt_regdump(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = call i64 (...) @dvpe()
  store i64 %14, i64* %4, align 8
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i64, i64* %2, align 8
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %19)
  %21 = call i64 (...) @read_c0_mvpconf0()
  store i64 %21, i64* %5, align 8
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @MVPCONF0_PVPE, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @MVPCONF0_PVPE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = add i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MVPCONF0_PTC, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @MVPCONF0_PTC_SHIFT, align 8
  %34 = lshr i64 %32, %33
  %35 = add i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %81, %1
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %77, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @settc(i32 %48)
  %50 = call i32 (...) @read_tc_c0_tcbind()
  %51 = load i32, i32* @TCBIND_CURVPE, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = call i32 (...) @read_vpe_c0_vpecontrol()
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = call i32 (...) @read_vpe_c0_vpeconf0()
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (...) @read_vpe_c0_status()
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i64 (...) @read_vpe_c0_epc()
  %67 = call i64 (...) @read_vpe_c0_epc()
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %65, i64 %66, i8* %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (...) @read_vpe_c0_cause()
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (...) @read_vpe_c0_config7()
  %75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %73, i32 %74)
  br label %80

76:                                               ; preds = %47
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %43

80:                                               ; preds = %55, %43
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %38

84:                                               ; preds = %38
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %124, %84
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @settc(i32 %91)
  %93 = call i32 (...) @read_tc_c0_tcbind()
  %94 = call i32 (...) @read_c0_tcbind()
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  store i64 0, i64* %10, align 8
  %97 = load i64, i64* %3, align 8
  store i64 %97, i64* %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %98)
  br label %106

100:                                              ; preds = %90
  %101 = call i64 (...) @read_tc_c0_tchalt()
  store i64 %101, i64* %10, align 8
  %102 = call i32 @write_tc_c0_tchalt(i32 1)
  %103 = call i64 (...) @read_tc_c0_tcstatus()
  store i64 %103, i64* %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %96
  %107 = load i64, i64* %11, align 8
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i64 %107)
  %109 = call i32 (...) @read_tc_c0_tcbind()
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %109)
  %111 = call i64 (...) @read_tc_c0_tcrestart()
  %112 = call i64 (...) @read_tc_c0_tcrestart()
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i64 %111, i8* %113)
  %115 = load i64, i64* %10, align 8
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i64 %115)
  %117 = call i32 (...) @read_tc_c0_tccontext()
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %117)
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %106
  %122 = call i32 @write_tc_c0_tchalt(i32 0)
  br label %123

123:                                              ; preds = %121, %106
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %86

127:                                              ; preds = %86
  %128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %129 = load i64, i64* %4, align 8
  %130 = call i32 @evpe(i64 %129)
  %131 = load i64, i64* %3, align 8
  %132 = call i32 @local_irq_restore(i64 %131)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @dvpe(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @read_c0_mvpconf0(...) #1

declare dso_local i32 @settc(i32) #1

declare dso_local i32 @read_tc_c0_tcbind(...) #1

declare dso_local i32 @read_vpe_c0_vpecontrol(...) #1

declare dso_local i32 @read_vpe_c0_vpeconf0(...) #1

declare dso_local i32 @read_vpe_c0_status(...) #1

declare dso_local i64 @read_vpe_c0_epc(...) #1

declare dso_local i32 @read_vpe_c0_cause(...) #1

declare dso_local i32 @read_vpe_c0_config7(...) #1

declare dso_local i32 @read_c0_tcbind(...) #1

declare dso_local i64 @read_tc_c0_tchalt(...) #1

declare dso_local i32 @write_tc_c0_tchalt(i32) #1

declare dso_local i64 @read_tc_c0_tcstatus(...) #1

declare dso_local i64 @read_tc_c0_tcrestart(...) #1

declare dso_local i32 @read_tc_c0_tccontext(...) #1

declare dso_local i32 @evpe(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
