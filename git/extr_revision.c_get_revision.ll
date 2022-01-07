; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_get_revision.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rev_info = type { i32, i32, i32*, i64, i64, %struct.commit_list*, i64 }
%struct.commit_list = type { i32 }

@TRACK_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @get_revision(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = call %struct.commit* @get_revision_internal(%struct.rev_info* %12)
  store %struct.commit* %13, %struct.commit** %4, align 8
  %14 = icmp ne %struct.commit* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = call i32 @commit_list_insert(%struct.commit* %16, %struct.commit_list** %5)
  br label %11

18:                                               ; preds = %11
  %19 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %20 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 5
  store %struct.commit_list* %19, %struct.commit_list** %21, align 8
  %22 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 5
  %34 = call %struct.commit* @pop_commit(%struct.commit_list** %33)
  store %struct.commit* %34, %struct.commit** %4, align 8
  %35 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load %struct.commit*, %struct.commit** %4, align 8
  %41 = icmp ne %struct.commit* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.commit*, %struct.commit** %4, align 8
  %44 = getelementptr inbounds %struct.commit, %struct.commit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TRACK_LINEAR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %42, %39
  %51 = phi i1 [ false, %39 ], [ %49, %42 ]
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %56 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %31
  %58 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %58, %struct.commit** %2, align 8
  br label %95

59:                                               ; preds = %26
  %60 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %61 = call %struct.commit* @get_revision_internal(%struct.rev_info* %60)
  store %struct.commit* %61, %struct.commit** %4, align 8
  %62 = load %struct.commit*, %struct.commit** %4, align 8
  %63 = icmp ne %struct.commit* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %71 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.commit*, %struct.commit** %4, align 8
  %74 = call i32 @graph_update(i64 %72, %struct.commit* %73)
  br label %75

75:                                               ; preds = %69, %64, %59
  %76 = load %struct.commit*, %struct.commit** %4, align 8
  %77 = icmp ne %struct.commit* %76, null
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %80 = call i32 @free_saved_parents(%struct.rev_info* %79)
  %81 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %87 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @free_commit_list(i32* %88)
  %90 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %91 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %94, %struct.commit** %2, align 8
  br label %95

95:                                               ; preds = %93, %57
  %96 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %96
}

declare dso_local %struct.commit* @get_revision_internal(%struct.rev_info*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @graph_update(i64, %struct.commit*) #1

declare dso_local i32 @free_saved_parents(%struct.rev_info*) #1

declare dso_local i32 @free_commit_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
