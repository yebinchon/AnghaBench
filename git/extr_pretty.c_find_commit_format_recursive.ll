; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_find_commit_format_recursive.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_find_commit_format_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmt_fmt_map = type { i8*, i64, i32 }

@commit_formats_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"invalid --pretty format: '%s' references an alias which points to itself\00", align 1
@commit_formats = common dso_local global %struct.cmt_fmt_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmt_fmt_map* (i8*, i8*, i32)* @find_commit_format_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmt_fmt_map* @find_commit_format_recursive(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmt_fmt_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.cmt_fmt_map* null, %struct.cmt_fmt_map** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @commit_formats_len, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @die(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %54, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @commit_formats_len, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %23, i64 %25
  %27 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @starts_with(i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %54

33:                                               ; preds = %22
  %34 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %34, i64 %36
  %38 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strlen(i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %7, align 8
  %42 = icmp eq %struct.cmt_fmt_map* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %33
  %48 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %48, i64 %50
  store %struct.cmt_fmt_map* %51, %struct.cmt_fmt_map** %7, align 8
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %7, align 8
  %59 = icmp ne %struct.cmt_fmt_map* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %7, align 8
  %62 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %7, align 8
  %67 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = call %struct.cmt_fmt_map* @find_commit_format_recursive(i8* %68, i8* %69, i32 %71)
  store %struct.cmt_fmt_map* %72, %struct.cmt_fmt_map** %7, align 8
  br label %73

73:                                               ; preds = %65, %60, %57
  %74 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %7, align 8
  ret %struct.cmt_fmt_map* %74
}

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @starts_with(i32, i8*) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
