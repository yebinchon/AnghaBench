; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_ev67_check_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_ev67_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@ev67_mapping = common dso_local global %struct.TYPE_4__* null, align 8
@EV67_MBOXREPLAY = common dso_local global i64 0, align 8
@EV67_CYCLES = common dso_local global i64 0, align 8
@EV67_PCTR_CYCLES_MBOX = common dso_local global i64 0, align 8
@EV67_BCACHEMISS = common dso_local global i64 0, align 8
@EV67_INSTRUCTIONS = common dso_local global i64 0, align 8
@EV67_PCTR_INSTR_BCACHEMISS = common dso_local global i64 0, align 8
@EV67_PCTR_INSTR_CYCLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event**, i64*, i32)* @ev67_check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ev67_check_constraints(%struct.perf_event** %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.perf_event** %0, %struct.perf_event*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ev67_mapping, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ev67_mapping, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %125

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 2
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EV67_MBOXREPLAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EV67_MBOXREPLAY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39, %29
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EV67_MBOXREPLAY, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %8, align 4
  %53 = load i64*, i64** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EV67_CYCLES, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i64, i64* @EV67_PCTR_CYCLES_MBOX, align 8
  store i64 %61, i64* %9, align 8
  br label %125

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EV67_BCACHEMISS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i64*, i64** %6, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EV67_BCACHEMISS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69, %63
  %76 = load i64*, i64** %6, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EV67_BCACHEMISS, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  store i32 %82, i32* %8, align 4
  %83 = load i64*, i64** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EV67_INSTRUCTIONS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i64, i64* @EV67_PCTR_INSTR_BCACHEMISS, align 8
  store i64 %91, i64* %9, align 8
  br label %125

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i64*, i64** %6, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @EV67_INSTRUCTIONS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i64*, i64** %6, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EV67_INSTRUCTIONS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99, %93
  %106 = load i64*, i64** %6, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @EV67_INSTRUCTIONS, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 1
  store i32 %112, i32* %8, align 4
  %113 = load i64*, i64** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = xor i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @EV67_CYCLES, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = load i64, i64* @EV67_PCTR_INSTR_CYCLES, align 8
  store i64 %122, i64* %9, align 8
  br label %125

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %99
  store i32 -1, i32* %4, align 4
  br label %155

125:                                              ; preds = %121, %90, %60, %28
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %128 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %127, i64 0
  %129 = load %struct.perf_event*, %struct.perf_event** %128, align 8
  %130 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %126, i32* %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %134 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %133, i64 0
  %135 = load %struct.perf_event*, %struct.perf_event** %134, align 8
  %136 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i64 %132, i64* %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %154

140:                                              ; preds = %125
  %141 = load i32, i32* %8, align 4
  %142 = xor i32 %141, 1
  %143 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %144 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %143, i64 1
  %145 = load %struct.perf_event*, %struct.perf_event** %144, align 8
  %146 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %150 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %149, i64 1
  %151 = load %struct.perf_event*, %struct.perf_event** %150, align 8
  %152 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i64 %148, i64* %153, align 8
  br label %154

154:                                              ; preds = %140, %125
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %124
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
