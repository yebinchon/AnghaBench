; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa2xx-cpufreq.c_pxa_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa2xx-cpufreq.c_pxa_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.cpufreq_frequency_table = type { i32, i32 }
%struct.cpufreq_policy = type { %struct.cpufreq_frequency_table*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pxa_freqs = type { i32 }

@NUM_PXA25x_RUN_FREQS = common dso_local global i32 0, align 4
@pxa255_run_freqs = common dso_local global %struct.TYPE_11__* null, align 8
@pxa255_run_freq_table = common dso_local global %struct.TYPE_12__* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i8* null, align 8
@NUM_PXA25x_TURBO_FREQS = common dso_local global i32 0, align 4
@pxa255_turbo_freqs = common dso_local global %struct.TYPE_9__* null, align 8
@pxa255_turbo_freq_table = common dso_local global %struct.TYPE_10__* null, align 8
@pxa255_turbo_table = common dso_local global i32 0, align 4
@NUM_PXA27x_FREQS = common dso_local global i32 0, align 4
@pxa27x_freqs = common dso_local global %struct.TYPE_8__* null, align 8
@pxa27x_maxfreq = common dso_local global i32 0, align 4
@pxa27x_freq_table = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"using %s frequency table\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"frequency change support initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @pxa_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_cpufreq_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca %struct.pxa_freqs*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %7 = call i64 (...) @cpu_is_pxa27x()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @pxa27x_guess_max_freq()
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 (...) @pxa_cpufreq_init_voltages()
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 1000, i32* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %38, %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @NUM_PXA25x_RUN_FREQS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa255_run_freqs, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pxa255_run_freq_table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i8* %26, i8** %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pxa255_run_freq_table, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load i8*, i8** @CPUFREQ_TABLE_END, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pxa255_run_freq_table, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %70, %41
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @NUM_PXA25x_TURBO_FREQS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pxa255_turbo_freqs, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pxa255_turbo_freq_table, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i8* %58, i8** %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pxa255_turbo_freq_table, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 8
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load i8*, i8** @CPUFREQ_TABLE_END, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pxa255_turbo_freq_table, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i8* %74, i8** %79, align 8
  %80 = load i32, i32* @pxa255_turbo_table, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* @pxa255_turbo_table, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %113, %73
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @NUM_PXA27x_FREQS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pxa27x_freqs, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @pxa27x_maxfreq, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %116

100:                                              ; preds = %89
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa27x_freq_table, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %102, i64 %104
  %106 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa27x_freq_table, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %108, i64 %110
  %112 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %111, i32 0, i32 1
  store i32 %107, i32* %112, align 4
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %85

116:                                              ; preds = %99, %85
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa27x_freq_table, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %118, i64 %120
  %122 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load i8*, i8** @CPUFREQ_TABLE_END, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa27x_freq_table, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %125, i64 %127
  %129 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 4
  %130 = call i64 (...) @cpu_is_pxa25x()
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %116
  %133 = call i32 @find_freq_tables(%struct.cpufreq_frequency_table** %5, %struct.pxa_freqs** %6)
  %134 = load i32, i32* @pxa255_turbo_table, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %138 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %137)
  %139 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %140 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %141 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %140, i32 0, i32 0
  store %struct.cpufreq_frequency_table* %139, %struct.cpufreq_frequency_table** %141, align 8
  br label %150

142:                                              ; preds = %116
  %143 = call i64 (...) @cpu_is_pxa27x()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa27x_freq_table, align 8
  %147 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %148 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %147, i32 0, i32 0
  store %struct.cpufreq_frequency_table* %146, %struct.cpufreq_frequency_table** %148, align 8
  br label %149

149:                                              ; preds = %145, %142
  br label %150

150:                                              ; preds = %149, %132
  %151 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @cpu_is_pxa27x(...) #1

declare dso_local i32 @pxa27x_guess_max_freq(...) #1

declare dso_local i32 @pxa_cpufreq_init_voltages(...) #1

declare dso_local i64 @cpu_is_pxa25x(...) #1

declare dso_local i32 @find_freq_tables(%struct.cpufreq_frequency_table**, %struct.pxa_freqs**) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
