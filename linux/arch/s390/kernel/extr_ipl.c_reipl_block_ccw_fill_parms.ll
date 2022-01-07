; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_block_ccw_fill_parms.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_block_ccw_fill_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.ipl_parameter_block = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@sclp_ipl_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@LOADPARM_LEN = common dso_local global i32 0, align 4
@IPL_PB0_FLAG_LOADPARM = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@ipl_block_valid = common dso_local global i64 0, align 8
@ipl_block = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IPL_PB0_CCW_VM_FLAG_VP = common dso_local global i32 0, align 4
@DIAG308_VMPARM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipl_parameter_block*)* @reipl_block_ccw_fill_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reipl_block_ccw_fill_parms(%struct.ipl_parameter_block* %0) #0 {
  %2 = alloca %struct.ipl_parameter_block*, align 8
  store %struct.ipl_parameter_block* %0, %struct.ipl_parameter_block** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_ipl_info, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %7 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LOADPARM_LEN, align 4
  %11 = call i32 @memcpy(i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_ipl_info, i32 0, i32 0), i32 %10)
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %14 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LOADPARM_LEN, align 4
  %18 = call i32 @memset(i32 %16, i32 64, i32 %17)
  br label %19

19:                                               ; preds = %12, %5
  %20 = load i32, i32* @IPL_PB0_FLAG_LOADPARM, align 4
  %21 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %22 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* @MACHINE_IS_VM, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %19
  %27 = load i64, i64* @ipl_block_valid, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_block, i32 0, i32 0, i32 0), align 8
  %31 = load i32, i32* @IPL_PB0_CCW_VM_FLAG_VP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32, i32* @IPL_PB0_CCW_VM_FLAG_VP, align 4
  %36 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %37 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_block, i32 0, i32 0, i32 2), align 8
  %42 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %43 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %46 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_block, i32 0, i32 0, i32 1), align 8
  %50 = load i32, i32* @DIAG308_VMPARM_SIZE, align 4
  %51 = call i32 @memcpy(i32 %48, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %34, %29, %26, %19
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
