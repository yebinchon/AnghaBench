; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_output.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32 }
%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@GIT_COLOR_ALWAYS = common dso_local global i64 0, align 8
@GIT_COLOR_NEVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)* @diff_opt_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_output(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_options*, align 8
  %10 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.option*, %struct.option** %6, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  store %struct.diff_options* %13, %struct.diff_options** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @BUG_ON_OPT_NEG(i32 %14)
  %16 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %17 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @prefix_filename(i32 %18, i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @xfopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %26 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %28 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GIT_COLOR_ALWAYS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i64, i64* @GIT_COLOR_NEVER, align 8
  %34 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %35 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %4
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @free(i8* %37)
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i8* @prefix_filename(i32, i8*) #1

declare dso_local i32 @xfopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
