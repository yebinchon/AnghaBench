; ModuleID = '/home/carl/AnghaBench/git/extr_remote-testsvn.c_parse_rev_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-testsvn.c_parse_rev_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_note = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Revision-number: \00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rev_note*)* @parse_rev_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rev_note(i8* %0, %struct.rev_note* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rev_note*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.rev_note* %1, %struct.rev_note** %5, align 8
  br label %12

12:                                               ; preds = %51, %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strchrnul(i8* %17, i8 signext 10)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  store i64 %23, i64* %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @starts_with(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %16
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strtol(i8* %34, i8** %11, i32 0)
  store i64 %35, i64* %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @UINT32_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %39, %28
  store i32 -1, i32* %3, align 4
  br label %57

47:                                               ; preds = %42
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.rev_note*, %struct.rev_note** %5, align 8
  %50 = getelementptr inbounds %struct.rev_note, %struct.rev_note* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %57

51:                                               ; preds = %16
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %4, align 8
  br label %12

56:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %47, %46
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
