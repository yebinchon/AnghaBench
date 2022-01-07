; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_merge.c_output_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_merge.c_output_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [35 x i8] c"failed to create conflict iterator\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"conflict: a:%s o:%s t:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"error iterating conflicts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_conflicts(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @git_index_conflict_iterator_new(i32** %3, i32* %8)
  %10 = call i32 @check_lg2(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @git_index_conflict_next(%struct.TYPE_5__** %4, %struct.TYPE_5__** %5, %struct.TYPE_5__** %6, i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %23 ]
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %45 ]
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %36, i8* %47)
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GIT_ITEROVER, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_index_conflict_iterator_free(i32* %57)
  ret void
}

declare dso_local i32 @check_lg2(i32, i8*, i32*) #1

declare dso_local i32 @git_index_conflict_iterator_new(i32**, i32*) #1

declare dso_local i32 @git_index_conflict_next(%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @git_index_conflict_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
