; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_status.c_index_delta2status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_status.c_index_delta2status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_DELETED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_STATUS_CONFLICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @index_delta2status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_delta2status(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %33 [
    i32 134, label %8
    i32 132, label %8
    i32 131, label %10
    i32 130, label %12
    i32 129, label %14
    i32 128, label %29
    i32 133, label %31
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  store i32 %9, i32* %3, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @GIT_STATUS_INDEX_DELETED, align 4
  store i32 %11, i32* %3, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @git_oid_equal(i32* %18, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %14
  br label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @GIT_STATUS_INDEX_TYPECHANGE, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @GIT_STATUS_CONFLICTED, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %31, %29, %28, %12, %10, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @git_oid_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
