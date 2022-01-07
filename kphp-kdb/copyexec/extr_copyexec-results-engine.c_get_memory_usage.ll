; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_get_memory_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_get_memory_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/proc/self/statm\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"/proc/self/statm: %s\0A\00", align 1
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_memory_usage(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64*, i64** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i64* %12, i32 0, i32 %16)
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %109

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %27 = call i32 @read(i32 %25, i8* %26, i32 1024)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %24
  br label %38

37:                                               ; preds = %34
  br i1 true, label %24, label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @close(i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %39

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 1024
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  store i32 -1, i32* %3, align 4
  br label %109

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %63 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @_SC_PAGESIZE, align 4
  %65 = call i64 @sysconf(i32 %64)
  store i64 %65, i64* %11, align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %66, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %105, %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = call i32 @sscanf(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %76)
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %109

80:                                               ; preds = %71
  %81 = load i64, i64* %11, align 8
  %82 = load i64*, i64** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = mul nsw i64 %86, %81
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %101, %80
  %89 = load i8*, i8** %7, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @isspace(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %93, %88
  %100 = phi i1 [ false, %88 ], [ %98, %93 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  br label %88

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %67

108:                                              ; preds = %67
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %79, %57, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
