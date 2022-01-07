; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_match_stat_data_racy.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_match_stat_data_racy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.stat_data = type { i32 }
%struct.stat = type { i32 }

@MTIME_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_stat_data_racy(%struct.index_state* %0, %struct.stat_data* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.stat_data*, align 8
  %7 = alloca %struct.stat*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.stat_data* %1, %struct.stat_data** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %8 = load %struct.index_state*, %struct.index_state** %5, align 8
  %9 = load %struct.stat_data*, %struct.stat_data** %6, align 8
  %10 = call i64 @is_racy_stat(%struct.index_state* %8, %struct.stat_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @MTIME_CHANGED, align 4
  store i32 %13, i32* %4, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.stat_data*, %struct.stat_data** %6, align 8
  %16 = load %struct.stat*, %struct.stat** %7, align 8
  %17 = call i32 @match_stat_data(%struct.stat_data* %15, %struct.stat* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i64 @is_racy_stat(%struct.index_state*, %struct.stat_data*) #1

declare dso_local i32 @match_stat_data(%struct.stat_data*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
