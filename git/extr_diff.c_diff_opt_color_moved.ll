; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_color_moved.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_color_moved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i64 }

@COLOR_MOVED_NO = common dso_local global i64 0, align 8
@diff_color_moved_default = common dso_local global i64 0, align 8
@COLOR_MOVED_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"bad --color-moved argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_color_moved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_color_moved(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  store %struct.diff_options* %12, %struct.diff_options** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* @COLOR_MOVED_NO, align 8
  %17 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %18 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %55

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @diff_color_moved_default, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @diff_color_moved_default, align 8
  %27 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %28 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %31 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @COLOR_MOVED_NO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @COLOR_MOVED_DEFAULT, align 8
  %37 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %38 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %29
  br label %54

40:                                               ; preds = %19
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @parse_color_moved(i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @error(i32 %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %53 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %39
  br label %55

55:                                               ; preds = %54, %15
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @parse_color_moved(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
