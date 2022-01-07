; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_ensure_segment_validity.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_ensure_segment_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_FILELOCK_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8)* @ensure_segment_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_segment_validity(i8* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %11 = load i32, i32* @GIT_FILELOCK_EXTENSION, align 4
  %12 = call i64 @strlen(i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %71, %19
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  br label %74

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @is_valid_ref_char(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %97

38:                                               ; preds = %32
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %97

48:                                               ; preds = %42, %38
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 64
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 123
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %97

58:                                               ; preds = %52, %48
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 42
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8, i8* %5, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %97

67:                                               ; preds = %63
  store i8 0, i8* %5, align 1
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %7, align 1
  br label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %21

74:                                               ; preds = %31
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i32, i32* @GIT_FILELOCK_EXTENSION, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @memcmp(i8* %89, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %97

95:                                               ; preds = %84, %74
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %94, %66, %57, %47, %37, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @is_valid_ref_char(i8 signext) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
