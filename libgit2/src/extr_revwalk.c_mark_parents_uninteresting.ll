; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_mark_parents_uninteresting.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_mark_parents_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i32, %struct.TYPE_5__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mark_parents_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_parents_uninteresting(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %4, align 8
  store i16 0, i16* %3, align 2
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i16, i16* %3, align 2
  %7 = zext i16 %6 to i32
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @git_commit_list_insert(%struct.TYPE_5__* %20, i32** %4)
  br label %22

22:                                               ; preds = %13
  %23 = load i16, i16* %3, align 2
  %24 = add i16 %23, 1
  store i16 %24, i16* %3, align 2
  br label %5

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %75, %25
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = call %struct.TYPE_5__* @git_commit_list_pop(i32** %4)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %2, align 8
  br label %31

31:                                               ; preds = %69, %29
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %75

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = icmp ne %struct.TYPE_5__** %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %75

48:                                               ; preds = %40
  store i16 0, i16* %3, align 2
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i16, i16* %3, align 2
  %51 = zext i16 %50 to i32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i16, i16* %53, align 8
  %55 = zext i16 %54 to i32
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = load i16, i16* %3, align 2
  %62 = zext i16 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @git_commit_list_insert(%struct.TYPE_5__* %64, i32** %4)
  br label %66

66:                                               ; preds = %57
  %67 = load i16, i16* %3, align 2
  %68 = add i16 %67, 1
  store i16 %68, i16* %3, align 2
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %72, i64 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %2, align 8
  br label %31

75:                                               ; preds = %47, %39, %31
  br label %26

76:                                               ; preds = %26
  ret void
}

declare dso_local i32 @git_commit_list_insert(%struct.TYPE_5__*, i32**) #1

declare dso_local %struct.TYPE_5__* @git_commit_list_pop(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
