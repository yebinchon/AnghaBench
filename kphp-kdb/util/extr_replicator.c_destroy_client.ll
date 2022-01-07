; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_destroy_client.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_destroy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_client_status = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.repl_client_status** }

@.str = private unnamed_addr constant [21 x i8] c"destroyed client %d\0A\00", align 1
@active_repl_clients = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @destroy_client(%struct.repl_client_status* %0) #0 {
  %2 = alloca %struct.repl_client_status*, align 8
  %3 = alloca i32, align 4
  store %struct.repl_client_status* %0, %struct.repl_client_status** %2, align 8
  %4 = load %struct.repl_client_status*, %struct.repl_client_status** %2, align 8
  %5 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.repl_client_status*, %struct.repl_client_status** %2, align 8
  %11 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %8
  %17 = load %struct.repl_client_status*, %struct.repl_client_status** %2, align 8
  %18 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.repl_client_status**, %struct.repl_client_status*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.repl_client_status*, %struct.repl_client_status** %21, i64 %23
  %25 = load %struct.repl_client_status*, %struct.repl_client_status** %24, align 8
  %26 = load %struct.repl_client_status*, %struct.repl_client_status** %2, align 8
  %27 = icmp eq %struct.repl_client_status* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.repl_client_status*, %struct.repl_client_status** %2, align 8
  %30 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.repl_client_status**, %struct.repl_client_status*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.repl_client_status*, %struct.repl_client_status** %33, i64 %35
  store %struct.repl_client_status* null, %struct.repl_client_status** %36, align 8
  br label %37

37:                                               ; preds = %28, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.repl_client_status*, %struct.repl_client_status** %2, align 8
  %43 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_client_by_handshake(i32 %44, i32 -1)
  %46 = load i64, i64* @active_repl_clients, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* @active_repl_clients, align 8
  %48 = icmp sge i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @get_client_by_handshake(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
