; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_simplify_merges.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_simplify_merges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.commit_list*, i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { i32 }
%struct.merge_simplify_state = type { %struct.commit* }
%struct.TYPE_2__ = type { %struct.commit_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @simplify_merges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simplify_merges(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.merge_simplify_state*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %75

14:                                               ; preds = %1
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  %15 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 0
  %17 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  store %struct.commit_list* %17, %struct.commit_list** %3, align 8
  br label %18

18:                                               ; preds = %30, %14
  %19 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %20 = icmp ne %struct.commit_list* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %23 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %22, i32 0, i32 1
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %24, %struct.commit** %7, align 8
  %25 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %26 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %25, i32 0, i32 0
  %27 = load %struct.commit_list*, %struct.commit_list** %26, align 8
  store %struct.commit_list* %27, %struct.commit_list** %4, align 8
  %28 = load %struct.commit*, %struct.commit** %7, align 8
  %29 = call %struct.TYPE_2__* @commit_list_insert(%struct.commit* %28, %struct.commit_list** %5)
  br label %30

30:                                               ; preds = %21
  %31 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %31, %struct.commit_list** %3, align 8
  br label %18

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %47, %32
  %34 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %35 = icmp ne %struct.commit_list* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %37, %struct.commit_list** %3, align 8
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  store %struct.commit_list** %5, %struct.commit_list*** %6, align 8
  br label %38

38:                                               ; preds = %41, %36
  %39 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %40 = icmp ne %struct.commit_list* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = call %struct.commit* @pop_commit(%struct.commit_list** %3)
  store %struct.commit* %42, %struct.commit** %7, align 8
  %43 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %44 = load %struct.commit*, %struct.commit** %7, align 8
  %45 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %46 = call %struct.commit_list** @simplify_one(%struct.rev_info* %43, %struct.commit* %44, %struct.commit_list** %45)
  store %struct.commit_list** %46, %struct.commit_list*** %6, align 8
  br label %38

47:                                               ; preds = %38
  br label %33

48:                                               ; preds = %33
  %49 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %50 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %49, i32 0, i32 0
  %51 = load %struct.commit_list*, %struct.commit_list** %50, align 8
  store %struct.commit_list* %51, %struct.commit_list** %3, align 8
  %52 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %53 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %52, i32 0, i32 0
  store %struct.commit_list* null, %struct.commit_list** %53, align 8
  %54 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %54, i32 0, i32 0
  store %struct.commit_list** %55, %struct.commit_list*** %6, align 8
  br label %56

56:                                               ; preds = %74, %48
  %57 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %58 = icmp ne %struct.commit_list* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = call %struct.commit* @pop_commit(%struct.commit_list** %3)
  store %struct.commit* %60, %struct.commit** %7, align 8
  %61 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %62 = load %struct.commit*, %struct.commit** %7, align 8
  %63 = call %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info* %61, %struct.commit* %62)
  store %struct.merge_simplify_state* %63, %struct.merge_simplify_state** %8, align 8
  %64 = load %struct.merge_simplify_state*, %struct.merge_simplify_state** %8, align 8
  %65 = getelementptr inbounds %struct.merge_simplify_state, %struct.merge_simplify_state* %64, i32 0, i32 0
  %66 = load %struct.commit*, %struct.commit** %65, align 8
  %67 = load %struct.commit*, %struct.commit** %7, align 8
  %68 = icmp eq %struct.commit* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.commit*, %struct.commit** %7, align 8
  %71 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %72 = call %struct.TYPE_2__* @commit_list_insert(%struct.commit* %70, %struct.commit_list** %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store %struct.commit_list** %73, %struct.commit_list*** %6, align 8
  br label %74

74:                                               ; preds = %69, %59
  br label %56

75:                                               ; preds = %13, %56
  ret void
}

declare dso_local %struct.TYPE_2__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local %struct.commit_list** @simplify_one(%struct.rev_info*, %struct.commit*, %struct.commit_list**) #1

declare dso_local %struct.merge_simplify_state* @locate_simplify_state(%struct.rev_info*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
