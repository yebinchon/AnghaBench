; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_fetch_task_create.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_fetch_task_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_task = type { i32, i64 }
%struct.repository = type { i32 }

@null_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fetch_task* (%struct.repository*, i8*)* @fetch_task_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fetch_task* @fetch_task_create(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca %struct.fetch_task*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fetch_task*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.fetch_task* @xmalloc(i32 16)
  store %struct.fetch_task* %7, %struct.fetch_task** %6, align 8
  %8 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %9 = call i32 @memset(%struct.fetch_task* %8, i32 0, i32 16)
  %10 = load %struct.repository*, %struct.repository** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @submodule_from_path(%struct.repository* %10, i32* @null_oid, i8* %11)
  %13 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %14 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %16 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @get_non_gitmodules_submodule(i8* %20)
  %22 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %23 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %25 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %30 = call i32 @free(%struct.fetch_task* %29)
  store %struct.fetch_task* null, %struct.fetch_task** %3, align 8
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  %33 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.fetch_task*, %struct.fetch_task** %6, align 8
  store %struct.fetch_task* %35, %struct.fetch_task** %3, align 8
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.fetch_task*, %struct.fetch_task** %3, align 8
  ret %struct.fetch_task* %37
}

declare dso_local %struct.fetch_task* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.fetch_task*, i32, i32) #1

declare dso_local i64 @submodule_from_path(%struct.repository*, i32*, i8*) #1

declare dso_local i64 @get_non_gitmodules_submodule(i8*) #1

declare dso_local i32 @free(%struct.fetch_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
