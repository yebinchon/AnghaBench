; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_checkout.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_checkout.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.args_info = type { i32, i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--progress\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--perf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.TYPE_4__*, %struct.args_info*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i8** %0, %struct.TYPE_4__* %1, %struct.args_info* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.args_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.args_info* %2, %struct.args_info** %6, align 8
  %9 = load %struct.args_info*, %struct.args_info** %6, align 8
  %10 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (...) @print_usage()
  br label %15

15:                                               ; preds = %13, %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = call i32 @memset(%struct.TYPE_4__* %16, i32 0, i32 12)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.args_info*, %struct.args_info** %6, align 8
  %21 = getelementptr inbounds %struct.args_info, %struct.args_info* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %78, %15
  %23 = load %struct.args_info*, %struct.args_info** %6, align 8
  %24 = getelementptr inbounds %struct.args_info, %struct.args_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.args_info*, %struct.args_info** %6, align 8
  %27 = getelementptr inbounds %struct.args_info, %struct.args_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %22
  %31 = load %struct.args_info*, %struct.args_info** %6, align 8
  %32 = getelementptr inbounds %struct.args_info, %struct.args_info* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.args_info*, %struct.args_info** %6, align 8
  %35 = getelementptr inbounds %struct.args_info, %struct.args_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %33, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %83

44:                                               ; preds = %30
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %76

51:                                               ; preds = %44
  %52 = load %struct.args_info*, %struct.args_info** %6, align 8
  %53 = call i64 @match_bool_arg(i32* %8, %struct.args_info* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %75

59:                                               ; preds = %51
  %60 = load %struct.args_info*, %struct.args_info** %6, align 8
  %61 = call i64 @match_bool_arg(i32* %8, %struct.args_info* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %74

67:                                               ; preds = %59
  %68 = load i8**, i8*** %4, align 8
  %69 = load %struct.args_info*, %struct.args_info** %6, align 8
  %70 = call i64 @match_str_arg(i8** %68, %struct.args_info* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %78

73:                                               ; preds = %67
  br label %83

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %48
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %72
  %79 = load %struct.args_info*, %struct.args_info** %6, align 8
  %80 = getelementptr inbounds %struct.args_info, %struct.args_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %22

83:                                               ; preds = %73, %43, %22
  ret void
}

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @match_bool_arg(i32*, %struct.args_info*, i8*) #1

declare dso_local i64 @match_str_arg(i8**, %struct.args_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
