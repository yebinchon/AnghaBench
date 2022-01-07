; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_register_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_register_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit_graft = type { i32, i32 }
%struct.commit = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_shallow(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.commit_graft*, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %7 = call %struct.commit_graft* @xmalloc(i32 8)
  store %struct.commit_graft* %7, %struct.commit_graft** %5, align 8
  %8 = load i32, i32* @the_repository, align 4
  %9 = load %struct.object_id*, %struct.object_id** %4, align 8
  %10 = call %struct.commit* @lookup_commit(i32 %8, %struct.object_id* %9)
  store %struct.commit* %10, %struct.commit** %6, align 8
  %11 = load %struct.commit_graft*, %struct.commit_graft** %5, align 8
  %12 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %11, i32 0, i32 1
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = call i32 @oidcpy(i32* %12, %struct.object_id* %13)
  %15 = load %struct.commit_graft*, %struct.commit_graft** %5, align 8
  %16 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = load %struct.commit*, %struct.commit** %6, align 8
  %18 = icmp ne %struct.commit* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.commit*, %struct.commit** %6, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.commit*, %struct.commit** %6, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %19, %2
  %29 = load %struct.repository*, %struct.repository** %3, align 8
  %30 = load %struct.commit_graft*, %struct.commit_graft** %5, align 8
  %31 = call i32 @register_commit_graft(%struct.repository* %29, %struct.commit_graft* %30, i32 0)
  ret i32 %31
}

declare dso_local %struct.commit_graft* @xmalloc(i32) #1

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @register_commit_graft(%struct.repository*, %struct.commit_graft*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
