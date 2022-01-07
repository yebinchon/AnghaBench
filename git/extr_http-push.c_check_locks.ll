; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_check_locks.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_check_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.remote_lock* }
%struct.remote_lock = type { i32, i32, i8*, %struct.remote_lock*, i32 }

@repo = common dso_local global %struct.TYPE_2__* null, align 8
@LOCK_REFRESH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to refresh lock for %s\0A\00", align 1
@aborted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_locks() #0 {
  %1 = alloca %struct.remote_lock*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  store %struct.remote_lock* %6, %struct.remote_lock** %1, align 8
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* %2, align 4
  br label %8

8:                                                ; preds = %40, %0
  %9 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %10 = icmp ne %struct.remote_lock* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %13 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %16 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %22 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @LOCK_REFRESH, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %31 = call i32 @refresh_lock(%struct.remote_lock* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %36 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 1, i32* @aborted, align 4
  br label %44

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %25, %11
  %41 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %42 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %41, i32 0, i32 3
  %43 = load %struct.remote_lock*, %struct.remote_lock** %42, align 8
  store %struct.remote_lock* %43, %struct.remote_lock** %1, align 8
  br label %8

44:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @refresh_lock(%struct.remote_lock*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
