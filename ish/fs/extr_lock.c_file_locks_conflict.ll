; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_lock.c_file_locks_conflict.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_lock.c_file_locks_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64 }

@F_WRLCK_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @file_locks_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_locks_conflict(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %10 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %16 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %17 = call i32 @file_locks_overlap(%struct.file_lock* %15, %struct.file_lock* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %34

20:                                               ; preds = %14
  %21 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @F_WRLCK_, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @F_WRLCK_, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %19, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @file_locks_overlap(%struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
