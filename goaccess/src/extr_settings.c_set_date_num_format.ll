; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_set_date_num_format.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_set_date_num_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%Y%m%d\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"Yy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%%Y\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hbmB\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%%m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_date_num_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_date_num_format() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i8* (...) @set_format_date()
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %82

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @is_date_abbreviated(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @free(i8* %15)
  %17 = call i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %82

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @xcalloc(i32 %22, i32 1)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strpbrk(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i64 @snprintf(i8* %31, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %27, %18
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strpbrk(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i64 @snprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %44, %40
  %58 = load i8*, i8** %2, align 8
  %59 = call i64 @strpbrk(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i64 @snprintf(i8* %65, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %61, %57
  %75 = load i8*, i8** %3, align 8
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %74, %14, %9
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i8* @set_format_date(...) #1

declare dso_local i64 @is_date_abbreviated(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i64 @strpbrk(i8*, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
