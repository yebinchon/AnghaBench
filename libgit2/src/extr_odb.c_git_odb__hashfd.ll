; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashfd.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILEIO_BUFSIZE = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid object type for hash\00", align 1
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error reading file for hashing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb__hashfd(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @FILEIO_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @git_object_typeisloose(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %27 = call i32 @git_error_set(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %81

28:                                               ; preds = %4
  %29 = call i32 @git_hash_ctx_init(i32* %14)
  store i32 %29, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %81

33:                                               ; preds = %28
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @git_odb__format_object_header(i64* %10, i8* %34, i32 64, i64 %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %78

40:                                               ; preds = %33
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @git_hash_update(i32* %14, i8* %41, i64 %42)
  store i32 %43, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %78

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = trunc i64 %19 to i32
  %53 = call i64 @p_read(i32 %51, i8* %21, i32 %52)
  store i64 %53, i64* %15, align 8
  %54 = icmp ugt i64 %53, 0
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ false, %47 ], [ %54, %50 ]
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @git_hash_update(i32* %14, i8* %21, i64 %58)
  store i32 %59, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %78

62:                                               ; preds = %57
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %47

66:                                               ; preds = %55
  %67 = load i64, i64* %15, align 8
  %68 = icmp ult i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @GIT_ERROR_OS, align 4
  %74 = call i32 @git_error_set(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %16, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @git_hash_final(i32* %76, i32* %14)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %75, %72, %61, %45, %39
  %79 = call i32 @git_hash_ctx_cleanup(i32* %14)
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %81

81:                                               ; preds = %78, %31, %25
  %82 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_object_typeisloose(i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_hash_ctx_init(i32*) #2

declare dso_local i32 @git_odb__format_object_header(i64*, i8*, i32, i64, i32) #2

declare dso_local i32 @git_hash_update(i32*, i8*, i64) #2

declare dso_local i64 @p_read(i32, i8*, i32) #2

declare dso_local i32 @git_hash_final(i32*, i32*) #2

declare dso_local i32 @git_hash_ctx_cleanup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
