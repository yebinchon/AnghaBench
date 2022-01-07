; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_git_author_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_git_author_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_NAME\00", align 1
@IDENT_NAME_GIVEN = common dso_local global i32 0, align 4
@author_ident_explicitly_given = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"GIT_AUTHOR_EMAIL\00", align 1
@IDENT_MAIL_GIVEN = common dso_local global i32 0, align 4
@WANT_AUTHOR_IDENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_DATE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_author_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @IDENT_NAME_GIVEN, align 4
  %7 = load i32, i32* @author_ident_explicitly_given, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @author_ident_explicitly_given, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = call i64 @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %14 = load i32, i32* @author_ident_explicitly_given, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @author_ident_explicitly_given, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = call i64 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @WANT_AUTHOR_IDENT, align 4
  %20 = call i64 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = call i8* @fmt_ident(i64 %17, i64 %18, i32 %19, i64 %20, i32 %21)
  ret i8* %22
}

declare dso_local i64 @getenv(i8*) #1

declare dso_local i8* @fmt_ident(i64, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
