; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_new.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { %struct.promisor_remote* }

@.str = private unnamed_addr constant [47 x i8] c"promisor remote name cannot begin with '/': %s\00", align 1
@name = common dso_local global i32 0, align 4
@promisors_tail = common dso_local global %struct.promisor_remote** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.promisor_remote* (i8*)* @promisor_remote_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.promisor_remote* @promisor_remote_new(i8* %0) #0 {
  %2 = alloca %struct.promisor_remote*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.promisor_remote*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 47
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @warning(i32 %10, i8* %11)
  store %struct.promisor_remote* null, %struct.promisor_remote** %2, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.promisor_remote*, %struct.promisor_remote** %4, align 8
  %15 = load i32, i32* @name, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @FLEX_ALLOC_STR(%struct.promisor_remote* %14, i32 %15, i8* %16)
  %18 = load %struct.promisor_remote*, %struct.promisor_remote** %4, align 8
  %19 = load %struct.promisor_remote**, %struct.promisor_remote*** @promisors_tail, align 8
  store %struct.promisor_remote* %18, %struct.promisor_remote** %19, align 8
  %20 = load %struct.promisor_remote*, %struct.promisor_remote** %4, align 8
  %21 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %20, i32 0, i32 0
  store %struct.promisor_remote** %21, %struct.promisor_remote*** @promisors_tail, align 8
  %22 = load %struct.promisor_remote*, %struct.promisor_remote** %4, align 8
  store %struct.promisor_remote* %22, %struct.promisor_remote** %2, align 8
  br label %23

23:                                               ; preds = %13, %9
  %24 = load %struct.promisor_remote*, %struct.promisor_remote** %2, align 8
  ret %struct.promisor_remote* %24
}

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @FLEX_ALLOC_STR(%struct.promisor_remote*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
