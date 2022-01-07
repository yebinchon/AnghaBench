; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_install_watch_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_install_watch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mips3264_watch_reg_state }
%struct.mips3264_watch_reg_state = type { i32*, i32* }

@MIPS_WATCHHI_G = common dso_local global i32 0, align 4
@MIPS_WATCHHI_IRW = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_install_watch_registers(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mips3264_watch_reg_state*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.mips3264_watch_reg_state* %8, %struct.mips3264_watch_reg_state** %3, align 8
  %9 = load i32, i32* @MIPS_WATCHHI_G, align 4
  %10 = load i32, i32* @MIPS_WATCHHI_IRW, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 0), align 4
  switch i32 %12, label %13 [
    i32 4, label %15
    i32 3, label %30
    i32 2, label %45
    i32 1, label %60
  ]

13:                                               ; preds = %1
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %1, %13
  %16 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %17 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write_c0_watchlo3(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %24 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %22, %27
  %29 = call i32 @write_c0_watchhi3(i32 %28)
  br label %30

30:                                               ; preds = %1, %15
  %31 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %32 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @write_c0_watchlo2(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %39 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %37, %42
  %44 = call i32 @write_c0_watchhi2(i32 %43)
  br label %45

45:                                               ; preds = %1, %30
  %46 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %47 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_c0_watchlo1(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %54 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %52, %57
  %59 = call i32 @write_c0_watchhi1(i32 %58)
  br label %60

60:                                               ; preds = %1, %45
  %61 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %62 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @write_c0_watchlo0(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %3, align 8
  %69 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %67, %72
  %74 = call i32 @write_c0_watchhi0(i32 %73)
  br label %75

75:                                               ; preds = %60
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @write_c0_watchlo3(i32) #1

declare dso_local i32 @write_c0_watchhi3(i32) #1

declare dso_local i32 @write_c0_watchlo2(i32) #1

declare dso_local i32 @write_c0_watchhi2(i32) #1

declare dso_local i32 @write_c0_watchlo1(i32) #1

declare dso_local i32 @write_c0_watchhi1(i32) #1

declare dso_local i32 @write_c0_watchlo0(i32) #1

declare dso_local i32 @write_c0_watchhi0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
