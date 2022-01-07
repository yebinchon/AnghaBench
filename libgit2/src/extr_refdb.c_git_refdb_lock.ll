; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb.c_git_refdb_lock.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb.c_git_refdb_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8**, %struct.TYPE_5__*, i8*)* }

@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"backend does not support locking\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_refdb_lock(i8** %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br label %16

16:                                               ; preds = %13, %10, %3
  %17 = phi i1 [ false, %10 ], [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (i8**, %struct.TYPE_5__*, i8*)*, i32 (i8**, %struct.TYPE_5__*, i8*)** %23, align 8
  %25 = icmp ne i32 (i8**, %struct.TYPE_5__*, i8*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %28 = call i32 @git_error_set(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %41

29:                                               ; preds = %16
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i8**, %struct.TYPE_5__*, i8*)*, i32 (i8**, %struct.TYPE_5__*, i8*)** %33, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 %34(i8** %35, %struct.TYPE_5__* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
