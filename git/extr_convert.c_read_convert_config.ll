; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_read_convert_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_read_convert_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.convert_driver = type { i32, i32, i32, i32, %struct.convert_driver*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@user_convert = common dso_local global %struct.convert_driver* null, align 8
@user_convert_tail = common dso_local global %struct.convert_driver** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"smudge\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @read_convert_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_convert_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.convert_driver*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @parse_config_key(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, i32* %10, i8** %8)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %102

19:                                               ; preds = %15
  %20 = load %struct.convert_driver*, %struct.convert_driver** @user_convert, align 8
  store %struct.convert_driver* %20, %struct.convert_driver** %11, align 8
  br label %21

21:                                               ; preds = %43, %19
  %22 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %23 = icmp ne %struct.convert_driver* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %26 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @strncmp(i32* %27, i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %34 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %47

42:                                               ; preds = %32, %24
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %45 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %44, i32 0, i32 4
  %46 = load %struct.convert_driver*, %struct.convert_driver** %45, align 8
  store %struct.convert_driver* %46, %struct.convert_driver** %11, align 8
  br label %21

47:                                               ; preds = %41, %21
  %48 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %49 = icmp ne %struct.convert_driver* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = call %struct.convert_driver* @xcalloc(i32 1, i32 32)
  store %struct.convert_driver* %51, %struct.convert_driver** %11, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32* @xmemdupz(i8* %52, i32 %53)
  %55 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %56 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  %57 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %58 = load %struct.convert_driver**, %struct.convert_driver*** @user_convert_tail, align 8
  store %struct.convert_driver* %57, %struct.convert_driver** %58, align 8
  %59 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %60 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %59, i32 0, i32 4
  store %struct.convert_driver** %60, %struct.convert_driver*** @user_convert_tail, align 8
  br label %61

61:                                               ; preds = %50, %47
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %67 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %66, i32 0, i32 3
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @git_config_string(i32* %67, i8* %68, i8* %69)
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %61
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %77 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %76, i32 0, i32 2
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @git_config_string(i32* %77, i8* %78, i8* %79)
  store i32 %80, i32* %4, align 4
  br label %102

81:                                               ; preds = %71
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %87 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %86, i32 0, i32 1
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @git_config_string(i32* %87, i8* %88, i8* %89)
  store i32 %90, i32* %4, align 4
  br label %102

91:                                               ; preds = %81
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @git_config_bool(i8* %96, i8* %97)
  %99 = load %struct.convert_driver*, %struct.convert_driver** %11, align 8
  %100 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %95, %85, %75, %65, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local %struct.convert_driver* @xcalloc(i32, i32) #1

declare dso_local i32* @xmemdupz(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
