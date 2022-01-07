; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_yrmcds_text_remove.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_yrmcds_text_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YRMCDS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@YRMCDS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"delete \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @yrmcds_text_remove(i32* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x i32], align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %5
  %23 = load i64, i64* @YRMCDS_BAD_ARGUMENT, align 8
  store i64 %23, i64* %6, align 8
  br label %46

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @check_key(i8* %25, i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @YRMCDS_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* %12, align 8
  store i64 %32, i64* %6, align 8
  br label %46

33:                                               ; preds = %24
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %35 = call i32 @textbuf_init(i32* %34)
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %37 = call i32 @textbuf_append_const_string(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @textbuf_append_string(i32* %38, i8* %39, i64 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @send_command(i32* %42, i32* %43, i32* %44)
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %33, %31, %22
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

declare dso_local i64 @check_key(i8*, i64) #1

declare dso_local i32 @textbuf_init(i32*) #1

declare dso_local i32 @textbuf_append_const_string(i32*, i8*) #1

declare dso_local i32 @textbuf_append_string(i32*, i8*, i64) #1

declare dso_local i64 @send_command(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
