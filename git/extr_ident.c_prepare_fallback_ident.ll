; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_prepare_fallback_ident.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_prepare_fallback_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_NAME\00", align 1
@author_ident_explicitly_given = common dso_local global i32 0, align 4
@IDENT_NAME_GIVEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"GIT_AUTHOR_EMAIL\00", align 1
@IDENT_MAIL_GIVEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"GIT_COMMITTER_NAME\00", align 1
@committer_ident_explicitly_given = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"GIT_COMMITTER_EMAIL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_fallback_ident(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %7 = call i32 @set_env_if(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %5, i32* @author_ident_explicitly_given, i32 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %10 = call i32 @set_env_if(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32* @author_ident_explicitly_given, i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %13 = call i32 @set_env_if(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %11, i32* @committer_ident_explicitly_given, i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %16 = call i32 @set_env_if(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %14, i32* @committer_ident_explicitly_given, i32 %15)
  ret void
}

declare dso_local i32 @set_env_if(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
