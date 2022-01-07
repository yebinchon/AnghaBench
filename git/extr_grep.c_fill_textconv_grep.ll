; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_fill_textconv_grep.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_fill_textconv_grep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.userdiff_driver = type { i32 }
%struct.grep_source = type { i32, i8*, i64, i32*, i32 }
%struct.diff_filespec = type { i32 }

@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"attempt to textconv something without a path?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.userdiff_driver*, %struct.grep_source*)* @fill_textconv_grep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_textconv_grep(%struct.repository* %0, %struct.userdiff_driver* %1, %struct.grep_source* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.userdiff_driver*, align 8
  %7 = alloca %struct.grep_source*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.userdiff_driver* %1, %struct.userdiff_driver** %6, align 8
  store %struct.grep_source* %2, %struct.grep_source** %7, align 8
  %11 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %12 = icmp ne %struct.userdiff_driver* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %15 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %20 = call i32 @grep_source_load(%struct.grep_source* %19)
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %13
  %22 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %23 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.diff_filespec* @alloc_filespec(i32 %24)
  store %struct.diff_filespec* %25, %struct.diff_filespec** %8, align 8
  %26 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %27 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %38 [
    i32 128, label %29
    i32 129, label %35
  ]

29:                                               ; preds = %21
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %31 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %32 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @fill_filespec(%struct.diff_filespec* %30, i32* %33, i32 1, i32 33188)
  br label %40

35:                                               ; preds = %21
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %37 = call i32 @fill_filespec(%struct.diff_filespec* %36, i32* @null_oid, i32 0, i32 33188)
  br label %40

38:                                               ; preds = %21
  %39 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %29
  %41 = call i32 (...) @grep_read_lock()
  %42 = load %struct.repository*, %struct.repository** %5, align 8
  %43 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %45 = call i64 @fill_textconv(%struct.repository* %42, %struct.userdiff_driver* %43, %struct.diff_filespec* %44, i8** %9)
  store i64 %45, i64* %10, align 8
  %46 = call i32 (...) @grep_read_unlock()
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %48 = call i32 @free_filespec(%struct.diff_filespec* %47)
  %49 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %50 = call i32 @grep_source_clear_data(%struct.grep_source* %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %53 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %56 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %40, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @grep_source_load(%struct.grep_source*) #1

declare dso_local %struct.diff_filespec* @alloc_filespec(i32) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, i32*, i32, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @grep_read_lock(...) #1

declare dso_local i64 @fill_textconv(%struct.repository*, %struct.userdiff_driver*, %struct.diff_filespec*, i8**) #1

declare dso_local i32 @grep_read_unlock(...) #1

declare dso_local i32 @free_filespec(%struct.diff_filespec*) #1

declare dso_local i32 @grep_source_clear_data(%struct.grep_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
