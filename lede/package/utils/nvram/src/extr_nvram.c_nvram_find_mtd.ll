; ModuleID = '/home/carl/AnghaBench/lede/package/utils/nvram/src/extr_nvram.c_nvram_find_mtd.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/nvram/src/extr_nvram.c_nvram_find_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/proc/mtd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mtd%d: %08x\00", align 1
@nvram_part_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"/dev/mtdblock%d\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvram_find_mtd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %12 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %51, %14
  %16 = trunc i64 %9 to i32
  %17 = load i32*, i32** %1, align 8
  %18 = call i64 @fgets(i8* %11, i32 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = call i64 @strstr(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = call i64 @sscanf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %2, i32* %3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* @nvram_part_size, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = call i32 @stat(i8* %11, %struct.stat* %7)
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IFBLK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = call i64 @strlen(i8* %11)
  %40 = add nsw i64 %39, 1
  %41 = call i64 @malloc(i64 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %11)
  %47 = add nsw i64 %46, 1
  %48 = call i32 @strncpy(i8* %45, i8* %11, i64 %47)
  br label %52

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %32, %26
  br label %51

51:                                               ; preds = %50, %23, %20
  br label %15

52:                                               ; preds = %44, %15
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %52, %0
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i8* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i64 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

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
