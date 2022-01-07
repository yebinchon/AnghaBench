; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_strbuf_utf8_align.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_strbuf_utf8_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@ALIGN_LEFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@ALIGN_MIDDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%*s%-*s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ALIGN_RIGHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_utf8_align(%struct.strbuf* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @utf8_strnwidth(i8* %15, i32 %16, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %25, i8* %26)
  br label %70

28:                                               ; preds = %4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @ALIGN_LEFT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %34, %35
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (%struct.strbuf*, i8*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  br label %70

39:                                               ; preds = %28
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @ALIGN_MIDDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %44, %45
  %47 = udiv i32 %46, 2
  store i32 %47, i32* %12, align 4
  %48 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %52, %53
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (%struct.strbuf*, i8*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %55)
  br label %69

57:                                               ; preds = %39
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @ALIGN_RIGHT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %63, %64
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 (%struct.strbuf*, i8*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %61, %57
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %24, %69, %32
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @utf8_strnwidth(i8*, i32, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
