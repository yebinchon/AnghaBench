; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_malloc_io.c_u2s.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_malloc_io.c_u2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U2S_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32, i8*, i64*)* @u2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @u2s(i64 %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i32, i32* @U2S_BUFSIZE, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %62 [
    i32 10, label %21
    i32 16, label %39
  ]

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %11, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %6, align 8
  %26 = urem i64 %25, 10
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %28, i8* %32, align 1
  %33 = load i64, i64* %6, align 8
  %34 = udiv i64 %33, 10
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %22, label %38

38:                                               ; preds = %35
  br label %98

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)
  store i8* %43, i8** %12, align 8
  br label %44

44:                                               ; preds = %58, %39
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %11, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %6, align 8
  %49 = and i64 %48, 15
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = load i64, i64* %6, align 8
  %57 = lshr i64 %56, 4
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %44
  %59 = load i64, i64* %6, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %44, label %61

61:                                               ; preds = %58
  br label %98

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)
  store i8* %66, i8** %13, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp uge i32 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp ule i32 %70, 36
  br label %72

72:                                               ; preds = %69, %62
  %73 = phi i1 [ false, %62 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  br label %76

76:                                               ; preds = %94, %72
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = urem i64 %80, %82
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %6, align 8
  %93 = udiv i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %76
  %95 = load i64, i64* %6, align 8
  %96 = icmp ugt i64 %95, 0
  br i1 %96, label %76, label %97

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %61, %38
  %99 = load i32, i32* @U2S_BUFSIZE, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = sub i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = load i64*, i64** %10, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  ret i8* %108
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
