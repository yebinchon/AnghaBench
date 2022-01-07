; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_truncate.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_truncate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot open file %s: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot stat file %s: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s is not a regular file\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"truncate position %lld after end of file\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"truncate position %lld before start of file\0A\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"cannot truncate file %s at position %lld: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %117

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 2
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strtoll(i8* %17, i8** %6, i32 0)
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26, %21, %14
  %33 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %117

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @O_WRONLY, align 4
  %39 = call i32 @open(i8* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 1, i32* %3, align 4
  br label %117

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @fstat(i32 %49, %struct.stat* %7)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i32 1, i32* %3, align 4
  br label %117

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @S_ISREG(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  store i32 1, i32* %3, align 4
  br label %117

69:                                               ; preds = %58
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  store i32 2, i32* %3, align 4
  br label %117

78:                                               ; preds = %69
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 0, %81
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @stderr, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  store i32 2, i32* %3, align 4
  br label %117

88:                                               ; preds = %78
  %89 = load i64, i64* %9, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @F_WRLCK, align 4
  %99 = call i64 @lock_whole_file(i32 %97, i32 %98)
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %117

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = load i64, i64* %9, align 8
  %105 = call i64 @ftruncate(i32 %103, i64 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %111, i64 %112)
  br label %114

114:                                              ; preds = %107, %102
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @close(i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %101, %84, %74, %63, %52, %42, %32, %12
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
