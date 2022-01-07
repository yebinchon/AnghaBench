; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_remove_duplicate_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_remove_duplicate_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.treesame_state = type { i32 }

@TMP_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*)* @remove_duplicate_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_duplicate_parents(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.treesame_state*, align 8
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %10 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %11 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %12 = load %struct.commit*, %struct.commit** %4, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = call %struct.treesame_state* @lookup_decoration(i32* %11, %struct.TYPE_2__* %13)
  store %struct.treesame_state* %14, %struct.treesame_state** %5, align 8
  %15 = load %struct.commit*, %struct.commit** %4, align 8
  %16 = getelementptr inbounds %struct.commit, %struct.commit* %15, i32 0, i32 1
  store %struct.commit_list** %16, %struct.commit_list*** %6, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %45, %44, %2
  %18 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %19 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  store %struct.commit_list* %19, %struct.commit_list** %7, align 8
  %20 = icmp ne %struct.commit_list* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %23 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %22, i32 0, i32 0
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %24, %struct.commit** %9, align 8
  %25 = load %struct.commit*, %struct.commit** %9, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TMP_MARK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %34 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %33, i32 0, i32 1
  %35 = load %struct.commit_list*, %struct.commit_list** %34, align 8
  %36 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  store %struct.commit_list* %35, %struct.commit_list** %36, align 8
  %37 = load %struct.treesame_state*, %struct.treesame_state** %5, align 8
  %38 = icmp ne %struct.treesame_state* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %41 = load %struct.commit*, %struct.commit** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @compact_treesame(%struct.rev_info* %40, %struct.commit* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %32
  br label %17

45:                                               ; preds = %21
  %46 = load i32, i32* @TMP_MARK, align 4
  %47 = load %struct.commit*, %struct.commit** %9, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %55 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %54, i32 0, i32 1
  store %struct.commit_list** %55, %struct.commit_list*** %6, align 8
  br label %17

56:                                               ; preds = %17
  %57 = load %struct.commit*, %struct.commit** %4, align 8
  %58 = getelementptr inbounds %struct.commit, %struct.commit* %57, i32 0, i32 1
  %59 = load %struct.commit_list*, %struct.commit_list** %58, align 8
  store %struct.commit_list* %59, %struct.commit_list** %7, align 8
  br label %60

60:                                               ; preds = %73, %56
  %61 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %62 = icmp ne %struct.commit_list* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* @TMP_MARK, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 0
  %68 = load %struct.commit*, %struct.commit** %67, align 8
  %69 = getelementptr inbounds %struct.commit, %struct.commit* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %65
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %63
  %74 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %75 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %74, i32 0, i32 1
  %76 = load %struct.commit_list*, %struct.commit_list** %75, align 8
  store %struct.commit_list* %76, %struct.commit_list** %7, align 8
  br label %60

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.treesame_state* @lookup_decoration(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @compact_treesame(%struct.rev_info*, %struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
