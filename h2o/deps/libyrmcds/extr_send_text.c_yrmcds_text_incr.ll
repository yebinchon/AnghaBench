; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_yrmcds_text_incr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_yrmcds_text_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YRMCDS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@YRMCDS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"incr \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @yrmcds_text_incr(i32* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x i32], align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %6
  %25 = load i64, i64* @YRMCDS_BAD_ARGUMENT, align 8
  store i64 %25, i64* %7, align 8
  br label %53

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @check_key(i8* %27, i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @YRMCDS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %7, align 8
  br label %53

35:                                               ; preds = %26
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %37 = call i32 @textbuf_init(i32* %36)
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %39 = call i32 @textbuf_append_const_string(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @textbuf_append_string(i32* %40, i8* %41, i64 %42)
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %45 = call i32 @textbuf_append_char(i32* %44, i8 signext 32)
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @textbuf_append_uint64(i32* %46, i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %51 = load i32*, i32** %13, align 8
  %52 = call i64 @send_command(i32* %49, i32* %50, i32* %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %35, %33, %24
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

declare dso_local i64 @check_key(i8*, i64) #1

declare dso_local i32 @textbuf_init(i32*) #1

declare dso_local i32 @textbuf_append_const_string(i32*, i8*) #1

declare dso_local i32 @textbuf_append_string(i32*, i8*, i64) #1

declare dso_local i32 @textbuf_append_char(i32*, i8 signext) #1

declare dso_local i32 @textbuf_append_uint64(i32*, i32) #1

declare dso_local i64 @send_command(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
