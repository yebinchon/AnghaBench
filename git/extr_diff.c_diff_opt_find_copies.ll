; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_find_copies.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_find_copies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, %struct.diff_options* }
%struct.diff_options = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid argument to %s\00", align 1
@DIFF_DETECT_COPY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_find_copies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_find_copies(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 1
  %11 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  store %struct.diff_options* %11, %struct.diff_options** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @BUG_ON_OPT_NEG(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %17

17:                                               ; preds = %16, %3
  %18 = call i32 @parse_rename_score(i8** %6)
  %19 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.option*, %struct.option** %5, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @error(i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %17
  %32 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %33 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DIFF_DETECT_COPY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %45

41:                                               ; preds = %31
  %42 = load i64, i64* @DIFF_DETECT_COPY, align 8
  %43 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %44 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @parse_rename_score(i8**) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
