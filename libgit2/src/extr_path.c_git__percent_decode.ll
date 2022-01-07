; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git__percent_decode.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git__percent_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__percent_decode(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ false, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_buf_clear(i32* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %81, %16
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %84

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %10, align 1
  %35 = load i8, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 37
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %74

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 2
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %74

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @git__fromhex(i8 signext %51)
  store i32 %52, i32* %7, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @git__fromhex(i8 signext %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %45
  br label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %68, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %10, align 1
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %66, %65, %44, %38
  %75 = load i32*, i32** %4, align 8
  %76 = load i8, i8* %10, align 1
  %77 = call i64 @git_buf_putc(i32* %75, i8 signext %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %85

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %25

84:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git__fromhex(i8 signext) #1

declare dso_local i64 @git_buf_putc(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
