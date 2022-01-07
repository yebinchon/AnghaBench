; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_find.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { i32 }

@promisors = common dso_local global %struct.promisor_remote* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.promisor_remote* @promisor_remote_find(i8* %0) #0 {
  %2 = alloca %struct.promisor_remote*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i32 (...) @promisor_remote_init()
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load %struct.promisor_remote*, %struct.promisor_remote** @promisors, align 8
  store %struct.promisor_remote* %8, %struct.promisor_remote** %2, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.promisor_remote* @promisor_remote_lookup(i8* %10, i32* null)
  store %struct.promisor_remote* %11, %struct.promisor_remote** %2, align 8
  br label %12

12:                                               ; preds = %9, %7
  %13 = load %struct.promisor_remote*, %struct.promisor_remote** %2, align 8
  ret %struct.promisor_remote* %13
}

declare dso_local i32 @promisor_remote_init(...) #1

declare dso_local %struct.promisor_remote* @promisor_remote_lookup(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
