; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { %struct.promisor_remote* }

@promisors = common dso_local global %struct.promisor_remote* null, align 8
@promisors_tail = common dso_local global %struct.promisor_remote** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @promisor_remote_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @promisor_remote_clear() #0 {
  %1 = alloca %struct.promisor_remote*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load %struct.promisor_remote*, %struct.promisor_remote** @promisors, align 8
  %4 = icmp ne %struct.promisor_remote* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load %struct.promisor_remote*, %struct.promisor_remote** @promisors, align 8
  store %struct.promisor_remote* %6, %struct.promisor_remote** %1, align 8
  %7 = load %struct.promisor_remote*, %struct.promisor_remote** @promisors, align 8
  %8 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %7, i32 0, i32 0
  %9 = load %struct.promisor_remote*, %struct.promisor_remote** %8, align 8
  store %struct.promisor_remote* %9, %struct.promisor_remote** @promisors, align 8
  %10 = load %struct.promisor_remote*, %struct.promisor_remote** %1, align 8
  %11 = call i32 @free(%struct.promisor_remote* %10)
  br label %2

12:                                               ; preds = %2
  store %struct.promisor_remote** @promisors, %struct.promisor_remote*** @promisors_tail, align 8
  ret void
}

declare dso_local i32 @free(%struct.promisor_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
