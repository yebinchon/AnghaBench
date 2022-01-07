; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_utils.c_open_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_utils.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_inited = common dso_local global i32 0, align 4
@fnames = common dso_local global i8** null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
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
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @f_inited, align 4
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 0, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @f_inited, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ false, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8**, i8*** @fnames, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %21, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load i32, i32* @O_RDWR, align 4
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @O_TRUNC, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %28
  br label %41

39:                                               ; preds = %17
  %40 = load i32, i32* @O_RDONLY, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @open(i8* %42, i32 %43, i32 384)
  %45 = load i32*, i32** @fd, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %41
  %52 = load i32*, i32** @fd, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i32*, i32** @fd, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @progname, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %58
  store i32 -1, i32* %4, align 4
  br label %138

71:                                               ; preds = %51, %41
  %72 = load i32*, i32** @fd, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8*, i8** @progname, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %81)
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %71
  %85 = load i32*, i32** @fd, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SEEK_END, align 4
  %91 = call i64 @lseek(i32 %89, i32 0, i32 %90)
  %92 = load i64*, i64** @fsize, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %91, i64* %95, align 8
  %96 = load i64*, i64** @fsize, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %84
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** @progname, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %104, i8* %105)
  %107 = call i32 @exit(i32 2) #3
  unreachable

108:                                              ; preds = %84
  %109 = load i32*, i32** @fd, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i64 @lseek(i32 %113, i32 0, i32 %114)
  %116 = load i64, i64* @verbosity, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %108
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = load i32*, i32** @fd, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i64*, i64** @fsize, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %120, i32 %125, i64 %130)
  br label %132

132:                                              ; preds = %118, %108
  %133 = load i32*, i32** @fd, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %132, %70
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @assert(i32) #1

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
