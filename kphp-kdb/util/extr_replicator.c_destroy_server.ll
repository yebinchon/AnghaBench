; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_destroy_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_destroy_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_server_status = type { i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [21 x i8] c"destroyed server %d\0A\00", align 1
@active_repl_servers = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @destroy_server(%struct.repl_server_status* %0) #0 {
  %2 = alloca %struct.repl_server_status*, align 8
  store %struct.repl_server_status* %0, %struct.repl_server_status** %2, align 8
  %3 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %4 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %8 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %11 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %15 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %18 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %22 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %27 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @free(i64 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %32 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %37 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @close_binlog(i64 %38, i32 1)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %42 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_server_by_session(i32 %43, i32 -1)
  %45 = load i64, i64* @active_repl_servers, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* @active_repl_servers, align 8
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @close_binlog(i64, i32) #1

declare dso_local i32 @get_server_by_session(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
