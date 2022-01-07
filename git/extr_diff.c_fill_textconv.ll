; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fill_textconv.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fill_textconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.userdiff_driver = type { i64, i32 }
%struct.diff_filespec = type { i8*, i64, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to read files to diff\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"fill_textconv called with non-textconv driver\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fill_textconv(%struct.repository* %0, %struct.userdiff_driver* %1, %struct.diff_filespec* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.userdiff_driver*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.userdiff_driver* %1, %struct.userdiff_driver** %7, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %12 = icmp ne %struct.userdiff_driver* %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %4
  %14 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %15 = call i32 @DIFF_FILE_VALID(%struct.diff_filespec* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i64 0, i64* %5, align 8
  br label %104

19:                                               ; preds = %13
  %20 = load %struct.repository*, %struct.repository** %6, align 8
  %21 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %22 = call i64 @diff_populate_filespec(%struct.repository* %20, %struct.diff_filespec* %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %9, align 8
  store i8* %29, i8** %30, align 8
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %104

34:                                               ; preds = %4
  %35 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %36 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %43 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %48 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %53 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %56 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %55, i32 0, i32 2
  %57 = call i8* @notes_cache_get(i64 %54, i32* %56, i64* %10)
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %5, align 8
  br label %104

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %46, %41
  %66 = load %struct.repository*, %struct.repository** %6, align 8
  %67 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %68 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %71 = call i8* @run_textconv(%struct.repository* %66, i32 %69, %struct.diff_filespec* %70, i64* %10)
  %72 = load i8**, i8*** %9, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  %77 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %65
  %79 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %80 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %85 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %90 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %93 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %92, i32 0, i32 2
  %94 = load i8**, i8*** %9, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @notes_cache_put(i64 %91, i32* %93, i8* %95, i64 %96)
  %98 = load %struct.userdiff_driver*, %struct.userdiff_driver** %7, align 8
  %99 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @notes_cache_write(i64 %100)
  br label %102

102:                                              ; preds = %88, %83, %78
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %102, %62, %26, %17
  %105 = load i64, i64* %5, align 8
  ret i64 %105
}

declare dso_local i32 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @notes_cache_get(i64, i32*, i64*) #1

declare dso_local i8* @run_textconv(%struct.repository*, i32, %struct.diff_filespec*, i64*) #1

declare dso_local i32 @notes_cache_put(i64, i32*, i8*, i64) #1

declare dso_local i32 @notes_cache_write(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
