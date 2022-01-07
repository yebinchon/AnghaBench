; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_result_code.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_result_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"diff.renameLimit\00", align 1
@DIFF_FORMAT_CHECKDIFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_result_code(%struct.diff_options* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %8 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %11 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @diff_warn_rename_limit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %15 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %21 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DIFF_FORMAT_CHECKDIFF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %19, %2
  %29 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %30 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %36 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %34, %28
  %44 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %45 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DIFF_FORMAT_CHECKDIFF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %52 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 2
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %50, %43
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @diff_warn_rename_limit(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
