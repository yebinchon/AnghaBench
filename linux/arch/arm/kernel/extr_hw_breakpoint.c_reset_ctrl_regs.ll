; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_reset_ctrl_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_reset_ctrl_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_arch = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@c5 = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@has_ossr = common dso_local global i32 0, align 4
@c3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CPU %d debug is powered down!\0A\00", align 1
@debug_err_mask = common dso_local global i32 0, align 4
@c0 = common dso_local global i32 0, align 4
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@c7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"CPU %d failed to disable vector catch\0A\00", align 1
@ARM_BASE_BCR = common dso_local global i64 0, align 8
@ARM_BASE_BVR = common dso_local global i64 0, align 8
@core_num_wrps = common dso_local global i32 0, align 4
@ARM_BASE_WCR = common dso_local global i64 0, align 8
@ARM_BASE_WVR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"CPU %d failed to clear debug register pairs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @reset_ctrl_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_ctrl_regs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @debug_arch, align 4
  switch i32 %7, label %37 [
    i32 131, label %8
    i32 130, label %8
    i32 128, label %9
    i32 129, label %25
  ]

8:                                                ; preds = %1, %1
  br label %113

9:                                                ; preds = %1
  %10 = load i32, i32* @c1, align 4
  %11 = load i32, i32* @c5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ARM_DBG_READ(i32 %10, i32 %11, i32 4, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %9
  %21 = load i32, i32* @has_ossr, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %53

24:                                               ; preds = %20
  br label %37

25:                                               ; preds = %1
  %26 = load i32, i32* @c1, align 4
  %27 = load i32, i32* @c3, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ARM_DBG_READ(i32 %26, i32 %27, i32 4, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %25
  br label %37

37:                                               ; preds = %1, %36, %24
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @pr_warn_once(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @cpumask_of(i32 %43)
  %45 = call i32 @cpumask_or(i32* @debug_err_mask, i32* @debug_err_mask, i32 %44)
  br label %120

46:                                               ; preds = %37
  %47 = load i32, i32* @c1, align 4
  %48 = load i32, i32* @c0, align 4
  %49 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @ARM_DBG_WRITE(i32 %47, i32 %48, i32 4, i32 %50)
  %52 = call i32 (...) @isb()
  br label %53

53:                                               ; preds = %46, %23
  %54 = load i32, i32* @c0, align 4
  %55 = load i32, i32* @c7, align 4
  %56 = call i32 @ARM_DBG_WRITE(i32 %54, i32 %55, i32 0, i32 0)
  %57 = call i32 (...) @isb()
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @cpumask_of(i32 %58)
  %60 = call i64 @cpumask_intersects(i32* @debug_err_mask, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @pr_warn_once(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %120

65:                                               ; preds = %53
  %66 = call i32 (...) @get_num_brp_resources()
  store i32 %66, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %82, %65
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load i64, i64* @ARM_BASE_BCR, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @write_wb_reg(i64 %75, i64 0)
  %77 = load i64, i64* @ARM_BASE_BVR, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = call i32 @write_wb_reg(i64 %80, i64 0)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %67

85:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %101, %85
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @core_num_wrps, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i64, i64* @ARM_BASE_WCR, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = call i32 @write_wb_reg(i64 %94, i64 0)
  %96 = load i64, i64* @ARM_BASE_WVR, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @write_wb_reg(i64 %99, i64 0)
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @cpumask_of(i32 %105)
  %107 = call i64 @cpumask_intersects(i32* @debug_err_mask, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @pr_warn_once(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %120

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %8
  %114 = call i64 (...) @enable_monitor_mode()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @cpumask_of(i32 %117)
  %119 = call i32 @cpumask_or(i32* @debug_err_mask, i32* @debug_err_mask, i32 %118)
  br label %120

120:                                              ; preds = %40, %62, %109, %116, %113
  ret void
}

declare dso_local i32 @ARM_DBG_READ(i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32) #1

declare dso_local i32 @cpumask_or(i32*, i32*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @ARM_DBG_WRITE(i32, i32, i32, i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i64 @cpumask_intersects(i32*, i32) #1

declare dso_local i32 @get_num_brp_resources(...) #1

declare dso_local i32 @write_wb_reg(i64, i64) #1

declare dso_local i64 @enable_monitor_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
