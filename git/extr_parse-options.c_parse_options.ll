; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.parse_opt_ctx_t = type { i8**, i8**, %struct.option* }

@.str = private unnamed_addr constant [38 x i8] c"GIT_TEST_DISALLOW_ABBREVIATED_OPTIONS\00", align 1
@disallow_abbreviated_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown switch `%c'\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unknown non-ascii option in string: `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options(i32 %0, i8** %1, i8* %2, %struct.option* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.parse_opt_ctx_t, align 8
  %14 = alloca %struct.option*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.option* %3, %struct.option** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = call i32 @git_env_bool(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %15, i32* @disallow_abbreviated_options, align 4
  %16 = call i32 @memset(%struct.parse_opt_ctx_t* %13, i32 0, i32 24)
  %17 = load %struct.option*, %struct.option** %10, align 8
  %18 = call %struct.option* @preprocess_options(%struct.parse_opt_ctx_t* %13, %struct.option* %17)
  store %struct.option* %18, %struct.option** %14, align 8
  %19 = load %struct.option*, %struct.option** %14, align 8
  %20 = icmp ne %struct.option* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load %struct.option*, %struct.option** %14, align 8
  store %struct.option* %22, %struct.option** %10, align 8
  br label %23

23:                                               ; preds = %21, %6
  %24 = load i32, i32* %7, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.option*, %struct.option** %10, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @parse_options_start_1(%struct.parse_opt_ctx_t* %13, i32 %24, i8** %25, i8* %26, %struct.option* %27, i32 %28)
  %30 = load %struct.option*, %struct.option** %10, align 8
  %31 = load i8**, i8*** %11, align 8
  %32 = call i32 @parse_options_step(%struct.parse_opt_ctx_t* %13, %struct.option* %30, i8** %31)
  switch i32 %32, label %38 [
    i32 129, label %33
    i32 130, label %33
    i32 132, label %35
    i32 128, label %37
    i32 131, label %37
  ]

33:                                               ; preds = %23, %23
  %34 = call i32 @exit(i32 129) #3
  unreachable

35:                                               ; preds = %23
  %36 = call i32 @exit(i32 0) #3
  unreachable

37:                                               ; preds = %23, %23
  br label %79

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = call i32 @error(i32 %48, i8* %53)
  br label %75

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @isascii(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @error(i32 %62, i8* %65)
  br label %74

67:                                               ; preds = %55
  %68 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @error(i32 %68, i8* %72)
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i8**, i8*** %11, align 8
  %77 = load %struct.option*, %struct.option** %10, align 8
  %78 = call i32 @usage_with_options(i8** %76, %struct.option* %77)
  br label %79

79:                                               ; preds = %75, %37
  %80 = load i32, i32* %7, align 4
  %81 = load i8**, i8*** %8, align 8
  %82 = call i32 @precompose_argv(i32 %80, i8** %81)
  %83 = load %struct.option*, %struct.option** %14, align 8
  %84 = call i32 @free(%struct.option* %83)
  %85 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 2
  %86 = load %struct.option*, %struct.option** %85, align 8
  %87 = call i32 @free(%struct.option* %86)
  %88 = call i32 @parse_options_end(%struct.parse_opt_ctx_t* %13)
  ret i32 %88
}

declare dso_local i32 @git_env_bool(i8*, i32) #1

declare dso_local i32 @memset(%struct.parse_opt_ctx_t*, i32, i32) #1

declare dso_local %struct.option* @preprocess_options(%struct.parse_opt_ctx_t*, %struct.option*) #1

declare dso_local i32 @parse_options_start_1(%struct.parse_opt_ctx_t*, i32, i8**, i8*, %struct.option*, i32) #1

declare dso_local i32 @parse_options_step(%struct.parse_opt_ctx_t*, %struct.option*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @isascii(i8*) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @precompose_argv(i32, i8**) #1

declare dso_local i32 @free(%struct.option*) #1

declare dso_local i32 @parse_options_end(%struct.parse_opt_ctx_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
