; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_extract_how_many.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_extract_how_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*)* @extract_how_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_how_many(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %11, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 94
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 126
  br label %32

32:                                               ; preds = %24, %3
  %33 = phi i1 [ true, %3 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %107, %32
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %11, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i8, i8* %11, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 126
  br label %57

57:                                               ; preds = %53, %43
  %58 = phi i1 [ false, %43 ], [ %56, %53 ]
  br i1 %58, label %37, label %59

59:                                               ; preds = %57
  %60 = load i8*, i8** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @git__isdigit(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load i8*, i8** %6, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8*, i8** %6, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i32 @strlen(i8* %75)
  %77 = call i64 @git__strntol32(i32* %9, i8* %71, i32 %76, i8** %8, i32 10)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %80, i32* %4, align 4
  br label %112

81:                                               ; preds = %67
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = load i64*, i64** %7, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %59
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %6, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i8, i8* %11, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 126
  br label %107

107:                                              ; preds = %103, %93
  %108 = phi i1 [ false, %93 ], [ %106, %103 ]
  br i1 %108, label %36, label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %109, %79
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git__isdigit(i8 signext) #1

declare dso_local i64 @git__strntol32(i32*, i8*, i32, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
