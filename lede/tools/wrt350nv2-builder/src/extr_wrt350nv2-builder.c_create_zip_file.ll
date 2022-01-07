; ModuleID = '/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_wrt350nv2-builder.c_create_zip_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_wrt350nv2-builder.c_create_zip_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"create_zip_file: can not allocate %i bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"zip \22%s\22 \22%s\22\00", align 1
@DEBUG_LVL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c" extending buffer to %i bytes\0A\00", align 1
@DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"create_zip_file: can not execute %s bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_zip_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 1000, i64* %7, align 8
  store i8* null, i8** %6, align 8
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %7, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %53

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %53

36:                                               ; preds = %30, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  br label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = mul i64 %44, 2
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  store i8* null, i8** %6, align 8
  %49 = load i32, i32* @DEBUG_LVL2, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 (i32, i8*, ...) @lprintf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %46
  br i1 true, label %9, label %53

53:                                               ; preds = %52, %35, %18
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @DEBUG, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (i32, i8*, ...) @lprintf(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @system(i8* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @WEXITSTATUS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %56
  store i32 1, i32* %5, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lprintf(i32, i8*, ...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
