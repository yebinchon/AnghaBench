; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_hw_breakpoint_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_hw_breakpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.die_args = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@NOTIFY_STOP = common dso_local global i32 0, align 4
@DR_STEP = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@DR_TRAP_BITS = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@HBP_NUM = common dso_local global i32 0, align 4
@DR_TRAP0 = common dso_local global i32 0, align 4
@bp_per_reg = common dso_local global i32* null, align 8
@X86_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_args*)* @hw_breakpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_breakpoint_handler(%struct.die_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.die_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.die_args* %0, %struct.die_args** %3, align 8
  %11 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.die_args*, %struct.die_args** %3, align 8
  %13 = getelementptr inbounds %struct.die_args, %struct.die_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ERR_PTR(i32 %14)
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %10, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @DR_STEP, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %2, align 4
  br label %129

25:                                               ; preds = %1
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @DR_TRAP_BITS, align 8
  %28 = and i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %31, i32* %2, align 4
  br label %129

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @get_debugreg(i64 %33, i32 7)
  %35 = call i32 @set_debugreg(i64 0, i32 7)
  %36 = load i64, i64* @DR_TRAP_BITS, align 8
  %37 = xor i64 %36, -1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = call i32 (...) @get_cpu()
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %105, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @HBP_NUM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @DR_TRAP0, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = and i64 %49, %53
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %105

61:                                               ; preds = %48
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load i32*, i32** @bp_per_reg, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call %struct.perf_event* @per_cpu(i32 %67, i32 %68)
  store %struct.perf_event* %69, %struct.perf_event** %7, align 8
  %70 = load i32, i32* @DR_TRAP0, align 4
  %71 = load i32, i32* %4, align 4
  %72 = shl i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %10, align 8
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %79 = icmp ne %struct.perf_event* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %61
  %81 = call i32 (...) @rcu_read_unlock()
  br label %108

82:                                               ; preds = %61
  %83 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %84 = load %struct.die_args*, %struct.die_args** %3, align 8
  %85 = getelementptr inbounds %struct.die_args, %struct.die_args* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @perf_bp_event(%struct.perf_event* %83, %struct.TYPE_9__* %86)
  %88 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %89 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @X86_BREAKPOINT_EXECUTE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %82
  %96 = load i32, i32* @X86_EFLAGS_RF, align 4
  %97 = load %struct.die_args*, %struct.die_args** %3, align 8
  %98 = getelementptr inbounds %struct.die_args, %struct.die_args* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %82
  %104 = call i32 (...) @rcu_read_unlock()
  br label %105

105:                                              ; preds = %103, %60
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %44

108:                                              ; preds = %80, %44
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DR_TRAP_BITS, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %108
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @DR_TRAP_BITS, align 8
  %119 = xor i64 %118, -1
  %120 = and i64 %117, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %108
  %123 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @set_debugreg(i64 %125, i32 7)
  %127 = call i32 (...) @put_cpu()
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %124, %30, %23
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @get_debugreg(i64, i32) #1

declare dso_local i32 @set_debugreg(i64, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event* @per_cpu(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.TYPE_9__*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
