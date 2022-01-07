; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_resident_set_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_resident_set_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/proc/self/stat\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_resident_set_memory(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINTR, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %10, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @UV__ERR(i64 %26)
  store i32 %27, i32* %2, align 4
  br label %105

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %32 = call i32 @read(i32 %30, i8* %31, i32 1023)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %29, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @uv__close(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @UV__ERR(i64 %48)
  store i32 %49, i32* %2, align 4
  br label %105

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %55 = call i8* @strchr(i8* %54, i8 signext 32)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %103

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 40
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %103

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 41)
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %103

73:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %75, 22
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i8* @strchr(i8* %79, i8 signext 32)
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %103

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %74

88:                                               ; preds = %74
  store i64 0, i64* @errno, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @strtol(i8* %89, i32* null, i32 10)
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* @errno, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %103

94:                                               ; preds = %88
  %95 = load i64, i64* %7, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %103

98:                                               ; preds = %94
  %99 = load i64, i64* %7, align 8
  %100 = call i64 (...) @getpagesize()
  %101 = mul nsw i64 %99, %100
  %102 = load i64*, i64** %3, align 8
  store i64 %101, i64* %102, align 8
  store i32 0, i32* %2, align 4
  br label %105

103:                                              ; preds = %97, %93, %83, %72, %66, %58
  %104 = load i32, i32* @UV_EINVAL, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %98, %47, %25
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @getpagesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
