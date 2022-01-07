; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_update_related_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_update_related_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.related_binlog = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"reloading kfs data for %s\0A\00", align 1
@sigrtmax_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_related_binlog(%struct.related_binlog* %0) #0 {
  %2 = alloca %struct.related_binlog*, align 8
  store %struct.related_binlog* %0, %struct.related_binlog** %2, align 8
  %3 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %4 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @sigrtmax_cnt, align 4
  %8 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %9 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %11 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @update_replica(i32 %12, i32 0)
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %18 = call i32 @load_binlog_data(%struct.related_binlog* %17)
  ret i32 %18
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @update_replica(i32, i32) #1

declare dso_local i32 @load_binlog_data(%struct.related_binlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
