; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_redundant_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_redundant_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TMP_MARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mark_redundant_parents %d %d %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @mark_redundant_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_redundant_parents(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %2, align 8
  %10 = load %struct.commit*, %struct.commit** %2, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %12 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %13 = call %struct.commit_list* @reduce_heads(%struct.commit_list* %12)
  store %struct.commit_list* %13, %struct.commit_list** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.commit*, %struct.commit** %2, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 0
  %16 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %17 = call i32 @commit_list_count(%struct.commit_list* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %19 = call i32 @commit_list_count(%struct.commit_list* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.commit*, %struct.commit** %2, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  store %struct.commit_list* %22, %struct.commit_list** %6, align 8
  %23 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %23, %struct.commit_list** %7, align 8
  br label %24

24:                                               ; preds = %55, %1
  %25 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %26 = icmp ne %struct.commit_list* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %29 = icmp ne %struct.commit_list* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %32 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %35 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp eq %struct.TYPE_4__* %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %40 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %39, i32 0, i32 0
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %30, %27
  %45 = load i32, i32* @TMP_MARK, align 4
  %46 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %47 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %45
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %38
  %56 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %57 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %56, i32 0, i32 0
  %58 = load %struct.commit_list*, %struct.commit_list** %57, align 8
  store %struct.commit_list* %58, %struct.commit_list** %6, align 8
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %77 = call i32 @free_commit_list(%struct.commit_list* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.commit_list* @reduce_heads(%struct.commit_list*) #1

declare dso_local i32 @commit_list_count(%struct.commit_list*) #1

declare dso_local i32 @die(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
