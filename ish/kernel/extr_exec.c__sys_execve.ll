; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c__sys_execve.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c__sys_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@ARGV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"execve(\22%s\22, {\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\22%s\22, \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"})\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sys_execve(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = trunc i64 %16 to i32
  %21 = call i64 @user_read_string(i32 %19, i8* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @_EFAULT, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %97

25:                                               ; preds = %3
  %26 = load i32, i32* @_ENOMEM, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @ARGV_MAX, align 4
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %93

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* @ARGV_MAX, align 4
  %36 = call i32 @user_read_string_array(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %93

40:                                               ; preds = %32
  %41 = load i32, i32* @ARGV_MAX, align 4
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %90

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* @ARGV_MAX, align 4
  %50 = call i32 @user_read_string_array(i32 %47, i8* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %90

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @STRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18)
  %56 = load i8*, i8** %12, align 8
  store i8* %56, i8** %14, align 8
  br label %57

57:                                               ; preds = %62, %54
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 (i8*, ...) @STRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %14, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %14, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load i8*, i8** %13, align 8
  store i8* %71, i8** %14, align 8
  br label %72

72:                                               ; preds = %77, %70
  %73 = load i8*, i8** %14, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 (i8*, ...) @STRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = add nsw i64 %81, 1
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %14, align 8
  br label %72

85:                                               ; preds = %72
  %86 = call i32 (i8*, ...) @STRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @sys_execve(i8* %18, i8* %87, i8* %88)
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %97

90:                                               ; preds = %53, %45
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %90, %39, %31
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %85, %23
  %98 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @user_read_string_array(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sys_execve(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
