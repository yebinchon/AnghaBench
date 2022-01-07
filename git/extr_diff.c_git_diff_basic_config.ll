; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_git_diff_basic_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_git_diff_basic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"diff.renamelimit\00", align 1
@diff_rename_limit_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"diff.color.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"color.diff.\00", align 1
@diff_colors = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"diff.suppressblankempty\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"diff.suppress-blank-empty\00", align 1
@diff_suppress_blank_empty = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"diff.dirstat\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@diff_dirstat_permille_default = common dso_local global i32 0, align 4
@default_diff_options = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Found errors in 'diff.dirstat' config variable:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_basic_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @git_config_int(i8* %15, i8* %16)
  store i32 %17, i32* @diff_rename_limit_default, align 4
  store i32 0, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @userdiff_config(i8* %19, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %94

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @skip_prefix(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @skip_prefix(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @parse_diff_color_slot(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %94

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @config_error_nonbool(i8* %42)
  store i32 %43, i32* %4, align 4
  br label %94

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i32*, i32** @diff_colors, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @color_parse(i8* %45, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %94

52:                                               ; preds = %28
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @git_config_bool(i8* %61, i8* %62)
  store i32 %63, i32* @diff_suppress_blank_empty, align 4
  store i32 0, i32* %4, align 4
  br label %94

64:                                               ; preds = %56
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %64
  %69 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %70 = load i32, i32* @diff_dirstat_permille_default, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @default_diff_options, i32 0, i32 0), align 4
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @parse_dirstat_params(%struct.TYPE_3__* @default_diff_options, i8* %71, %struct.strbuf* %10)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @warning(i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = call i32 @strbuf_release(%struct.strbuf* %10)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @default_diff_options, i32 0, i32 0), align 4
  store i32 %81, i32* @diff_dirstat_permille_default, align 4
  store i32 0, i32* %4, align 4
  br label %94

82:                                               ; preds = %64
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @git_diff_heuristic_config(i8* %83, i8* %84, i8* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %94

89:                                               ; preds = %82
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @git_default_config(i8* %90, i8* %91, i8* %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %88, %79, %60, %44, %41, %37, %23, %14
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i64 @userdiff_config(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_diff_color_slot(i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @color_parse(i8*, i32) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @parse_dirstat_params(%struct.TYPE_3__*, i8*, %struct.strbuf*) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @git_diff_heuristic_config(i8*, i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
