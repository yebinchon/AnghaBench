; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_swp_emulate.c_swp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_swp_emulate.c_swp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.pt_regs = type { i32, i32*, i32 }

@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@previous_pid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"\22%s\22 (%ld) uses deprecated SWP{B} instruction\0A\00", align 1
@RN_OFFSET = common dso_local global i32 0, align 4
@RT2_OFFSET = common dso_local global i32 0, align 4
@RT_OFFSET = common dso_local global i32 0, align 4
@TYPE_SWPB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"addr in r%d->0x%08x, dest is r%d, source in r%d->0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SWP{B} emulation: access to %p not allowed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @swp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swp_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @perf_sw_event(i32 %11, i32 1, %struct.pt_regs* %12, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @arm_check_condition(i32 %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %32 [
    i32 129, label %23
    i32 130, label %24
    i32 128, label %29
  ]

23:                                               ; preds = %2
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %26, align 8
  store i32 0, i32* %3, align 4
  br label %130

29:                                               ; preds = %2
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %130

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %130

35:                                               ; preds = %23
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @previous_pid, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %46, i64 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* @previous_pid, align 8
  br label %54

54:                                               ; preds = %41, %35
  %55 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @RN_OFFSET, align 4
  %60 = call i64 @EXTRACT_REG_NUM(i32 %58, i32 %59)
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RT2_OFFSET, align 4
  %68 = call i64 @EXTRACT_REG_NUM(i32 %66, i32 %67)
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @RT_OFFSET, align 4
  %73 = call i64 @EXTRACT_REG_NUM(i32 %71, i32 %72)
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @TYPE_SWPB, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @RN_OFFSET, align 4
  %80 = call i64 @EXTRACT_REG_NUM(i32 %78, i32 %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @RT2_OFFSET, align 4
  %86 = call i64 @EXTRACT_REG_NUM(i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %82, i32 %83, i64 %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, -4
  %91 = call i32 @access_ok(i32 %90, i32 4)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %54
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @EFAULT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %104

100:                                              ; preds = %54
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @emulate_swpX(i32 %101, i32* %8, i32 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %109 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %114 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %129

119:                                              ; preds = %104
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @EFAULT, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @set_segfault(%struct.pt_regs* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %107
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %32, %29, %24
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @arm_check_condition(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i64 @EXTRACT_REG_NUM(i32, i32) #1

declare dso_local i32 @access_ok(i32, i32) #1

declare dso_local i32 @emulate_swpX(i32, i32*, i32) #1

declare dso_local i32 @set_segfault(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
