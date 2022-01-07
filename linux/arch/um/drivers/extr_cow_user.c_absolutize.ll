; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_cow_user.c_absolutize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_cow_user.c_absolutize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"absolutize : unable to get cwd - errno = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"absolutize : Can't cd to '%s' - errno = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"absolutize : unable to get cwd of '%s' - errno = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"absolutize : unable to fit '%s' into %d chars\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @absolutize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @absolutize(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %12 = call i32* @getcwd(i8* %11, i32 256)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @chdir(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  store i8 47, i8* %28, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30)
  store i32 -1, i32* %4, align 4
  br label %92

32:                                               ; preds = %22
  %33 = load i8*, i8** %9, align 8
  store i8 47, i8* %33, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32* @getcwd(i8* %34, i32 %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  store i32 -1, i32* %4, align 4
  br label %92

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %43, %45
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %54)
  store i32 -1, i32* %4, align 4
  br label %92

56:                                               ; preds = %42
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcat(i8* %57, i8* %58)
  br label %83

60:                                               ; preds = %17
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %63, %65
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 %72)
  store i32 -1, i32* %4, align 4
  br label %92

74:                                               ; preds = %60
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcat(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @strcat(i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %74, %56
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %85 = call i64 @chdir(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 (i8*, ...) @cow_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %89)
  store i32 -1, i32* %4, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %87, %70, %52, %38, %27, %14
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i32 @cow_printf(i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
