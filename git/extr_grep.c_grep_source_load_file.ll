; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_source_load_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_source_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_source = type { i8*, i8*, i64 }
%struct.stat = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"'%s': short read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_source*)* @grep_source_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_source_load_file(%struct.grep_source* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grep_source*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.grep_source* %0, %struct.grep_source** %3, align 8
  %9 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %10 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @lstat(i8* %12, %struct.stat* %5)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @error_errno(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %16
  store i32 -1, i32* %2, align 4
  br label %68

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @S_ISREG(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %68

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @xsize_t(i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i32 @open(i8* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %16

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @xmallocz(i64 %42)
  store i8* %43, i8** %6, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @read_in_full(i32 %46, i8* %47, i64 %48)
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @error_errno(i32 %52, i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  store i32 -1, i32* %2, align 4
  br label %68

59:                                               ; preds = %41
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %64 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %67 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %51, %30, %24
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @xsize_t(i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @xmallocz(i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
