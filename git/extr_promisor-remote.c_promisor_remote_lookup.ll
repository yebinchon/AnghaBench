; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_lookup.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { i32, %struct.promisor_remote* }

@promisors = common dso_local global %struct.promisor_remote* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.promisor_remote* (i8*, %struct.promisor_remote**)* @promisor_remote_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.promisor_remote* @promisor_remote_lookup(i8* %0, %struct.promisor_remote** %1) #0 {
  %3 = alloca %struct.promisor_remote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.promisor_remote**, align 8
  %6 = alloca %struct.promisor_remote*, align 8
  %7 = alloca %struct.promisor_remote*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.promisor_remote** %1, %struct.promisor_remote*** %5, align 8
  store %struct.promisor_remote* null, %struct.promisor_remote** %7, align 8
  %8 = load %struct.promisor_remote*, %struct.promisor_remote** @promisors, align 8
  store %struct.promisor_remote* %8, %struct.promisor_remote** %6, align 8
  br label %9

9:                                                ; preds = %28, %2
  %10 = load %struct.promisor_remote*, %struct.promisor_remote** %6, align 8
  %11 = icmp ne %struct.promisor_remote* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.promisor_remote*, %struct.promisor_remote** %6, align 8
  %14 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcmp(i32 %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = load %struct.promisor_remote**, %struct.promisor_remote*** %5, align 8
  %21 = icmp ne %struct.promisor_remote** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.promisor_remote*, %struct.promisor_remote** %7, align 8
  %24 = load %struct.promisor_remote**, %struct.promisor_remote*** %5, align 8
  store %struct.promisor_remote* %23, %struct.promisor_remote** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.promisor_remote*, %struct.promisor_remote** %6, align 8
  store %struct.promisor_remote* %26, %struct.promisor_remote** %3, align 8
  br label %34

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.promisor_remote*, %struct.promisor_remote** %6, align 8
  store %struct.promisor_remote* %29, %struct.promisor_remote** %7, align 8
  %30 = load %struct.promisor_remote*, %struct.promisor_remote** %6, align 8
  %31 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %30, i32 0, i32 1
  %32 = load %struct.promisor_remote*, %struct.promisor_remote** %31, align 8
  store %struct.promisor_remote* %32, %struct.promisor_remote** %6, align 8
  br label %9

33:                                               ; preds = %9
  store %struct.promisor_remote* null, %struct.promisor_remote** %3, align 8
  br label %34

34:                                               ; preds = %33, %25
  %35 = load %struct.promisor_remote*, %struct.promisor_remote** %3, align 8
  ret %struct.promisor_remote* %35
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
