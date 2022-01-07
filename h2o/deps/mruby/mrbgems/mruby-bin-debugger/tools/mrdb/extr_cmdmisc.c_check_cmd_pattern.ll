; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_check_cmd_pattern.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_check_cmd_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_cmd_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cmd_pattern(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %3, align 4
  br label %97

17:                                               ; preds = %12, %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %97

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 91)
  store i8* %27, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %25
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 93)
  store i8* %38, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %97

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @strncmp(i8* %43, i8* %44, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %97

55:                                               ; preds = %42
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %86, %55
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  br i1 %75, label %76, label %91

76:                                               ; preds = %74
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %91

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  br label %65

91:                                               ; preds = %84, %74
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %53, %40, %29, %23, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
