; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_addremove.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_addremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.object_id = type { i32 }
%struct.diff_filespec = type { i32 }

@diff_queued_diff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_addremove(%struct.diff_options* %0, i32 %1, i32 %2, %struct.object_id* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.diff_filespec*, align 8
  %16 = alloca %struct.diff_filespec*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.object_id* %3, %struct.object_id** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @S_ISGITLINK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load i8*, i8** %13, align 8
  %22 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %23 = call i64 @is_submodule_ignored(i8* %21, %struct.diff_options* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %100

26:                                               ; preds = %20, %7
  %27 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %28 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 43, %39 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi i32 [ 45, %35 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %26
  %47 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %54 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %57 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @strncmp(i8* %52, i64 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %100

62:                                               ; preds = %51, %46
  %63 = load i8*, i8** %13, align 8
  %64 = call %struct.diff_filespec* @alloc_filespec(i8* %63)
  store %struct.diff_filespec* %64, %struct.diff_filespec** %15, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call %struct.diff_filespec* @alloc_filespec(i8* %65)
  store %struct.diff_filespec* %66, %struct.diff_filespec** %16, align 8
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 43
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %71 = load %struct.object_id*, %struct.object_id** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @fill_filespec(%struct.diff_filespec* %70, %struct.object_id* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 45
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %80 = load %struct.object_id*, %struct.object_id** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @fill_filespec(%struct.diff_filespec* %79, %struct.object_id* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %86 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %75
  %88 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %89 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %90 = call i32 @diff_queue(i32* @diff_queued_diff, %struct.diff_filespec* %88, %struct.diff_filespec* %89)
  %91 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %92 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %98 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %25, %61, %96, %87
  ret void
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @is_submodule_ignored(i8*, %struct.diff_options*) #1

declare dso_local i64 @strncmp(i8*, i64, i32) #1

declare dso_local %struct.diff_filespec* @alloc_filespec(i8*) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, %struct.object_id*, i32, i32) #1

declare dso_local i32 @diff_queue(i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
