; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_check_or_sanitize_refname.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_check_or_sanitize_refname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.strbuf*)* @check_or_sanitize_refname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_or_sanitize_refname(i8* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %15 = icmp ne %struct.strbuf* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %18 = call i32 @strbuf_addch(%struct.strbuf* %17, i8 signext 45)
  br label %20

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %90

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %3
  br label %22

22:                                               ; preds = %21, %59
  %23 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %24 = icmp ne %struct.strbuf* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %32 = call i32 @strbuf_complete(%struct.strbuf* %31, i8 signext 47)
  br label %33

33:                                               ; preds = %30, %25, %22
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %36 = call i32 @check_refname_component(i8* %34, i32* %6, %struct.strbuf* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %38 = icmp ne %struct.strbuf* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %48

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %90

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %65

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i8*, i8** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %5, align 8
  br label %22

65:                                               ; preds = %58
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %76 = icmp ne %struct.strbuf* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %79

78:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %90

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %90

89:                                               ; preds = %85, %80
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %88, %78, %46, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @check_refname_component(i8*, i32*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
