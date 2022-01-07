; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_ident_default_email.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_ident_default_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@ident_config_given = common dso_local global i32 0, align 4
@IDENT_MAIL_GIVEN = common dso_local global i32 0, align 4
@git_default_email = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"EMAIL\00", align 1
@committer_ident_explicitly_given = common dso_local global i32 0, align 4
@author_ident_explicitly_given = common dso_local global i32 0, align 4
@default_email_is_bogus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ident_default_email() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @ident_config_given, align 4
  %3 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @git_default_email, i32 0, i32 1), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @strbuf_addstr(%struct.TYPE_5__* @git_default_email, i8* %20)
  %22 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %23 = load i32, i32* @committer_ident_explicitly_given, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @committer_ident_explicitly_given, align 4
  %25 = load i32, i32* @IDENT_MAIL_GIVEN, align 4
  %26 = load i32, i32* @author_ident_explicitly_given, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @author_ident_explicitly_given, align 4
  br label %46

28:                                               ; preds = %13, %9
  %29 = call i8* (...) @query_user_email()
  store i8* %29, i8** %1, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @strbuf_addstr(%struct.TYPE_5__* @git_default_email, i8* %38)
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @free(i8* %40)
  br label %45

42:                                               ; preds = %31, %28
  %43 = call i32 @xgetpwuid_self(i32* @default_email_is_bogus)
  %44 = call i32 @copy_email(i32 %43, %struct.TYPE_5__* @git_default_email, i32* @default_email_is_bogus)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %19
  %47 = call i32 @strbuf_trim(%struct.TYPE_5__* @git_default_email)
  br label %48

48:                                               ; preds = %46, %6, %0
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @git_default_email, i32 0, i32 0), align 8
  ret i8* %49
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @query_user_email(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @copy_email(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @xgetpwuid_self(i32*) #1

declare dso_local i32 @strbuf_trim(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
