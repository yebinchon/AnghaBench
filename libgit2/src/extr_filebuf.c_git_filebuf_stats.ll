; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_git_filebuf_stats.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_git_filebuf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.stat = type { i64, i32 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not get stat info for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filebuf_stats(i32* %0, i64* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @p_fstat(i32 %17, %struct.stat* %9)
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @p_stat(i32 %22, %struct.stat* %9)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @GIT_ERROR_OS, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @git_error_set(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64*, i64** %6, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @p_fstat(i32, %struct.stat*) #1

declare dso_local i32 @p_stat(i32, %struct.stat*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
