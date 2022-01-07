; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_leave_one_treesame_to_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_leave_one_treesame_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.treesame_state = type { i64* }

@TMP_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*)* @leave_one_treesame_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leave_one_treesame_to_parent(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.treesame_state*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %13 = load %struct.commit*, %struct.commit** %5, align 8
  %14 = getelementptr inbounds %struct.commit, %struct.commit* %13, i32 0, i32 0
  %15 = call %struct.treesame_state* @lookup_decoration(i32* %12, %struct.TYPE_2__* %14)
  store %struct.treesame_state* %15, %struct.treesame_state** %6, align 8
  store %struct.commit* null, %struct.commit** %7, align 8
  store %struct.commit* null, %struct.commit** %8, align 8
  %16 = load %struct.commit*, %struct.commit** %5, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 1
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  store %struct.commit_list* %18, %struct.commit_list** %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %59, %2
  %20 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %21 = icmp ne %struct.commit_list* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load %struct.treesame_state*, %struct.treesame_state** %6, align 8
  %24 = getelementptr inbounds %struct.treesame_state, %struct.treesame_state* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %22
  %32 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 0
  %34 = load %struct.commit*, %struct.commit** %33, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TMP_MARK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.commit*, %struct.commit** %8, align 8
  %43 = icmp ne %struct.commit* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %46 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %45, i32 0, i32 0
  %47 = load %struct.commit*, %struct.commit** %46, align 8
  store %struct.commit* %47, %struct.commit** %8, align 8
  br label %48

48:                                               ; preds = %44, %41
  br label %57

49:                                               ; preds = %31
  %50 = load %struct.commit*, %struct.commit** %7, align 8
  %51 = icmp ne %struct.commit* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %54 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %53, i32 0, i32 0
  %55 = load %struct.commit*, %struct.commit** %54, align 8
  store %struct.commit* %55, %struct.commit** %7, align 8
  br label %65

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %22
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %61 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %60, i32 0, i32 1
  %62 = load %struct.commit_list*, %struct.commit_list** %61, align 8
  store %struct.commit_list* %62, %struct.commit_list** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %19

65:                                               ; preds = %52, %19
  %66 = load %struct.commit*, %struct.commit** %7, align 8
  %67 = icmp ne %struct.commit* %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load %struct.commit*, %struct.commit** %8, align 8
  %70 = icmp ne %struct.commit* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* @TMP_MARK, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.commit*, %struct.commit** %8, align 8
  %75 = getelementptr inbounds %struct.commit, %struct.commit* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 8
  store i32 1, i32* %3, align 4
  br label %80

79:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.treesame_state* @lookup_decoration(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
