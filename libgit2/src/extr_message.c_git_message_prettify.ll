; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_message.c_git_message_prettify.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_message.c_git_message_prettify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_message_prettify(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = call i32 @git_buf_sanitize(%struct.TYPE_7__* %17)
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %94, %4
  %20 = load i64, i64* %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub i64 %28, %29
  %31 = call i8* @memchr(i8* %27, i8 signext 10, i64 %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = ptrtoint i8* %35 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %12, align 8
  br label %47

43:                                               ; preds = %24
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %94

63:                                               ; preds = %53, %50, %47
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @line_length_without_trailing_spaces(i8* %66, i64 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %94

74:                                               ; preds = %63
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = call i32 @git_buf_putc(%struct.TYPE_7__* %83, i8 signext 10)
  br label %85

85:                                               ; preds = %82, %77, %74
  store i32 0, i32* %10, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @git_buf_put(%struct.TYPE_7__* %86, i8* %89, i64 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = call i32 @git_buf_putc(%struct.TYPE_7__* %92, i8 signext 10)
  br label %94

94:                                               ; preds = %85, %71, %62
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %19

98:                                               ; preds = %19
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = call i64 @git_buf_oom(%struct.TYPE_7__* %99)
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 -1, i32 0
  ret i32 %103
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_buf_sanitize(%struct.TYPE_7__*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @line_length_without_trailing_spaces(i8*, i64) #1

declare dso_local i32 @git_buf_putc(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @git_buf_put(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i64 @git_buf_oom(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
