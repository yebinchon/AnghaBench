; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_fsl_emb_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_fsl_emb.c_fsl_emb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i64 }

@MSR_PMM = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@oprofile_running = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"start on cpu %d, pmgc0 %x\0A\00", align 1
@PMRN_PMGC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @fsl_emb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_emb_start(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %4 = call i32 (...) @mfmsr()
  %5 = load i32, i32* @MSR_PMM, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @mtmsr(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @num_counters, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %13, i64 %15
  %17 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32*, i32** @reset_value, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ctr_write(i32 %21, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @set_pmc_marked(i32 %28, i32 1, i32 0)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pmc_start_ctr(i32 %30, i32 1)
  br label %37

32:                                               ; preds = %12
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ctr_write(i32 %33, i32 0)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pmc_start_ctr(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %8

41:                                               ; preds = %8
  %42 = call i32 @pmc_start_ctrs(i32 1)
  store i32 1, i32* @oprofile_running, align 4
  %43 = call i32 (...) @smp_processor_id()
  %44 = load i32, i32* @PMRN_PMGC0, align 4
  %45 = call i32 @mfpmr(i32 %44)
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  ret i32 0
}

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @ctr_write(i32, i32) #1

declare dso_local i32 @set_pmc_marked(i32, i32, i32) #1

declare dso_local i32 @pmc_start_ctr(i32, i32) #1

declare dso_local i32 @pmc_start_ctrs(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mfpmr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
