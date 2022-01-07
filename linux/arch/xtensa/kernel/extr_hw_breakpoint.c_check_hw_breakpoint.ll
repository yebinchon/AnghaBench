; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_check_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_check_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@DEBUGCAUSE_IBREAK_BIT = common dso_local global i32 0, align 4
@bp_on_reg = common dso_local global i32 0, align 4
@XCHAL_NUM_IBREAK = common dso_local global i32 0, align 4
@DEBUGCAUSE_DBREAK_BIT = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@DEBUGCAUSE_DBNUM_MASK = common dso_local global i32 0, align 4
@DEBUGCAUSE_DBNUM_SHIFT = common dso_local global i32 0, align 4
@XCHAL_NUM_DBREAK = common dso_local global i32 0, align 4
@TIF_DB_DISABLED = common dso_local global i32 0, align 4
@SREG_DBREAKC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Wrong/unconfigured DBNUM reported in DEBUGCAUSE: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_hw_breakpoint(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca %struct.perf_event**, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DEBUGCAUSE_IBREAK_BIT, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %1
  %16 = load i32, i32* @bp_on_reg, align 4
  %17 = call %struct.perf_event** @this_cpu_ptr(i32 %16)
  store %struct.perf_event** %17, %struct.perf_event*** %5, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %61, %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @XCHAL_NUM_IBREAK, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %23, i64 %25
  %27 = load %struct.perf_event*, %struct.perf_event** %26, align 8
  %28 = icmp ne %struct.perf_event* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %30, i64 %32
  %34 = load %struct.perf_event*, %struct.perf_event** %33, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %29
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %43, i64 %45
  %47 = load %struct.perf_event*, %struct.perf_event** %46, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %42, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %53, i64 %55
  %57 = load %struct.perf_event*, %struct.perf_event** %56, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %59 = call i32 @perf_bp_event(%struct.perf_event* %57, %struct.pt_regs* %58)
  br label %60

60:                                               ; preds = %52, %39, %29, %22
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %18

64:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %122

65:                                               ; preds = %1
  %66 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DEBUGCAUSE_DBREAK_BIT, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %65
  %74 = load i32, i32* @wp_on_reg, align 4
  %75 = call %struct.perf_event** @this_cpu_ptr(i32 %74)
  store %struct.perf_event** %75, %struct.perf_event*** %6, align 8
  %76 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DEBUGCAUSE_DBNUM_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @DEBUGCAUSE_DBNUM_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @XCHAL_NUM_DBREAK, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %73
  %87 = load %struct.perf_event**, %struct.perf_event*** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %87, i64 %89
  %91 = load %struct.perf_event*, %struct.perf_event** %90, align 8
  %92 = icmp ne %struct.perf_event* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %86
  %94 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %95 = call i64 @user_mode(%struct.pt_regs* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.perf_event**, %struct.perf_event*** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %98, i64 %100
  %102 = load %struct.perf_event*, %struct.perf_event** %101, align 8
  %103 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %104 = call i32 @perf_bp_event(%struct.perf_event* %102, %struct.pt_regs* %103)
  br label %113

105:                                              ; preds = %93
  %106 = load i32, i32* @TIF_DB_DISABLED, align 4
  %107 = call i32 @set_thread_flag(i32 %106)
  %108 = load i64, i64* @SREG_DBREAKC, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @xtensa_wsr(i32 0, i64 %111)
  br label %113

113:                                              ; preds = %105, %97
  br label %117

114:                                              ; preds = %86, %73
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %113
  store i32 0, i32* %2, align 4
  br label %122

118:                                              ; preds = %65
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %119, %117, %64
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @xtensa_wsr(i32, i64) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
