; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_lcopy_attrs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_lcopy_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"chmod for %s failed. %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"lchown for %s failed. %m\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"lutimes for %s failed. %m\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"utimes for %s failed. %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcopy_attrs(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca [2 x %struct.timeval], align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %8 = load %struct.stat*, %struct.stat** %5, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @S_ISLNK(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.stat*, %struct.stat** %5, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @chmod(i8* %14, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %3, align 4
  br label %78

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stat*, %struct.stat** %5, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @lchown(i8* %25, i32 %28, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %3, align 4
  br label %78

37:                                               ; preds = %24
  %38 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %39 = call i32 @memset(%struct.timeval* %38, i32 0, i32 8)
  %40 = load %struct.stat*, %struct.stat** %5, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.stat*, %struct.stat** %5, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 1
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* @errno, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %52 = call i64 @lutimes(i8* %50, %struct.timeval* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %37
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @ENOSYS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.stat*, %struct.stat** %5, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @S_ISLNK(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %70 = call i64 @utimes(i8* %68, %struct.timeval* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  store i32 -3, i32* %3, align 4
  br label %78

75:                                               ; preds = %67
  store i32 0, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %78

76:                                               ; preds = %61, %54
  store i32 -2, i32* %3, align 4
  br label %78

77:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %75, %72, %34, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i64 @lchown(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i64 @lutimes(i8*, %struct.timeval*) #1

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
