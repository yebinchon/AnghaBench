; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_load_all_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_load_all_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.related_binlog = type { i32, %struct.repl_server_status* }
%struct.repl_server_status = type { i32, %struct.repl_server_status* }

@local_rbs = common dso_local global i32 0, align 4
@LR = common dso_local global %struct.related_binlog* null, align 8
@LRF_MASTER = common dso_local global i32 0, align 4
@LRF_BROKEN = common dso_local global i32 0, align 4
@RS_LOADDISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_all_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.related_binlog*, align 8
  %3 = alloca %struct.repl_server_status*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %48, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @local_rbs, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %4
  %9 = load %struct.related_binlog*, %struct.related_binlog** @LR, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %9, i64 %11
  store %struct.related_binlog* %12, %struct.related_binlog** %2, align 8
  %13 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %14 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LRF_MASTER, align 4
  %17 = load i32, i32* @LRF_BROKEN, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @LRF_MASTER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %8
  %23 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %24 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %23, i32 0, i32 1
  %25 = load %struct.repl_server_status*, %struct.repl_server_status** %24, align 8
  store %struct.repl_server_status* %25, %struct.repl_server_status** %3, align 8
  br label %26

26:                                               ; preds = %42, %22
  %27 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %28 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %29 = bitcast %struct.related_binlog* %28 to %struct.repl_server_status*
  %30 = icmp ne %struct.repl_server_status* %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %33 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RS_LOADDISK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %40 = call i32 @load_data(%struct.repl_server_status* %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %44 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %43, i32 0, i32 1
  %45 = load %struct.repl_server_status*, %struct.repl_server_status** %44, align 8
  store %struct.repl_server_status* %45, %struct.repl_server_status** %3, align 8
  br label %26

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %8
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %4

51:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @load_data(%struct.repl_server_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
