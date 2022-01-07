; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_spec_err.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_spec_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [42 x i8] c"Token '%s' doesn't match specifier '%%%c'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Token already set for '%%%c' specifier.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Token for '%%%c' specifier is NULL.\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Missing braces '%s' and ignore chars for specifier '%%%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8, i8*)* @spec_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spec_err(%struct.TYPE_3__* %0, i32 %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %88 [
    i32 130, label %12
    i32 128, label %38
    i32 129, label %50
    i32 131, label %62
  ]

12:                                               ; preds = %4
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8
  br label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = load i8, i8* %7, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i32*, i32, i8*, ...) @snprintf(i32* null, i32 0, i8* %13, i8* %20, i32 %22)
  %24 = add nsw i32 %23, 1
  %25 = call i8* @xmalloc(i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i8*, i8** %8, align 8
  br label %33

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %32 ]
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* %27, i8* %34, i32 %36)
  br label %88

38:                                               ; preds = %4
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (i32*, i32, i8*, ...) @snprintf(i32* null, i32 0, i8* %39, i32 %41)
  %43 = add nsw i32 %42, 1
  %44 = call i8* @xmalloc(i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %7, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* %46, i32 %48)
  br label %88

50:                                               ; preds = %4
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (i32*, i32, i8*, ...) @snprintf(i32* null, i32 0, i8* %51, i32 %53)
  %55 = add nsw i32 %54, 1
  %56 = call i8* @xmalloc(i32 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* %58, i32 %60)
  br label %88

62:                                               ; preds = %4
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %68 ]
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 (i32*, i32, i8*, ...) @snprintf(i32* null, i32 0, i8* %63, i8* %70, i32 %72)
  %74 = add nsw i32 %73, 1
  %75 = call i8* @xmalloc(i32 %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i8*, i8** %8, align 8
  br label %83

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i8* [ %81, %80 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %82 ]
  %85 = load i8, i8* %7, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* %77, i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %4, %83, %50, %38, %33
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  ret i32 1
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
