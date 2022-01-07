; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_on_last_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_on_last_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINLOG_POSITION = common dso_local global i64 0, align 8
@LAST_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected size %lld, found %lld\0A\00", align 1
@on_last_size.buf = internal global [1024 x i8] zeroinitializer, align 16
@BINLOG_NAME_LEN = common dso_local global i32 0, align 4
@BINLOG_NAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Can not delete previous link: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Can not create link: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_last_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @BINLOG_POSITION, align 8
  %4 = load i64, i64* @LAST_SIZE, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = load i64, i64* @LAST_SIZE, align 8
  %9 = load i64, i64* @BINLOG_POSITION, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %9)
  br label %67

11:                                               ; preds = %0
  %12 = load i32, i32* @BINLOG_NAME_LEN, align 4
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @BINLOG_NAME, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sub nsw i32 %14, 7
  %16 = call i32 @memcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @on_last_size.buf, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = sub nsw i32 %17, 7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* @on_last_size.buf, i64 0, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i32, i32* @BINLOG_NAME, align 4
  %22 = call i32 @link(i32 %21, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @on_last_size.buf, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %11
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EEXIST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = call i32 @unlink(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @on_last_size.buf, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* @BINLOG_NAME, align 4
  %42 = call i32 @link(i32 %41, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @on_last_size.buf, i64 0, i64 0))
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %45, %40
  br label %60

53:                                               ; preds = %25
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %53, %52
  br label %61

61:                                               ; preds = %60, %11
  %62 = load i64, i64* @BINLOG_POSITION, align 8
  %63 = load i64, i64* @LAST_SIZE, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  br label %67

67:                                               ; preds = %61, %6
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @link(i32, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
