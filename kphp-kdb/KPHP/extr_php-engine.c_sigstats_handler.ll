; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_sigstats_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_sigstats_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"SIGPOLL with no info\00", align 1
@SI_QUEUE = common dso_local global i64 0, align 8
@SPOLL_SEND_STATS = common dso_local global i32 0, align 4
@SPOLL_SEND_FULL_STATS = common dso_local global i32 0, align 4
@spoll_send_stats = common dso_local global i32 0, align 4
@SPOLL_SEND_IMMEDIATE_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i8*)* @sigstats_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigstats_handler(i32 %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @dl_assert(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SI_QUEUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, -65536
  %24 = load i32, i32* @SPOLL_SEND_STATS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SPOLL_SEND_FULL_STATS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @spoll_send_stats, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @spoll_send_stats, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SPOLL_SEND_IMMEDIATE_STATS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @write_immediate_stats_to_pipe()
  br label %41

41:                                               ; preds = %39, %34
  br label %42

42:                                               ; preds = %41, %17
  br label %43

43:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @dl_assert(i32, i8*) #1

declare dso_local i32 @write_immediate_stats_to_pipe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
