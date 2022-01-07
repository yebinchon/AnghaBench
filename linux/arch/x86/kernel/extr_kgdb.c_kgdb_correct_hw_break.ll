; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_correct_hw_break.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_correct_hw_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.arch_hw_breakpoint = type { i32, i32, i32 }

@HBP_NUM = common dso_local global i32 0, align 4
@breakinfo = common dso_local global %struct.TYPE_4__* null, align 8
@dbg_is_early = common dso_local global i64 0, align 8
@early_dr7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdb_correct_hw_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_correct_hw_break() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %129, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @HBP_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %132

10:                                               ; preds = %6
  %11 = call i32 (...) @raw_smp_processor_id()
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %129

20:                                               ; preds = %10
  %21 = load i64, i64* @dbg_is_early, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @set_debugreg(i32 %29, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @encode_dr7(i32 %32, i32 %38, i32 %44)
  %46 = load i32, i32* @early_dr7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @early_dr7, align 4
  %48 = load i32, i32* @early_dr7, align 4
  %49 = call i32 @set_debugreg(i32 %48, i32 7)
  br label %129

50:                                               ; preds = %20
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call %struct.perf_event** @per_cpu_ptr(i32 %56, i32 %57)
  %59 = load %struct.perf_event*, %struct.perf_event** %58, align 8
  store %struct.perf_event* %59, %struct.perf_event** %2, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %61 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %60)
  store %struct.arch_hw_breakpoint* %61, %struct.arch_hw_breakpoint** %3, align 8
  %62 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %63 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %129

68:                                               ; preds = %50
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %85 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %94 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %103 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %111 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %119 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %121 = call i32 @arch_install_hw_breakpoint(%struct.perf_event* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %68
  %125 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %126 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %68
  br label %129

129:                                              ; preds = %128, %67, %23, %19
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %1, align 4
  br label %6

132:                                              ; preds = %6
  %133 = load i64, i64* @dbg_is_early, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = call i32 (...) @hw_breakpoint_restore()
  br label %137

137:                                              ; preds = %135, %132
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @set_debugreg(i32, i32) #1

declare dso_local i32 @encode_dr7(i32, i32, i32) #1

declare dso_local %struct.perf_event** @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event*) #1

declare dso_local i32 @hw_breakpoint_restore(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
