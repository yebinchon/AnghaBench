; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i8**, i32, i8*, i8*, i32, i8* }

@grep_defaults = common dso_local global %struct.grep_opt zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"grep.extendedregexp\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"grep.patterntype\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"grep.linenumber\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"grep.column\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"grep.fullname\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"color.grep\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"color.grep.match\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"color.grep.matchcontext\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"color.grep.matchselected\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"color.grep.\00", align 1
@color_grep_slots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grep_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grep_opt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.grep_opt* @grep_defaults, %struct.grep_opt** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @userdiff_config(i8* %12, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %127

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @git_config_bool(i8* %22, i8* %23)
  %25 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %26 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %4, align 4
  br label %127

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @parse_pattern_type_arg(i8* %32, i8* %33)
  %35 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %36 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %127

37:                                               ; preds = %27
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @git_config_bool(i8* %42, i8* %43)
  %45 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %46 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %4, align 4
  br label %127

47:                                               ; preds = %37
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @git_config_bool(i8* %52, i8* %53)
  %55 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %56 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %4, align 4
  br label %127

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @git_config_bool(i8* %62, i8* %63)
  %65 = icmp ne i8* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %69 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %4, align 4
  br label %127

70:                                               ; preds = %57
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @git_config_colorbool(i8* %75, i8* %76)
  %78 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %79 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @grep_config(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %85, i8* %86)
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %4, align 4
  br label %127

90:                                               ; preds = %84
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @grep_config(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %91, i8* %92)
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %4, align 4
  br label %127

96:                                               ; preds = %90
  br label %126

97:                                               ; preds = %80
  %98 = load i8*, i8** %5, align 8
  %99 = call i64 @skip_prefix(i8* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %9)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %97
  %102 = load i32, i32* @color_grep_slots, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @LOOKUP_CONFIG(i32 %102, i8* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 -1, i32* %4, align 4
  br label %127

108:                                              ; preds = %101
  %109 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %110 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %11, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %108
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @config_error_nonbool(i8* %119)
  store i32 %120, i32* %4, align 4
  br label %127

121:                                              ; preds = %108
  %122 = load i8*, i8** %6, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @color_parse(i8* %122, i8* %123)
  store i32 %124, i32* %4, align 4
  br label %127

125:                                              ; preds = %97
  br label %126

126:                                              ; preds = %125, %96
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %121, %118, %107, %95, %89, %61, %51, %41, %31, %21, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @userdiff_config(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @parse_pattern_type_arg(i8*, i8*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @LOOKUP_CONFIG(i32, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @color_parse(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
