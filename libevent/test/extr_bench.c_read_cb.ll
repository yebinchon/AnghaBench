; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_bench.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_bench.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4
@failures = common dso_local global i32 0, align 4
@writes = common dso_local global i64 0, align 8
@num_pipes = common dso_local global i32 0, align 4
@pipes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"e\00", align 1
@fired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @recv(i32 %15, i8* %9, i32 1, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @count, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* @count, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @failures, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @failures, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i64, i64* @writes, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @num_pipes, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @num_pipes, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** @pipes, align 8
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @send(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @failures, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @failures, align 4
  br label %51

51:                                               ; preds = %48, %37
  %52 = load i64, i64* @writes, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* @writes, align 8
  %54 = load i32, i32* @fired, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @fired, align 4
  br label %56

56:                                               ; preds = %51, %26
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
