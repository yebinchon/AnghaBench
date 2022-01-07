; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_kill_some_child.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_kill_some_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { %struct.TYPE_2__, i32, %struct.child* }
%struct.TYPE_2__ = type { i32 }

@firstborn = common dso_local global %struct.child* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kill_some_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_some_child() #0 {
  %1 = alloca %struct.child*, align 8
  %2 = alloca %struct.child*, align 8
  %3 = load %struct.child*, %struct.child** @firstborn, align 8
  store %struct.child* %3, %struct.child** %1, align 8
  %4 = icmp ne %struct.child* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %29

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %27, %6
  %8 = load %struct.child*, %struct.child** %1, align 8
  %9 = getelementptr inbounds %struct.child, %struct.child* %8, i32 0, i32 2
  %10 = load %struct.child*, %struct.child** %9, align 8
  store %struct.child* %10, %struct.child** %2, align 8
  %11 = icmp ne %struct.child* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.child*, %struct.child** %1, align 8
  %14 = getelementptr inbounds %struct.child, %struct.child* %13, i32 0, i32 1
  %15 = load %struct.child*, %struct.child** %2, align 8
  %16 = getelementptr inbounds %struct.child, %struct.child* %15, i32 0, i32 1
  %17 = call i32 @addrcmp(i32* %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.child*, %struct.child** %1, align 8
  %21 = getelementptr inbounds %struct.child, %struct.child* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SIGTERM, align 4
  %25 = call i32 @kill(i32 %23, i32 %24)
  br label %29

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.child*, %struct.child** %2, align 8
  store %struct.child* %28, %struct.child** %1, align 8
  br label %7

29:                                               ; preds = %5, %19, %7
  ret void
}

declare dso_local i32 @addrcmp(i32*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
