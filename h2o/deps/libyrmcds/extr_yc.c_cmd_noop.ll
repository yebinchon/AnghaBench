; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_noop.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"request serial = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_noop(i32 %0, i8** %1, i32* %2) #0 {
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
  %11 = call i32 @yrmcds_noop(i32* %10, i32* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @CHECK_ERROR(i32 %12)
  %14 = load i64, i64* @debug, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %23 = call i32 @yrmcds_recv(i32* %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @CHECK_ERROR(i32 %24)
  %26 = load i64, i64* @debug, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %30 = call i32 @print_response(i32* %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %33 = call i32 @CHECK_RESPONSE(i32* %32)
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @yrmcds_noop(i32*, i32*) #1

declare dso_local i32 @CHECK_ERROR(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @yrmcds_recv(i32*, i32*) #1

declare dso_local i32 @print_response(i32*) #1

declare dso_local i32 @CHECK_RESPONSE(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
