; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_recent_complete_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_recent_complete_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fetch_pack_args = type { i32 }

@complete = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Marking %s as complete\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_pack_args*, i64)* @mark_recent_complete_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_recent_complete_commits(%struct.fetch_pack_args* %0, i64 %1) #0 {
  %3 = alloca %struct.fetch_pack_args*, align 8
  %4 = alloca i64, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @complete, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @complete, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %9, %14
  br label %16

16:                                               ; preds = %8, %5
  %17 = phi i1 [ false, %5 ], [ %15, %8 ]
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %3, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @complete, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @oid_to_hex(i32* %25)
  %27 = call i32 @print_verbose(%struct.fetch_pack_args* %19, i32 %20, i32 %26)
  %28 = load i32, i32* @COMPLETE, align 4
  %29 = call i32 @pop_most_recent_commit(%struct.TYPE_7__** @complete, i32 %28)
  br label %5

30:                                               ; preds = %16
  ret void
}

declare dso_local i32 @print_verbose(%struct.fetch_pack_args*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @pop_most_recent_commit(%struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
