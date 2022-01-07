; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_diff_algorithm.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_diff_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i64 }

@.str = private unnamed_addr constant [77 x i8] c"option diff-algorithm accepts \22myers\22, \22minimal\22, \22patience\22 and \22histogram\22\00", align 1
@NEED_MINIMAL = common dso_local global i32 0, align 4
@XDF_DIFF_ALGORITHM_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_diff_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_diff_algorithm(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i64, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load %struct.diff_options*, %struct.diff_options** %11, align 8
  store %struct.diff_options* %12, %struct.diff_options** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @parse_algorithm_value(i8* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @BUG_ON_OPT_NEG(i32 %15)
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @error(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %24 = load i32, i32* @NEED_MINIMAL, align 4
  %25 = call i32 @DIFF_XDL_CLR(%struct.diff_options* %23, i32 %24)
  %26 = load i64, i64* @XDF_DIFF_ALGORITHM_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %34 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %32
  store i64 %36, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @parse_algorithm_value(i8*) #1

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @DIFF_XDL_CLR(%struct.diff_options*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
