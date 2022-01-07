; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_open_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fnames = common dso_local global i8** null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: cannot open %s: %m\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@fsize = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: cannot seek %s: %m\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"opened file %s, fd=%d, size=%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_file(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = load i8**, i8*** @fnames, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  store i8* %8, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @O_RDONLY, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %19, %16 ], [ %21, %20 ]
  %24 = call i32 @open(i8* %13, i32 %23, i32 384)
  %25 = load i32*, i32** @fd, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load i32*, i32** @fd, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load i32*, i32** @fd, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @progname, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  br label %50

50:                                               ; preds = %45, %38
  store i32 -1, i32* %4, align 4
  br label %118

51:                                               ; preds = %31, %22
  %52 = load i32*, i32** @fd, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** @progname, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %51
  %65 = load i32*, i32** @fd, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SEEK_END, align 4
  %71 = call i64 @lseek(i32 %69, i32 0, i32 %70)
  %72 = load i64*, i64** @fsize, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  %76 = load i64*, i64** @fsize, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %64
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8*, i8** @progname, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  %87 = call i32 @exit(i32 2) #3
  unreachable

88:                                               ; preds = %64
  %89 = load i32*, i32** @fd, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i64 @lseek(i32 %93, i32 0, i32 %94)
  %96 = load i64, i64* @verbosity, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %88
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = load i32*, i32** @fd, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i64*, i64** @fsize, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %98, %88
  %113 = load i32*, i32** @fd, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %50
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
