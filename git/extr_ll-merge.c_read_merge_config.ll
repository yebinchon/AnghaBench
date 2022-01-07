; ModuleID = '/home/carl/AnghaBench/git/extr_ll-merge.c_read_merge_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_ll-merge.c_read_merge_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_merge_driver = type { i32, i32, i32, %struct.ll_merge_driver*, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"merge.default\00", align 1
@default_ll_merge = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@ll_user_merge = common dso_local global %struct.ll_merge_driver* null, align 8
@ll_ext_merge = common dso_local global i32 0, align 4
@ll_user_merge_tail = common dso_local global %struct.ll_merge_driver** null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: lacks value\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @read_merge_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_merge_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ll_merge_driver*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @git_config_string(i32* @default_ll_merge, i8* %16, i8* %17)
  store i32 %18, i32* %4, align 4
  br label %108

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @parse_config_key(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, i32* %11, i8** %9)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %19
  store i32 0, i32* %4, align 4
  br label %108

27:                                               ; preds = %23
  %28 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_user_merge, align 8
  store %struct.ll_merge_driver* %28, %struct.ll_merge_driver** %8, align 8
  br label %29

29:                                               ; preds = %51, %27
  %30 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %31 = icmp ne %struct.ll_merge_driver* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %34 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @strncmp(i32* %35, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %32
  %41 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %42 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %55

50:                                               ; preds = %40, %32
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %53 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %52, i32 0, i32 3
  %54 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %53, align 8
  store %struct.ll_merge_driver* %54, %struct.ll_merge_driver** %8, align 8
  br label %29

55:                                               ; preds = %49, %29
  %56 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %57 = icmp ne %struct.ll_merge_driver* %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = call %struct.ll_merge_driver* @xcalloc(i32 1, i32 40)
  store %struct.ll_merge_driver* %59, %struct.ll_merge_driver** %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32* @xmemdupz(i8* %60, i32 %61)
  %63 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %64 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %63, i32 0, i32 5
  store i32* %62, i32** %64, align 8
  %65 = load i32, i32* @ll_ext_merge, align 4
  %66 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %67 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %69 = load %struct.ll_merge_driver**, %struct.ll_merge_driver*** @ll_user_merge_tail, align 8
  store %struct.ll_merge_driver* %68, %struct.ll_merge_driver** %69, align 8
  %70 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %71 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %70, i32 0, i32 3
  store %struct.ll_merge_driver** %71, %struct.ll_merge_driver*** @ll_user_merge_tail, align 8
  br label %72

72:                                               ; preds = %58, %55
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %78 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %77, i32 0, i32 2
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @git_config_string(i32* %78, i8* %79, i8* %80)
  store i32 %81, i32* %4, align 4
  br label %108

82:                                               ; preds = %72
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  store i32 %91, i32* %4, align 4
  br label %108

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @xstrdup(i8* %93)
  %95 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %96 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %108

97:                                               ; preds = %82
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %8, align 8
  %103 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %102, i32 0, i32 0
  %104 = load i8*, i8** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @git_config_string(i32* %103, i8* %104, i8* %105)
  store i32 %106, i32* %4, align 4
  br label %108

107:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %101, %92, %89, %76, %26, %15
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local %struct.ll_merge_driver* @xcalloc(i32, i32) #1

declare dso_local i32* @xmemdupz(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
