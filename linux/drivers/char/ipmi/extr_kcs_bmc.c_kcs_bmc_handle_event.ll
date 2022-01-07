; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@KCS_STATUS_IBF = common dso_local global i32 0, align 4
@KCS_STATUS_CMD_DAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcs_bmc_handle_event(%struct.kcs_bmc* %0) #0 {
  %2 = alloca %struct.kcs_bmc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %2, align 8
  %6 = load i32, i32* @ENODATA, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %9 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %13 = call i32 @read_status(%struct.kcs_bmc* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @KCS_STATUS_IBF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %20 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %25 = call i32 @kcs_force_abort(%struct.kcs_bmc* %24)
  br label %38

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @KCS_STATUS_CMD_DAT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %33 = call i32 @kcs_bmc_handle_cmd(%struct.kcs_bmc* %32)
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %36 = call i32 @kcs_bmc_handle_data(%struct.kcs_bmc* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %23
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %41 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %40, i32 0, i32 0
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_status(%struct.kcs_bmc*) #1

declare dso_local i32 @kcs_force_abort(%struct.kcs_bmc*) #1

declare dso_local i32 @kcs_bmc_handle_cmd(%struct.kcs_bmc*) #1

declare dso_local i32 @kcs_bmc_handle_data(%struct.kcs_bmc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
