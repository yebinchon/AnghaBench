; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_get_direct.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_get_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { i32, %struct.promisor_remote* }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@promisors = common dso_local global %struct.promisor_remote* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @promisor_remote_get_direct(%struct.repository* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.promisor_remote*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.object_id*, %struct.object_id** %5, align 8
  store %struct.object_id* %12, %struct.object_id** %8, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %14 = call i32 (...) @promisor_remote_init()
  %15 = load %struct.promisor_remote*, %struct.promisor_remote** @promisors, align 8
  store %struct.promisor_remote* %15, %struct.promisor_remote** %7, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load %struct.promisor_remote*, %struct.promisor_remote** %7, align 8
  %18 = icmp ne %struct.promisor_remote* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.promisor_remote*, %struct.promisor_remote** %7, align 8
  %21 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.object_id*, %struct.object_id** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @fetch_objects(i32 %22, %struct.object_id* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %41

31:                                               ; preds = %27
  %32 = load %struct.repository*, %struct.repository** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @remove_fetched_oids(%struct.repository* %32, %struct.object_id** %8, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %41

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %19
  store i32 0, i32* %11, align 4
  br label %45

41:                                               ; preds = %38, %30
  %42 = load %struct.promisor_remote*, %struct.promisor_remote** %7, align 8
  %43 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %42, i32 0, i32 1
  %44 = load %struct.promisor_remote*, %struct.promisor_remote** %43, align 8
  store %struct.promisor_remote* %44, %struct.promisor_remote** %7, align 8
  br label %16

45:                                               ; preds = %40, %16
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.object_id*, %struct.object_id** %8, align 8
  %50 = call i32 @free(%struct.object_id* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @promisor_remote_init(...) #1

declare dso_local i64 @fetch_objects(i32, %struct.object_id*, i32) #1

declare dso_local i32 @remove_fetched_oids(%struct.repository*, %struct.object_id**, i32, i32) #1

declare dso_local i32 @free(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
