; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_collect_bottom_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_collect_bottom_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.commit_list*)* @collect_bottom_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @collect_bottom_commits(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  store %struct.commit_list* null, %struct.commit_list** %4, align 8
  %5 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  store %struct.commit_list* %5, %struct.commit_list** %3, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %8 = icmp ne %struct.commit_list* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BOTTOM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %21 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @commit_list_insert(%struct.TYPE_4__* %22, %struct.commit_list** %4)
  br label %24

24:                                               ; preds = %19, %9
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %27 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %26, i32 0, i32 1
  %28 = load %struct.commit_list*, %struct.commit_list** %27, align 8
  store %struct.commit_list* %28, %struct.commit_list** %3, align 8
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  ret %struct.commit_list* %30
}

declare dso_local i32 @commit_list_insert(%struct.TYPE_4__*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
