; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_kwrite.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_kwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@EINTR = common dso_local global i32 0, align 4
@S_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kwrite(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %17 = getelementptr inbounds i8, i8* %16, i64 100
  store i8* %17, i8** %10, align 8
  %18 = call i32 @time(i32* null)
  %19 = call i32 @kwrite_print_int(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 %18)
  %20 = call i32 (...) @getpid()
  %21 = call i32 @kwrite_print_int(i8** %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3, i32 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %24 = icmp uge i8* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %28 = getelementptr inbounds i8, i8* %27, i64 100
  %29 = load i8*, i8** %10, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %67, %3
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  store i32 0, i32* @errno, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @write(i32 %40, i8* %41, i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EINTR, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* @errno, align 4
  %52 = load i64, i64* %13, align 8
  store i64 %52, i64* %4, align 8
  br label %104

53:                                               ; preds = %46, %39
  %54 = load i64, i64* %13, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %68

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i64, i64* %13, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8* %63, i8** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %60, %57
  br label %36

68:                                               ; preds = %56, %36
  br label %69

69:                                               ; preds = %100, %68
  %70 = load i64, i64* %7, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %69
  store i32 0, i32* @errno, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @write(i32 %73, i8* %74, i64 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i32, i32* @errno, align 4
  %81 = load i32, i32* @EINTR, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* @errno, align 4
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %4, align 8
  br label %104

86:                                               ; preds = %79, %72
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %101

90:                                               ; preds = %86
  %91 = load i64, i64* %14, align 8
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr i8, i8* %95, i64 %94
  store i8* %96, i8** %6, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %7, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %93, %90
  br label %69

101:                                              ; preds = %89, %69
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* @errno, align 4
  %103 = load i64, i64* %12, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %101, %83, %50
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local i32 @kwrite_print_int(i8**, i8*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
