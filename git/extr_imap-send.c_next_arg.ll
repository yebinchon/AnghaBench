; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_next_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_next_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @next_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @next_arg(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %92

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %19, %12
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspace(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i8**, i8*** %3, align 8
  store i8* null, i8** %29, align 8
  store i8* null, i8** %2, align 8
  br label %92

30:                                               ; preds = %23
  %31 = load i8**, i8*** %3, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 34)
  %45 = load i8**, i8*** %3, align 8
  store i8* %44, i8** %45, align 8
  br label %69

46:                                               ; preds = %30
  %47 = load i8**, i8*** %3, align 8
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %64, %46
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i8**, i8*** %3, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %55, %49
  %63 = phi i1 [ false, %49 ], [ %61, %55 ]
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  br label %49

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i8**, i8*** %3, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i8**, i8*** %3, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8**, i8*** %3, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  store i8 0, i8* %80, align 1
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i8**, i8*** %3, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i8**, i8*** %3, align 8
  store i8* null, i8** %88, align 8
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i8*, i8** %4, align 8
  store i8* %91, i8** %2, align 8
  br label %92

92:                                               ; preds = %90, %28, %11
  %93 = load i8*, i8** %2, align 8
  ret i8* %93
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
