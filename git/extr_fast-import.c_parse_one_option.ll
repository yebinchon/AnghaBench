; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_one_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_one_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"max-pack-size=\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"max-pack-size is now in bytes, assuming --max-pack-size=%lum\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"minimum max-pack-size is 1 MiB\00", align 1
@max_packsize = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"big-file-threshold=\00", align 1
@big_file_threshold = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"depth=\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"active-branches=\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"export-pack-edges=\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@show_stats = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_one_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_one_option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @skip_prefix(i8* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @git_parse_ulong(i8* %10, i64* %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %80

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %15, 8192
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = mul i64 %20, 1048576
  store i64 %21, i64* %4, align 8
  br label %28

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %23, 1048576
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i64 1048576, i64* %4, align 8
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* @max_packsize, align 8
  br label %79

30:                                               ; preds = %1
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @skip_prefix(i8* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %3)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @git_parse_ulong(i8* %35, i64* %5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %80

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* @big_file_threshold, align 8
  br label %78

41:                                               ; preds = %30
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @skip_prefix(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @option_depth(i8* %46)
  br label %77

48:                                               ; preds = %41
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @skip_prefix(i8* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %3)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @option_active_branches(i8* %53)
  br label %76

55:                                               ; preds = %48
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @skip_prefix(i8* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %3)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @option_export_pack_edges(i8* %60)
  br label %75

62:                                               ; preds = %55
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @starts_with(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* @show_stats, align 4
  br label %74

67:                                               ; preds = %62
  %68 = load i8*, i8** %3, align 8
  %69 = call i64 @starts_with(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* @show_stats, align 4
  br label %73

72:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %80

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %66
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %45
  br label %78

78:                                               ; preds = %77, %39
  br label %79

79:                                               ; preds = %78, %28
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %72, %38, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @git_parse_ulong(i8*, i64*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @option_depth(i8*) #1

declare dso_local i32 @option_active_branches(i8*) #1

declare dso_local i32 @option_export_pack_edges(i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
