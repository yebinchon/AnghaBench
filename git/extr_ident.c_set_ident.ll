; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_set_ident.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_set_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"author.name\00", align 1
@git_author_name = common dso_local global i32 0, align 4
@IDENT_NAME_GIVEN = common dso_local global i32 0, align 4
@author_ident_explicitly_given = common dso_local global i32 0, align 4
@ident_config_given = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"author.email\00", align 1
@git_author_email = common dso_local global i32 0, align 4
@IDENT_MAIL_GIVEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"committer.name\00", align 1
@git_committer_name = common dso_local global i32 0, align 4
@committer_ident_explicitly_given = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"committer.email\00", align 1
@git_committer_email = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"user.name\00", align 1
@git_default_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"user.email\00", align 1
@git_default_email = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @set_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ident(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @config_error_nonbool(i8* %13)
  store i32 %14, i32* %3, align 4
  br label %132

15:                                               ; preds = %9
  %16 = call i32 @strbuf_reset(i32* @git_author_name)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strbuf_addstr(i32* @git_author_name, i8* %17)
  %19 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %20 = load i32, i32* @author_ident_explicitly_given, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @author_ident_explicitly_given, align 4
  %22 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %23 = load i32, i32* @ident_config_given, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @ident_config_given, align 4
  store i32 0, i32* %3, align 4
  br label %132

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @config_error_nonbool(i8* %33)
  store i32 %34, i32* %3, align 4
  br label %132

35:                                               ; preds = %29
  %36 = call i32 @strbuf_reset(i32* @git_author_email)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strbuf_addstr(i32* @git_author_email, i8* %37)
  %39 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %40 = load i32, i32* @author_ident_explicitly_given, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @author_ident_explicitly_given, align 4
  %42 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %43 = load i32, i32* @ident_config_given, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @ident_config_given, align 4
  store i32 0, i32* %3, align 4
  br label %132

45:                                               ; preds = %25
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @config_error_nonbool(i8* %53)
  store i32 %54, i32* %3, align 4
  br label %132

55:                                               ; preds = %49
  %56 = call i32 @strbuf_reset(i32* @git_committer_name)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strbuf_addstr(i32* @git_committer_name, i8* %57)
  %59 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %60 = load i32, i32* @committer_ident_explicitly_given, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @committer_ident_explicitly_given, align 4
  %62 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %63 = load i32, i32* @ident_config_given, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @ident_config_given, align 4
  store i32 0, i32* %3, align 4
  br label %132

65:                                               ; preds = %45
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @config_error_nonbool(i8* %73)
  store i32 %74, i32* %3, align 4
  br label %132

75:                                               ; preds = %69
  %76 = call i32 @strbuf_reset(i32* @git_committer_email)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strbuf_addstr(i32* @git_committer_email, i8* %77)
  %79 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %80 = load i32, i32* @committer_ident_explicitly_given, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @committer_ident_explicitly_given, align 4
  %82 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %83 = load i32, i32* @ident_config_given, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* @ident_config_given, align 4
  store i32 0, i32* %3, align 4
  br label %132

85:                                               ; preds = %65
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @config_error_nonbool(i8* %93)
  store i32 %94, i32* %3, align 4
  br label %132

95:                                               ; preds = %89
  %96 = call i32 @strbuf_reset(i32* @git_default_name)
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strbuf_addstr(i32* @git_default_name, i8* %97)
  %99 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %100 = load i32, i32* @committer_ident_explicitly_given, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* @committer_ident_explicitly_given, align 4
  %102 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %103 = load i32, i32* @author_ident_explicitly_given, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* @author_ident_explicitly_given, align 4
  %105 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %106 = load i32, i32* @ident_config_given, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* @ident_config_given, align 4
  store i32 0, i32* %3, align 4
  br label %132

108:                                              ; preds = %85
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %5, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @config_error_nonbool(i8* %116)
  store i32 %117, i32* %3, align 4
  br label %132

118:                                              ; preds = %112
  %119 = call i32 @strbuf_reset(i32* @git_default_email)
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @strbuf_addstr(i32* @git_default_email, i8* %120)
  %122 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %123 = load i32, i32* @committer_ident_explicitly_given, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* @committer_ident_explicitly_given, align 4
  %125 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %126 = load i32, i32* @author_ident_explicitly_given, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* @author_ident_explicitly_given, align 4
  %128 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %129 = load i32, i32* @ident_config_given, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* @ident_config_given, align 4
  store i32 0, i32* %3, align 4
  br label %132

131:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %118, %115, %95, %92, %75, %72, %55, %52, %35, %32, %15, %12
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @strbuf_addstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
