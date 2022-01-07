; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_get_next_key.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YOML_TYPE_SCALAR = common dso_local global i32 0, align 4
@YOML_TYPE_SEQUENCE = common dso_local global i32 0, align 4
@YOML_TYPE_MAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"detected invalid or missing type specifier; input is: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @get_next_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_next_key(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %75

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @h2o_iovec_init(i8* %15, i32 %21)
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %71, %14
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %69 [
    i32 44, label %36
    i32 115, label %39
    i32 97, label %45
    i32 109, label %51
    i32 42, label %57
  ]

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %4, align 8
  br label %78

39:                                               ; preds = %32
  %40 = load i32, i32* @YOML_TYPE_SCALAR, align 4
  %41 = shl i32 1, %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %70

45:                                               ; preds = %32
  %46 = load i32, i32* @YOML_TYPE_SEQUENCE, align 4
  %47 = shl i32 1, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %70

51:                                               ; preds = %32
  %52 = load i32, i32* @YOML_TYPE_MAPPING, align 4
  %53 = shl i32 1, %52
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %70

57:                                               ; preds = %32
  %58 = load i32, i32* @YOML_TYPE_SCALAR, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* @YOML_TYPE_SEQUENCE, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @YOML_TYPE_MAPPING, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %70

69:                                               ; preds = %32
  br label %75

70:                                               ; preds = %57, %51, %45, %39
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %27

74:                                               ; preds = %27
  store i8* null, i8** %4, align 8
  br label %78

75:                                               ; preds = %69, %13
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @h2o_fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %74, %36
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @h2o_iovec_init(i8*, i32) #1

declare dso_local i32 @h2o_fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
