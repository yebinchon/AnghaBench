; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32, i32, i32, i32 }

@WRITE_STATE = common dso_local global i32 0, align 4
@KCS_ZERO_DATA = common dso_local global i32 0, align 4
@KCS_PHASE_WRITE_START = common dso_local global i32 0, align 4
@KCS_NO_ERROR = common dso_local global i32 0, align 4
@KCS_PHASE_WRITE_DATA = common dso_local global i32 0, align 4
@KCS_PHASE_WRITE_END_CMD = common dso_local global i32 0, align 4
@KCS_ABORTED_BY_COMMAND = common dso_local global i32 0, align 4
@KCS_PHASE_ABORT_ERROR1 = common dso_local global i32 0, align 4
@KCS_ILLEGAL_CONTROL_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*)* @kcs_bmc_handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcs_bmc_handle_cmd(%struct.kcs_bmc* %0) #0 {
  %2 = alloca %struct.kcs_bmc*, align 8
  %3 = alloca i32, align 4
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %2, align 8
  %4 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %5 = load i32, i32* @WRITE_STATE, align 4
  %6 = call i32 @set_state(%struct.kcs_bmc* %4, i32 %5)
  %7 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %8 = load i32, i32* @KCS_ZERO_DATA, align 4
  %9 = call i32 @write_data(%struct.kcs_bmc* %7, i32 %8)
  %10 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %11 = call i32 @read_data(%struct.kcs_bmc* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %55 [
    i32 128, label %13
    i32 129, label %24
    i32 130, label %37
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @KCS_PHASE_WRITE_START, align 4
  %15 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %16 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @KCS_NO_ERROR, align 4
  %18 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %19 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %21 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %23 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %26 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KCS_PHASE_WRITE_DATA, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %32 = call i32 @kcs_force_abort(%struct.kcs_bmc* %31)
  br label %61

33:                                               ; preds = %24
  %34 = load i32, i32* @KCS_PHASE_WRITE_END_CMD, align 4
  %35 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %36 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %61

37:                                               ; preds = %1
  %38 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %39 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KCS_NO_ERROR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @KCS_ABORTED_BY_COMMAND, align 4
  %45 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %46 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, i32* @KCS_PHASE_ABORT_ERROR1, align 4
  %49 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %50 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %52 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %54 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  br label %61

55:                                               ; preds = %1
  %56 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %57 = call i32 @kcs_force_abort(%struct.kcs_bmc* %56)
  %58 = load i32, i32* @KCS_ILLEGAL_CONTROL_CODE, align 4
  %59 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %60 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %47, %33, %30, %13
  ret void
}

declare dso_local i32 @set_state(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @write_data(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @read_data(%struct.kcs_bmc*) #1

declare dso_local i32 @kcs_force_abort(%struct.kcs_bmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
