; ModuleID = '/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_rescan_pid_table.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_rescan_pid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.proc_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@CData = common dso_local global %struct.TYPE_6__* null, align 8
@am_monitor = common dso_local global i64 0, align 8
@prev_active_pids = common dso_local global i32* null, align 8
@active_pids = common dso_local global i32* null, align 8
@active_pnum = common dso_local global i32 0, align 4
@CDATA_PIDS = common dso_local global i32 0, align 4
@CD_ZOMBIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"monitor: process %d deleted\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"monitor: found new process %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rescan_pid_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_data*, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CData, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %167

9:                                                ; preds = %0
  %10 = load i64, i64* @am_monitor, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CData, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32*, i32** @prev_active_pids, align 8
  %18 = load i32*, i32** @active_pids, align 8
  %19 = load i32, i32* @active_pnum, align 4
  %20 = mul nsw i32 %19, 4
  %21 = call i32 @memcpy(i32* %17, i32* %18, i32 %20)
  %22 = load i32*, i32** @prev_active_pids, align 8
  %23 = load i32, i32* @active_pnum, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 2147483647, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %137, %16
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CDATA_PIDS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %140

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = call %struct.proc_data* @get_proc_status(i32 %31)
  store %struct.proc_data* %32, %struct.proc_data** %5, align 8
  %33 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %34 = call i32 @assert(%struct.proc_data* %33)
  %35 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %36 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %136

43:                                               ; preds = %30
  %44 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %45 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %136

52:                                               ; preds = %43
  %53 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %54 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %136

60:                                               ; preds = %52
  %61 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %62 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %68 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %66, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %60
  %75 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %76 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CD_ZOMBIE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %136, label %84

84:                                               ; preds = %74
  %85 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %86 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CD_ZOMBIE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %103, %94
  %96 = load i32*, i32** @prev_active_pids, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %2, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load i32*, i32** @prev_active_pids, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CData, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %95

115:                                              ; preds = %95
  %116 = load i32*, i32** @prev_active_pids, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %2, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %129

126:                                              ; preds = %115
  %127 = load i32, i32* %2, align 4
  %128 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %2, align 4
  %131 = load i32*, i32** @active_pids, align 8
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %84, %74, %60, %52, %43, %30
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %2, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %2, align 4
  br label %26

140:                                              ; preds = %26
  br label %141

141:                                              ; preds = %148, %140
  %142 = load i32*, i32** @prev_active_pids, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 2147483647
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = load i32*, i32** @prev_active_pids, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CData, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %141

160:                                              ; preds = %141
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* @active_pnum, align 4
  %162 = load i32*, i32** @active_pids, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 2147483647, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  store i32 %166, i32* %1, align 4
  br label %167

167:                                              ; preds = %160, %8
  %168 = load i32, i32* %1, align 4
  ret i32 %168
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.proc_data* @get_proc_status(i32) #1

declare dso_local i32 @assert(%struct.proc_data*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
