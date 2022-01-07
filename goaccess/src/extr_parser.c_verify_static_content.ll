; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_verify_static_content.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_verify_static_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8**, i64 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @verify_static_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_static_content(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8* %13, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %81, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %24
  br label %81

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 3), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 63)
  store i8* %45, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @strncasecmp(i8* %62, i8* %63, i32 %64)
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %85

68:                                               ; preds = %56
  br label %81

69:                                               ; preds = %47, %43, %38
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @strncasecmp(i8* %74, i8* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %85

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %68, %37
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %20

84:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %67, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
