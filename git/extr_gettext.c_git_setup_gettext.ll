; ModuleID = '/home/carl/AnghaBench/git/extr_gettext.c_git_setup_gettext.c'
source_filename = "/home/carl/AnghaBench/git/extr_gettext.c_git_setup_gettext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_TEXT_DOMAIN_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@GIT_LOCALE_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@LC_MESSAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_setup_gettext() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @GIT_TEXT_DOMAIN_DIR_ENVIRONMENT, align 4
  %4 = call i8* @getenv(i32 %3)
  store i8* %4, i8** %1, align 8
  store i8* null, i8** %2, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @GIT_LOCALE_PATH, align 4
  %9 = call i8* @system_path(i32 %8)
  store i8* %9, i8** %2, align 8
  store i8* %9, i8** %1, align 8
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @use_gettext_poison()
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @is_directory(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @free(i8* %16)
  br label %29

18:                                               ; preds = %10
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @bindtextdomain(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @LC_MESSAGES, align 4
  %22 = call i32 @setlocale(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @LC_TIME, align 4
  %24 = call i32 @setlocale(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @init_gettext_charset(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @textdomain(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %18, %15
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i8* @system_path(i32) #1

declare dso_local i32 @use_gettext_poison(...) #1

declare dso_local i32 @is_directory(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bindtextdomain(i8*, i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @init_gettext_charset(i8*) #1

declare dso_local i32 @textdomain(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
