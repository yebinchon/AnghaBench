; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_normalize_section.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_normalize_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @normalize_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_section(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %11, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %50, %12
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp uge i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %53

26:                                               ; preds = %21, %18
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalnum(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @git__tolower(i8 signext %33)
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  br label %49

37:                                               ; preds = %26
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 45
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %37
  %47 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  br label %14

53:                                               ; preds = %25, %14
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %46, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @git__tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
