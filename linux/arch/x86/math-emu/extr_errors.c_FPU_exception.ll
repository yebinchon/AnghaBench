; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_errors.c_FPU_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_errors.c_FPU_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@EX_INTERNAL = common dso_local global i32 0, align 4
@SW_Exc_Mask = common dso_local global i32 0, align 4
@SW_Summary = common dso_local global i32 0, align 4
@SW_Backward = common dso_local global i32 0, align 4
@partial_status = common dso_local global i32 0, align 4
@control_word = common dso_local global i32 0, align 4
@CW_Exceptions = common dso_local global i32 0, align 4
@SW_Stack_Fault = common dso_local global i32 0, align 4
@EX_Precision = common dso_local global i32 0, align 4
@SW_C1 = common dso_local global i32 0, align 4
@RE_ENTRANT_CHECK_OFF = common dso_local global i32 0, align 4
@exception_names = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"FPU emulator: Unknown Exception: 0x%04x!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"FPU emulator: Internal error type 0x%04x\0A\00", align 1
@RE_ENTRANT_CHECK_ON = common dso_local global i32 0, align 4
@FPU_info = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FPU_exception(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @EX_INTERNAL, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @EX_INTERNAL, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @EX_INTERNAL, align 4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @SW_Exc_Mask, align 4
  %15 = load i32, i32* @SW_Summary, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SW_Backward, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @partial_status, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @partial_status, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load i32, i32* @SW_Exc_Mask, align 4
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @partial_status, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @partial_status, align 4
  %28 = load i32, i32* @partial_status, align 4
  %29 = load i32, i32* @control_word, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* @CW_Exceptions, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @SW_Summary, align 4
  %37 = load i32, i32* @SW_Backward, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @partial_status, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @partial_status, align 4
  br label %41

41:                                               ; preds = %35, %21
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SW_Stack_Fault, align 4
  %44 = load i32, i32* @EX_Precision, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SW_C1, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @SW_C1, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @partial_status, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* @partial_status, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %9
  %61 = load i32, i32* @RE_ENTRANT_CHECK_OFF, align 4
  %62 = load i32, i32* @control_word, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %2, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CW_Exceptions, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @EX_INTERNAL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %69, %60
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %100, %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @exception_names, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %74
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @exception_names, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %2, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @exception_names, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %90, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %103

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %74

103:                                              ; preds = %98, %74
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @exception_names, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %111
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @EX_INTERNAL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = call i32 (...) @FPU_printall()
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %69
  %125 = load i32, i32* @RE_ENTRANT_CHECK_ON, align 4
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @FPU_printall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
