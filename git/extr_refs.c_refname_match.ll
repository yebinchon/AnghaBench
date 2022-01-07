; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refname_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refname_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REV_PARSE_RULES = common dso_local global i32 0, align 4
@ref_rev_parse_rules = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refname_match(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @NUM_REV_PARSE_RULES, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8**, i8*** @ref_rev_parse_rules, align 8
  store i8** %12, i8*** %6, align 8
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @mkpath(i8* %20, i32 %21, i8* %22)
  %24 = call i32 @strcmp(i8* %18, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %17
  %27 = load i8**, i8*** @ref_rev_parse_rules, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8**, i8*** %6, align 8
  %32 = ptrtoint i8** %30 to i64
  %33 = ptrtoint i8** %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %6, align 8
  br label %13

41:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @mkpath(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
