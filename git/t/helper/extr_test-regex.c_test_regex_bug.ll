; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-regex.c_test_regex_bug.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-regex.c_test_regex_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"[^={} \09]+\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"={}\0Afred\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed regcomp() for pattern '%s'\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"no match of pattern '%s' to string '%s'\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"regex bug confirmed: re-build git with NO_REGEX=1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_regex_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_regex_bug() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.TYPE_3__], align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = load i32, i32* @REG_EXTENDED, align 4
  %7 = load i32, i32* @REG_NEWLINE, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @regcomp(i32* %3, i8* %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %17 = call i64 @regexec(i32* %3, i8* %15, i32 1, %struct.TYPE_3__* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %1, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  ret i32 0
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
