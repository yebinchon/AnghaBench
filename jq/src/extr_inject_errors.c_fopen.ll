; ModuleID = '/home/carl/AnghaBench/jq/src/extr_inject_errors.c_fopen.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_inject_errors.c_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fail_close = common dso_local global i8* null, align 8
@fail_write = common dso_local global i8* null, align 8
@fail_read = common dso_local global i32* null, align 8
@fail = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fail_read\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fail_write\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fail_write_enospc\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"fail_close\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"fail_close_enospc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @GET_REAL(i32* (i8*, i8*)* @fopen)
  store i8* null, i8** @fail_close, align 8
  store i8* null, i8** @fail_write, align 8
  store i32* null, i32** @fail_read, align 8
  store i32* null, i32** @fail, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @real_fopen(i8* %7, i8* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* @EIO, align 4
  store i32 %10, i32* @error, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** @fail_read, align 8
  store i32* %15, i32** @fail, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to i8*
  store i8* %22, i8** @fail_write, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** @fail, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOSPC, align 4
  store i32 %28, i32* @error, align 4
  br label %29

29:                                               ; preds = %27, %20
  br label %45

30:                                               ; preds = %16
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = bitcast i32* %35 to i8*
  store i8* %36, i8** @fail_close, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @fail, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOSPC, align 4
  store i32 %42, i32* @error, align 4
  br label %43

43:                                               ; preds = %41, %34
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i32 @GET_REAL(i32* (i8*, i8*)*) #1

declare dso_local i32* @real_fopen(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
