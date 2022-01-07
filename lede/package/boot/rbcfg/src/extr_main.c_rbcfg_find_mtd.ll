; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_find_mtd.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_find_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/proc/mtd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mtd%d: %08x\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/dev/mtdblock%d\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rbcfg_find_mtd(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %19 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %73

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %36, %23
  br label %25

25:                                               ; preds = %24
  %26 = trunc i64 %16 to i32
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @fgets(i8* %18, i32 %26, i32* %27)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %69

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strstr(i8* %18, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %24

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %69

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 @stat(i8* %18, %struct.stat* %11)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %69

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @S_IFBLK, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %69

57:                                               ; preds = %50
  %58 = call i64 @strlen(i8* %18)
  %59 = add nsw i64 %58, 1
  %60 = call i8* @malloc(i64 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @strlen(i8* %18)
  %67 = add nsw i64 %66, 1
  %68 = call i32 @strncpy(i8* %65, i8* %18, i64 %67)
  br label %69

69:                                               ; preds = %64, %63, %56, %49, %42, %31
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %22
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i8*, i8** %3, align 8
  ret i8* %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strstr(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i8* @malloc(i64) #2

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
