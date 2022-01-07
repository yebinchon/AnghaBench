; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_binlog_files.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_binlog_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@local_rbs = common dso_local global i32 0, align 4
@LR = common dso_local global %struct.TYPE_5__* null, align 8
@LRF_BROKEN = common dso_local global i32 0, align 4
@LRF_MASTER = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i64 0, align 8
@LRF_READONLY_MODE = common dso_local global i32 0, align 4
@LRF_LOCK_BINLOG_FAIL = common dso_local global i32 0, align 4
@LRF_TARGET_CR_FAIL = common dso_local global i32 0, align 4
@conf_master_binlogs = common dso_local global i32 0, align 4
@broken_master_binlogs = common dso_local global i32 0, align 4
@workers = common dso_local global i32 0, align 4
@conf_slave_binlogs = common dso_local global i32 0, align 4
@broken_slave_binlogs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_binlog_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %161, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @local_rbs, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %164

7:                                                ; preds = %3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %10
  %12 = call i64 @check_binlog(%struct.TYPE_5__* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load i32, i32* @LRF_BROKEN, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %15
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %114

25:                                               ; preds = %7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LRF_MASTER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %25
  %36 = load i64, i64* @binlog_disabled, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* @LRF_BROKEN, align 4
  %40 = load i32, i32* @LRF_READONLY_MODE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %113

51:                                               ; preds = %35, %25
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LRF_MASTER, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = call i64 @lock_last_binlog(%struct.TYPE_5__* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i32, i32* @LRF_BROKEN, align 4
  %70 = load i32, i32* @LRF_LOCK_BINLOG_FAIL, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %112

81:                                               ; preds = %61, %51
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LRF_MASTER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %81
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = call i64 @create_slave_target(%struct.TYPE_5__* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i32, i32* @LRF_BROKEN, align 4
  %100 = load i32, i32* @LRF_TARGET_CR_FAIL, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %101
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %98, %91, %81
  br label %112

112:                                              ; preds = %111, %68
  br label %113

113:                                              ; preds = %112, %38
  br label %114

114:                                              ; preds = %113, %14
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @LRF_MASTER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %114
  %125 = load i32, i32* @conf_master_binlogs, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @conf_master_binlogs, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @LRF_BROKEN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load i32, i32* @broken_master_binlogs, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* @broken_master_binlogs, align 4
  br label %139

139:                                              ; preds = %136, %124
  br label %160

140:                                              ; preds = %114
  %141 = load i32, i32* @workers, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %159, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @conf_slave_binlogs, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @conf_slave_binlogs, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LR, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @LRF_BROKEN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143
  %156 = load i32, i32* @broken_slave_binlogs, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @broken_slave_binlogs, align 4
  br label %158

158:                                              ; preds = %155, %143
  br label %159

159:                                              ; preds = %158, %140
  br label %160

160:                                              ; preds = %159, %139
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %2, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %2, align 4
  br label %3

164:                                              ; preds = %3
  %165 = load i32, i32* @local_rbs, align 4
  %166 = load i32, i32* %1, align 4
  %167 = sub nsw i32 %165, %166
  ret i32 %167
}

declare dso_local i64 @check_binlog(%struct.TYPE_5__*) #1

declare dso_local i64 @lock_last_binlog(%struct.TYPE_5__*) #1

declare dso_local i64 @create_slave_target(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
