; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_ctop.c_dp_save_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_ctop.c_dp_save_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.eznps_dp }
%struct.eznps_dp = type { i8*, i8* }

@CTOP_AUX_EFLAGS = common dso_local global i32 0, align 4
@CTOP_AUX_GPA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_save_restore(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.eznps_dp*, align 8
  %6 = alloca %struct.eznps_dp*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.eznps_dp* %9, %struct.eznps_dp** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.eznps_dp* %12, %struct.eznps_dp** %6, align 8
  %13 = load i32, i32* @CTOP_AUX_EFLAGS, align 4
  %14 = call i8* @read_aux_reg(i32 %13)
  %15 = load %struct.eznps_dp*, %struct.eznps_dp** %5, align 8
  %16 = getelementptr inbounds %struct.eznps_dp, %struct.eznps_dp* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @CTOP_AUX_EFLAGS, align 4
  %18 = load %struct.eznps_dp*, %struct.eznps_dp** %6, align 8
  %19 = getelementptr inbounds %struct.eznps_dp, %struct.eznps_dp* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @write_aux_reg(i32 %17, i8* %20)
  %22 = load i32, i32* @CTOP_AUX_GPA1, align 4
  %23 = call i8* @read_aux_reg(i32 %22)
  %24 = load %struct.eznps_dp*, %struct.eznps_dp** %5, align 8
  %25 = getelementptr inbounds %struct.eznps_dp, %struct.eznps_dp* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @CTOP_AUX_GPA1, align 4
  %27 = load %struct.eznps_dp*, %struct.eznps_dp** %6, align 8
  %28 = getelementptr inbounds %struct.eznps_dp, %struct.eznps_dp* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @write_aux_reg(i32 %26, i8* %29)
  ret void
}

declare dso_local i8* @read_aux_reg(i32) #1

declare dso_local i32 @write_aux_reg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
