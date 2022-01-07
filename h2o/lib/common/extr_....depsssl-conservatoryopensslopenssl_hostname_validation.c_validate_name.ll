; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_....depsssl-conservatoryopensslopenssl_hostname_validation.c_validate_name.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_....depsssl-conservatoryopensslopenssl_hostname_validation.c_validate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MalformedCertificate = common dso_local global i32 0, align 4
@MatchNotFound = common dso_local global i32 0, align 4
@MatchFound = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @validate_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_name(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @ASN1_STRING_data(i32* %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ASN1_STRING_length(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @has_nul(i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MalformedCertificate, align 4
  store i32 %21, i32* %3, align 4
  br label %93

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %25, %22
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 42
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %69

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %56, label %69

69:                                               ; preds = %66, %64
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %72, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %70, %46, %40, %37
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @MatchNotFound, align 4
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %75
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @memeq_ncase(i8* %82, i8* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @MatchFound, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @MatchNotFound, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %79, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @ASN1_STRING_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @has_nul(i8*, i32) #1

declare dso_local i64 @memeq_ncase(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
