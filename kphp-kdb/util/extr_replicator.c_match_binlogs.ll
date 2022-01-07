; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_match_binlogs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_match_binlogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_user_info = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i32, i64 }

@CData = common dso_local global i32 0, align 4
@active_pnum = common dso_local global i32 0, align 4
@match_binlogs.PData = internal global %struct.proc_user_info zeroinitializer, align 8
@active_pids = common dso_local global i32* null, align 8
@binlog_hashes = common dso_local global i64* null, align 8
@local_rbs = common dso_local global i32 0, align 4
@LR = common dso_local global %struct.TYPE_3__* null, align 8
@binlog_matches = common dso_local global %struct.TYPE_3__** null, align 8
@MIN_TIME_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@LRF_CHANGED_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_binlogs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CData, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %131

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %128, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @active_pnum, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %131

13:                                               ; preds = %9
  %14 = load i32*, i32** @active_pids, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fetch_process_data(%struct.proc_user_info* @match_binlogs.PData, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %127

22:                                               ; preds = %13
  %23 = load i64*, i64** @binlog_hashes, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 0), align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %22
  %31 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 0), align 8
  %32 = load i64*, i64** @binlog_hashes, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %55, %30
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @local_rbs, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @LR, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** @binlog_hashes, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %36

58:                                               ; preds = %53, %36
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @local_rbs, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @LR, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  br label %68

68:                                               ; preds = %63, %62
  %69 = phi %struct.TYPE_3__* [ null, %62 ], [ %67, %63 ]
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @binlog_matches, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %72
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %73, align 8
  br label %74

74:                                               ; preds = %68, %22
  %75 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @binlog_matches, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %75, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %126

81:                                               ; preds = %74
  %82 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 2), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  %85 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @binlog_matches, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %85, i64 %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 1), align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %84
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 1), align 8
  %98 = load i64, i64* @MIN_TIME_UPDATE_INTERVAL, align 8
  %99 = sub nsw i64 %97, %98
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95, %84
  %102 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 2), align 8
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @binlog_matches, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  store i64 %102, i64* %108, align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.proc_user_info, %struct.proc_user_info* @match_binlogs.PData, i32 0, i32 1), align 8
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @binlog_matches, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i64 %109, i64* %115, align 8
  %116 = load i32, i32* @LRF_CHANGED_TIME, align 4
  %117 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @binlog_matches, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %117, i64 %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %116
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %101, %95
  br label %126

126:                                              ; preds = %125, %81, %74
  br label %127

127:                                              ; preds = %126, %13
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %1, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %1, align 4
  br label %9

131:                                              ; preds = %7, %9
  ret void
}

declare dso_local i32 @fetch_process_data(%struct.proc_user_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
