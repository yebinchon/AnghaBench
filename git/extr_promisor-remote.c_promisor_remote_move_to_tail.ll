; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_move_to_tail.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_move_to_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { %struct.promisor_remote* }

@promisors = common dso_local global %struct.promisor_remote* null, align 8
@promisors_tail = common dso_local global %struct.promisor_remote** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.promisor_remote*, %struct.promisor_remote*)* @promisor_remote_move_to_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @promisor_remote_move_to_tail(%struct.promisor_remote* %0, %struct.promisor_remote* %1) #0 {
  %3 = alloca %struct.promisor_remote*, align 8
  %4 = alloca %struct.promisor_remote*, align 8
  store %struct.promisor_remote* %0, %struct.promisor_remote** %3, align 8
  store %struct.promisor_remote* %1, %struct.promisor_remote** %4, align 8
  %5 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %6 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %5, i32 0, i32 0
  %7 = load %struct.promisor_remote*, %struct.promisor_remote** %6, align 8
  %8 = icmp eq %struct.promisor_remote* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.promisor_remote*, %struct.promisor_remote** %4, align 8
  %12 = icmp ne %struct.promisor_remote* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %15 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %14, i32 0, i32 0
  %16 = load %struct.promisor_remote*, %struct.promisor_remote** %15, align 8
  %17 = load %struct.promisor_remote*, %struct.promisor_remote** %4, align 8
  %18 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %17, i32 0, i32 0
  store %struct.promisor_remote* %16, %struct.promisor_remote** %18, align 8
  br label %32

19:                                               ; preds = %10
  %20 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %21 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %20, i32 0, i32 0
  %22 = load %struct.promisor_remote*, %struct.promisor_remote** %21, align 8
  %23 = icmp ne %struct.promisor_remote* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %26 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %25, i32 0, i32 0
  %27 = load %struct.promisor_remote*, %struct.promisor_remote** %26, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi %struct.promisor_remote* [ %27, %24 ], [ %29, %28 ]
  store %struct.promisor_remote* %31, %struct.promisor_remote** @promisors, align 8
  br label %32

32:                                               ; preds = %30, %13
  %33 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %34 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %33, i32 0, i32 0
  store %struct.promisor_remote* null, %struct.promisor_remote** %34, align 8
  %35 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %36 = load %struct.promisor_remote**, %struct.promisor_remote*** @promisors_tail, align 8
  store %struct.promisor_remote* %35, %struct.promisor_remote** %36, align 8
  %37 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  %38 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %37, i32 0, i32 0
  store %struct.promisor_remote** %38, %struct.promisor_remote*** @promisors_tail, align 8
  br label %39

39:                                               ; preds = %32, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
