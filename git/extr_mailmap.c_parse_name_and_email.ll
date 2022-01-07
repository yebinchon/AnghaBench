; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_parse_name_and_email.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_parse_name_and_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i8**, i32)* @parse_name_and_email to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_name_and_email(i8* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8**, i8*** %8, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8**, i8*** %7, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 60)
  store i8* %17, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %94

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i8* @strchr(i8* %22, i8 signext 62)
  store i8* %23, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %94

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %94

35:                                               ; preds = %29, %26
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %48, %35
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  br label %37

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %65, %51
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isspace(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i1 [ false, %54 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %13, align 8
  br label %54

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ule i8* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i8*, i8** %12, align 8
  br label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i8* [ %73, %72 ], [ null, %74 ]
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8**, i8*** %8, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %11, align 8
  store i8 0, i8* %83, align 1
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %92

90:                                               ; preds = %75
  %91 = load i8*, i8** %11, align 8
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i8* [ null, %89 ], [ %91, %90 ]
  store i8* %93, i8** %5, align 8
  br label %94

94:                                               ; preds = %92, %34, %25, %19
  %95 = load i8*, i8** %5, align 8
  ret i8* %95
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
