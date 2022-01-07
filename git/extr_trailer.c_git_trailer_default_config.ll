; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_git_trailer_default_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_git_trailer_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"trailer.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@default_conf_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unknown value '%s' for key '%s'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ifexists\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ifmissing\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"separators\00", align 1
@separators = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_trailer_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_trailer_default_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @skip_prefix(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %72, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @trailer_set_where(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_conf_info, i32 0, i32 2), i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @warning(i32 %28, i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %27, %23
  br label %71

33:                                               ; preds = %19
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @trailer_set_if_exists(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_conf_info, i32 0, i32 1), i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @warning(i32 %42, i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %37
  br label %70

47:                                               ; preds = %33
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @trailer_set_if_missing(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_conf_info, i32 0, i32 0), i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @warning(i32 %56, i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %69

61:                                               ; preds = %47
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @xstrdup(i8* %66)
  store i32 %67, i32* @separators, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %32
  br label %72

72:                                               ; preds = %71, %14
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @trailer_set_where(i32*, i8*) #1

declare dso_local i32 @warning(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @trailer_set_if_exists(i32*, i8*) #1

declare dso_local i64 @trailer_set_if_missing(i32*, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
