; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_ip_in_range.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_ip_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8** }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_in_range(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %78, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %81

12:                                               ; preds = %8
  store i8* null, i8** %5, align 8
  %13 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %12
  br label %78

29:                                               ; preds = %19
  %30 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @xstrdup(i8* %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 45)
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i8*, i8** %6, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i8*, i8** %5, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @free(i8* %55)
  store i32 1, i32* %2, align 4
  br label %82

57:                                               ; preds = %49
  br label %75

58:                                               ; preds = %46, %43
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i8*, i8** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @within_range(i8* %65, i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @free(i8* %71)
  store i32 1, i32* %2, align 4
  br label %82

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %61, %58
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %75, %28
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %8

81:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %70, %54
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @within_range(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
