; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_remove_locks.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_remove_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.remote_lock* }
%struct.remote_lock = type { %struct.remote_lock* }

@repo = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Removing remote locks...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_locks() #0 {
  %1 = alloca %struct.remote_lock*, align 8
  %2 = alloca %struct.remote_lock*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.remote_lock*, %struct.remote_lock** %4, align 8
  store %struct.remote_lock* %5, %struct.remote_lock** %1, align 8
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %11, %0
  %9 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %10 = icmp ne %struct.remote_lock* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %13 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %12, i32 0, i32 0
  %14 = load %struct.remote_lock*, %struct.remote_lock** %13, align 8
  store %struct.remote_lock* %14, %struct.remote_lock** %2, align 8
  %15 = load %struct.remote_lock*, %struct.remote_lock** %1, align 8
  %16 = call i32 @unlock_remote(%struct.remote_lock* %15)
  %17 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  store %struct.remote_lock* %17, %struct.remote_lock** %1, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @unlock_remote(%struct.remote_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
