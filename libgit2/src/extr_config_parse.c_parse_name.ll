; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"invalid configuration key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32*, i8*)* @parse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_name(i8** %0, i8** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8**, i8*** %6, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8**, i8*** %7, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %27, %4
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @is_namechar(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  br label %15

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @set_parse_error(i32* %35, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

37:                                               ; preds = %30
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @git__isspace(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 61
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  br label %71

63:                                               ; preds = %54
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @set_parse_error(i32* %68, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i8* @git__strndup(i8* %72, i32 %78)
  %80 = load i8**, i8*** %6, align 8
  store i8* %79, i8** %80, align 8
  %81 = icmp eq i8* %79, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 -1, i32* %5, align 4
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %82, %67, %34
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @is_namechar(i8 signext) #1

declare dso_local i32 @set_parse_error(i32*, i32, i8*) #1

declare dso_local i64 @git__isspace(i8 signext) #1

declare dso_local i8* @git__strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
