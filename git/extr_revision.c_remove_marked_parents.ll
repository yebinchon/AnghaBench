; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_remove_marked_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_remove_marked_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

@TMP_MARK = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*)* @remove_marked_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_marked_parents(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list**, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.commit*, %struct.commit** %4, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  store %struct.commit_list** %11, %struct.commit_list*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %47, %27, %2
  %13 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %14 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %14, %struct.commit_list** %6, align 8
  %15 = icmp ne %struct.commit_list* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %18 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %17, i32 0, i32 1
  %19 = load %struct.commit*, %struct.commit** %18, align 8
  store %struct.commit* %19, %struct.commit** %9, align 8
  %20 = load %struct.commit*, %struct.commit** %9, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TMP_MARK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %16
  %28 = load i32, i32* @TMP_MARK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.commit*, %struct.commit** %9, align 8
  %31 = getelementptr inbounds %struct.commit, %struct.commit* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 0
  %37 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  %38 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  store %struct.commit_list* %37, %struct.commit_list** %38, align 8
  %39 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %40 = call i32 @free(%struct.commit_list* %39)
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %44 = load %struct.commit*, %struct.commit** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @compact_treesame(%struct.rev_info* %43, %struct.commit* %44, i32 %45)
  br label %12

47:                                               ; preds = %16
  %48 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %49 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %48, i32 0, i32 0
  store %struct.commit_list** %49, %struct.commit_list*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.commit*, %struct.commit** %4, align 8
  %57 = getelementptr inbounds %struct.commit, %struct.commit* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @TREESAME, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %65 = load %struct.commit*, %struct.commit** %4, align 8
  %66 = call i32 @update_treesame(%struct.rev_info* %64, %struct.commit* %65)
  br label %67

67:                                               ; preds = %63, %55, %52
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @free(%struct.commit_list*) #1

declare dso_local i32 @compact_treesame(%struct.rev_info*, %struct.commit*, i32) #1

declare dso_local i32 @update_treesame(%struct.rev_info*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
