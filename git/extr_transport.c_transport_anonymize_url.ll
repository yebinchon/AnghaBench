; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_anonymize_url.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_anonymize_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%.*s%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @transport_anonymize_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 64)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @url_is_local_not_ssh(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %1
  br label %80

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %80

31:                                               ; preds = %26
  br label %72

32:                                               ; preds = %18
  %33 = load i8*, i8** %3, align 8
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %51, %32
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %43 [
    i32 43, label %42
    i32 46, label %42
    i32 45, label %42
  ]

42:                                               ; preds = %38, %38, %38
  br label %50

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @isalnum(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %50

49:                                               ; preds = %43
  br label %80

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  br label %34

54:                                               ; preds = %34
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = call i8* @strchr(i8* %56, i8 signext 47)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %80

65:                                               ; preds = %60, %54
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = add nsw i64 %70, 3
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %65, %31
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i8*, i8** %5, align 8
  %79 = call i8* @xstrfmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %74, i8* %75, i32 %77, i8* %78)
  store i8* %79, i8** %2, align 8
  br label %83

80:                                               ; preds = %64, %49, %30, %17
  %81 = load i8*, i8** %3, align 8
  %82 = call i8* @xstrdup(i8* %81)
  store i8* %82, i8** %2, align 8
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i8*, i8** %2, align 8
  ret i8* %84
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @url_is_local_not_ssh(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
