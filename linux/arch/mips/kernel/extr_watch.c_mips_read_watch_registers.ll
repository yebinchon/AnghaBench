; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_read_watch_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_read_watch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mips3264_watch_reg_state }
%struct.mips3264_watch_reg_state = type { i32*, i32* }
%struct.TYPE_7__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@MIPS_WATCHHI_MASK = common dso_local global i32 0, align 4
@MIPS_WATCHHI_IRW = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_read_watch_registers() #0 {
  %1 = alloca %struct.mips3264_watch_reg_state*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store %struct.mips3264_watch_reg_state* %6, %struct.mips3264_watch_reg_state** %1, align 8
  %7 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %8 = load i32, i32* @MIPS_WATCHHI_IRW, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_cpu_data, i32 0, i32 0), align 4
  switch i32 %10, label %11 [
    i32 4, label %13
    i32 3, label %21
    i32 2, label %29
    i32 1, label %37
  ]

11:                                               ; preds = %0
  %12 = call i32 (...) @BUG()
  br label %13

13:                                               ; preds = %0, %11
  %14 = call i32 (...) @read_c0_watchhi3()
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %18 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %0, %13
  %22 = call i32 (...) @read_c0_watchhi2()
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %26 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %0, %21
  %30 = call i32 (...) @read_c0_watchhi1()
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %34 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %0, %29
  %38 = call i32 (...) @read_c0_watchhi0()
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %42 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_cpu_data, i32 0, i32 0), align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %50 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MIPS_WATCHHI_IRW, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %59 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MIPS_WATCHHI_IRW, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %66 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %57, %48, %45
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @read_c0_watchhi3(...) #1

declare dso_local i32 @read_c0_watchhi2(...) #1

declare dso_local i32 @read_c0_watchhi1(...) #1

declare dso_local i32 @read_c0_watchhi0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
