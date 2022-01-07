; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_mtd_open.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_mtd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/proc/mtd\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mtd%d:\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/dev/mtd%s/%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/dev/mtd%s%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_open(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_SYNC, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = trunc i64 %22 to i32
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %66, %29
  %31 = trunc i64 %15 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @fgets(i8* %17, i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %30
  %36 = call i64 @sscanf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = call i64 @strstr(i8* %17, i8* %23)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = trunc i64 %15 to i32
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @open(i8* %17, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = trunc i64 %15 to i32
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @open(i8* %17, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %52, %41
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @fclose(i32* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

66:                                               ; preds = %38, %35
  br label %30

67:                                               ; preds = %30
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fclose(i32* %68)
  br label %70

70:                                               ; preds = %67, %2
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @open(i8* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @sscanf(i8*, i8*, i32*) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
