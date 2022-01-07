; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_show_gitcomp.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_show_gitcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i8*, i32 }

@OPTION_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@PARSE_OPT_LASTARG_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@PARSE_OPT_COMP_ARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" --%s%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@PARSE_OPT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*)* @show_gitcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_gitcomp(%struct.option* %0) #0 {
  %2 = alloca %struct.option*, align 8
  %3 = alloca %struct.option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %2, align 8
  %6 = load %struct.option*, %struct.option** %2, align 8
  store %struct.option* %6, %struct.option** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %83, %1
  %8 = load %struct.option*, %struct.option** %2, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OPTION_END, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %14 = load %struct.option*, %struct.option** %2, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %83

19:                                               ; preds = %13
  %20 = load %struct.option*, %struct.option** %2, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %24 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %83

29:                                               ; preds = %19
  %30 = load %struct.option*, %struct.option** %2, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %59 [
    i32 131, label %33
    i32 128, label %34
    i32 132, label %34
    i32 130, label %34
    i32 129, label %34
    i32 133, label %34
  ]

33:                                               ; preds = %29
  br label %83

34:                                               ; preds = %29, %29, %29, %29, %29
  %35 = load %struct.option*, %struct.option** %2, align 8
  %36 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %60

42:                                               ; preds = %34
  %43 = load %struct.option*, %struct.option** %2, align 8
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %60

50:                                               ; preds = %42
  %51 = load %struct.option*, %struct.option** %2, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PARSE_OPT_LASTARG_DEFAULT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %60

58:                                               ; preds = %50
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %60

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59, %58, %57, %49, %41
  %61 = load %struct.option*, %struct.option** %2, align 8
  %62 = getelementptr inbounds %struct.option, %struct.option* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PARSE_OPT_COMP_ARG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.option*, %struct.option** %2, align 8
  %70 = getelementptr inbounds %struct.option, %struct.option* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @starts_with(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.option*, %struct.option** %2, align 8
  %79 = getelementptr inbounds %struct.option, %struct.option* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %33, %28, %18
  %84 = load %struct.option*, %struct.option** %2, align 8
  %85 = getelementptr inbounds %struct.option, %struct.option* %84, i32 1
  store %struct.option* %85, %struct.option** %2, align 8
  br label %7

86:                                               ; preds = %7
  %87 = load %struct.option*, %struct.option** %3, align 8
  %88 = call i32 @show_negated_gitcomp(%struct.option* %87, i32 -1)
  %89 = load %struct.option*, %struct.option** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @show_negated_gitcomp(%struct.option* %89, i32 %90)
  %92 = load i32, i32* @stdout, align 4
  %93 = call i32 @fputc(i8 signext 10, i32 %92)
  %94 = load i32, i32* @PARSE_OPT_COMPLETE, align 4
  ret i32 %94
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @show_negated_gitcomp(%struct.option*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
