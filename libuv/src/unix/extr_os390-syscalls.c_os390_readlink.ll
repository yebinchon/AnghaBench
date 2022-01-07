; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_os390_readlink.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_os390_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/$\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os390_readlink(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @uv__malloc(i64 %23)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %113

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @readlink(i8* %30, i8* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @uv__free(i8* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %113

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44, i32 2)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %40
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @uv__free(i8* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %113

55:                                               ; preds = %43
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i8* @strchr(i8* %61, i8 signext 47)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = call i8* @strchr(i8* %67, i8 signext 0)
  store i8* %68, i8** %11, align 8
  br label %69

69:                                               ; preds = %65, %55
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %12, align 1
  %72 = load i8*, i8** %11, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %13, align 8
  %74 = call i32* @realpath(i8* %73, i8* %21)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @uv__free(i8* %77)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %113

79:                                               ; preds = %69
  %80 = load i32, i32* @PATH_MAX, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %21, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8, i8* %12, align 1
  %84 = load i8*, i8** %11, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @strlen(i8* %85)
  store i32 %86, i32* %10, align 4
  %87 = call i32 @strlen(i8* %21)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %7, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @uv__free(i8* %96)
  %98 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %98, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %113

99:                                               ; preds = %79
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @memcpy(i8* %100, i8* %21, i32 %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @memcpy(i8* %106, i8* %107, i32 %108)
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @uv__free(i8* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %113

113:                                              ; preds = %99, %95, %76, %47, %36, %27
  %114 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @uv__malloc(i64) #2

declare dso_local i32 @readlink(i8*, i8*, i64) #2

declare dso_local i32 @uv__free(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
