; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_fmt_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_fmt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"GIT_AUTHOR_NAME\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GIT_AUTHOR_EMAIL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"GIT_COMMITTER_NAME\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GIT_COMMITTER_EMAIL\00", align 1
@IDENT_STRICT = common dso_local global i32 0, align 4
@IDENT_NO_DATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmt_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %13 [
    i32 129, label %6
    i32 130, label %7
    i32 128, label %10
  ]

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  %8 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  %9 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  br label %13

10:                                               ; preds = %1
  %11 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %1, %10, %7, %6
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IDENT_STRICT, align 4
  %18 = load i32, i32* @IDENT_NO_DATE, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @fmt_ident(i8* %14, i8* %15, i32 %16, i32* null, i32 %19)
  ret i8* %20
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @fmt_ident(i8*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
