; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_mc-sys.c_mc_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32, i32, i32, i32, i32, i32 }
%struct.fsl_mc_command = type { i32 }

@FSL_MC_IO_ATOMIC_CONTEXT_PORTAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MC_CMD_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"MC command failed: portal: %pa, dprc handle: %#x, command: %#x, status: %s (%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc_send_command(%struct.fsl_mc_io* %0, %struct.fsl_mc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_io*, align 8
  %5 = alloca %struct.fsl_mc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %4, align 8
  store %struct.fsl_mc_command* %1, %struct.fsl_mc_command** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = call i64 (...) @in_irq()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %11, %2
  %22 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %30 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %29, i32 0, i32 2
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %35 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %39 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %5, align 8
  %42 = call i32 @mc_write_command(i32 %40, %struct.fsl_mc_command* %41)
  %43 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %51 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %5, align 8
  %52 = call i32 @mc_polling_wait_preemptible(%struct.fsl_mc_io* %50, %struct.fsl_mc_command* %51, i32* %7)
  store i32 %52, i32* %6, align 4
  br label %57

53:                                               ; preds = %37
  %54 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %55 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %5, align 8
  %56 = call i32 @mc_polling_wait_atomic(%struct.fsl_mc_io* %54, %struct.fsl_mc_command* %55, i32* %7)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %84

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MC_CMD_STATUS_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %67 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %70 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %69, i32 0, i32 3
  %71 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %5, align 8
  %72 = call i64 @mc_cmd_hdr_read_token(%struct.fsl_mc_command* %71)
  %73 = trunc i64 %72 to i32
  %74 = load %struct.fsl_mc_command*, %struct.fsl_mc_command** %5, align 8
  %75 = call i64 @mc_cmd_hdr_read_cmdid(%struct.fsl_mc_command* %74)
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @mc_status_to_string(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32* %70, i32 %73, i32 %76, i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @mc_status_to_error(i32 %81)
  store i32 %82, i32* %6, align 4
  br label %84

83:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %65, %60
  %85 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %86 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %93 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %92, i32 0, i32 2
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %100

96:                                               ; preds = %84
  %97 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %4, align 8
  %98 = getelementptr inbounds %struct.fsl_mc_io, %struct.fsl_mc_io* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %18
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @in_irq(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mc_write_command(i32, %struct.fsl_mc_command*) #1

declare dso_local i32 @mc_polling_wait_preemptible(%struct.fsl_mc_io*, %struct.fsl_mc_command*, i32*) #1

declare dso_local i32 @mc_polling_wait_atomic(%struct.fsl_mc_io*, %struct.fsl_mc_command*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @mc_cmd_hdr_read_token(%struct.fsl_mc_command*) #1

declare dso_local i64 @mc_cmd_hdr_read_cmdid(%struct.fsl_mc_command*) #1

declare dso_local i32 @mc_status_to_string(i32) #1

declare dso_local i32 @mc_status_to_error(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
