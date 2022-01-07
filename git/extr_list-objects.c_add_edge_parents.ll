; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_add_edge_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_add_edge_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_4__, %struct.commit_list* }
%struct.TYPE_4__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.rev_info = type { i64 }
%struct.oidset = type { i32 }
%struct.tree = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.rev_info*, i32 (%struct.commit*)*, %struct.oidset*)* @add_edge_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_edge_parents(%struct.commit* %0, %struct.rev_info* %1, i32 (%struct.commit*)* %2, %struct.oidset* %3) #0 {
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i32 (%struct.commit*)*, align 8
  %8 = alloca %struct.oidset*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.tree*, align 8
  store %struct.commit* %0, %struct.commit** %5, align 8
  store %struct.rev_info* %1, %struct.rev_info** %6, align 8
  store i32 (%struct.commit*)* %2, i32 (%struct.commit*)** %7, align 8
  store %struct.oidset* %3, %struct.oidset** %8, align 8
  %12 = load %struct.commit*, %struct.commit** %5, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 1
  %14 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %14, %struct.commit_list** %9, align 8
  br label %15

15:                                               ; preds = %71, %4
  %16 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %17 = icmp ne %struct.commit_list* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %20 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %19, i32 0, i32 0
  %21 = load %struct.commit*, %struct.commit** %20, align 8
  store %struct.commit* %21, %struct.commit** %10, align 8
  %22 = load %struct.commit*, %struct.commit** %10, align 8
  %23 = call %struct.tree* @get_commit_tree(%struct.commit* %22)
  store %struct.tree* %23, %struct.tree** %11, align 8
  %24 = load %struct.tree*, %struct.tree** %11, align 8
  %25 = icmp ne %struct.tree* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %71

27:                                               ; preds = %18
  %28 = load %struct.oidset*, %struct.oidset** %8, align 8
  %29 = load %struct.tree*, %struct.tree** %11, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = call i32 @oidset_insert(%struct.oidset* %28, i32* %31)
  %33 = load %struct.commit*, %struct.commit** %10, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @UNINTERESTING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %71

41:                                               ; preds = %27
  %42 = load i32, i32* @UNINTERESTING, align 4
  %43 = load %struct.tree*, %struct.tree** %11, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = load %struct.commit*, %struct.commit** %10, align 8
  %54 = getelementptr inbounds %struct.commit, %struct.commit* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SHOWN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @SHOWN, align 4
  %62 = load %struct.commit*, %struct.commit** %10, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 8
  %67 = load i32 (%struct.commit*)*, i32 (%struct.commit*)** %7, align 8
  %68 = load %struct.commit*, %struct.commit** %10, align 8
  %69 = call i32 %67(%struct.commit* %68)
  br label %70

70:                                               ; preds = %60, %52, %41
  br label %71

71:                                               ; preds = %70, %40, %26
  %72 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %73 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %72, i32 0, i32 1
  %74 = load %struct.commit_list*, %struct.commit_list** %73, align 8
  store %struct.commit_list* %74, %struct.commit_list** %9, align 8
  br label %15

75:                                               ; preds = %15
  ret void
}

declare dso_local %struct.tree* @get_commit_tree(%struct.commit*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
