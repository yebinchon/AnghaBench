; ModuleID = '/home/carl/AnghaBench/git/extr_repository.c_repo_hold_locked_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_repository.c_repo_hold_locked_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.lock_file = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"the repo hasn't been setup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_hold_locked_index(%struct.repository* %0, %struct.lock_file* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.lock_file*, align 8
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.lock_file* %1, %struct.lock_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.repository*, %struct.repository** %4, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @BUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.lock_file*, %struct.lock_file** %5, align 8
  %15 = load %struct.repository*, %struct.repository** %4, align 8
  %16 = getelementptr inbounds %struct.repository, %struct.repository* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @hold_lock_file_for_update(%struct.lock_file* %14, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
