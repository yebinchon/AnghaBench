; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_patience.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_patience.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i32, i32*, i32 }

@PATIENCE_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_patience to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_patience(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_options*, align 8
  %8 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.option*, %struct.option** %4, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  store %struct.diff_options* %11, %struct.diff_options** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @BUG_ON_OPT_NEG(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @BUG_ON_OPT_ARG(i8* %14)
  %16 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %17 = load i32, i32* @PATIENCE_DIFF, align 4
  %18 = call i32 @DIFF_WITH_ALG(%struct.diff_options* %16, i32 %17)
  %19 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %36, %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @free(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %41 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @BUG_ON_OPT_ARG(i8*) #1

declare dso_local i32 @DIFF_WITH_ALG(%struct.diff_options*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
