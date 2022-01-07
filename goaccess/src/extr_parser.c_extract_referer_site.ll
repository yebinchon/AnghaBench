; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_referer_site.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_referer_site.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@REF_SITE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @extract_referer_site to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_referer_site(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 1, i32* %3, align 4
  br label %67

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %64

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %64

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @REF_SITE_LEN, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @REF_SITE_LEN, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @memcpy(i8* %54, i8* %55, i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @free(i8* %62)
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; preds = %46, %31, %24
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %53, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
