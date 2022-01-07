; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_quit.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quiet = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"request serial = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_quit(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @quiet, align 4
  %12 = call i32 @yrmcds_quit(i32* %10, i32 %11, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @CHECK_ERROR(i32 %13)
  %15 = load i64, i64* @debug, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @quiet, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %27 = call i32 @yrmcds_recv(i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @CHECK_ERROR(i32 %28)
  %30 = load i64, i64* @debug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %34 = call i32 @print_response(i32* %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %37 = call i32 @CHECK_RESPONSE(i32* %36)
  br label %38

38:                                               ; preds = %35, %21
  ret i32 0
}

declare dso_local i32 @yrmcds_quit(i32*, i32, i32*) #1

declare dso_local i32 @CHECK_ERROR(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @yrmcds_recv(i32*, i32*) #1

declare dso_local i32 @print_response(i32*) #1

declare dso_local i32 @CHECK_RESPONSE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
