; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_display_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_display_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_name = type { i32, i32, i32, i64, i32 }

@GIT_ERROR_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"annotated tag '%s' not available\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"annotated tag '%s' has no embedded name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.commit_name*)* @display_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_name(i32* %0, i32* %1, %struct.commit_name* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.commit_name*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.commit_name* %2, %struct.commit_name** %7, align 8
  %8 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %9 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %14 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %19 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %18, i32 0, i32 3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %22 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %21, i32 0, i32 4
  %23 = call i64 @git_tag_lookup(i64* %19, i32* %20, i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @GIT_ERROR_TAG, align 4
  %27 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %28 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @git_error_set(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %4, align 4
  br label %76

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %12, %3
  %33 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %34 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %39 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %44 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @git_tag_name(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @GIT_ERROR_TAG, align 4
  %50 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %51 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @git_error_set(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %4, align 4
  br label %76

54:                                               ; preds = %42
  %55 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %56 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %37, %32
  %58 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %59 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %65 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @git_tag_name(i64 %66)
  %68 = call i32 @git_buf_printf(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %75

69:                                               ; preds = %57
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.commit_name*, %struct.commit_name** %7, align 8
  %72 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @git_buf_printf(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %48, %25
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @git_tag_lookup(i64*, i32*, i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @git_tag_name(i64) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
