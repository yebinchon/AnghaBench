; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-process-title-threadsafe.c_getter_thread_body.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-process-title-threadsafe.c_getter_thread_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@titles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getter_thread_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getter_thread_body(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %37, %1
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %6 = call i64 @uv_get_process_title(i8* %5, i32 512)
  %7 = icmp eq i64 0, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %11 = load i32*, i32** @titles, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i8* %10, i32 %13)
  %15 = icmp eq i64 0, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %18 = load i32*, i32** @titles, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i8* %17, i32 %20)
  %22 = icmp eq i64 0, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %25 = load i32*, i32** @titles, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i8* %24, i32 %27)
  %29 = icmp eq i64 0, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %32 = load i32*, i32** @titles, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i8* %31, i32 %34)
  %36 = icmp eq i64 0, %35
  br label %37

37:                                               ; preds = %30, %23, %16, %4
  %38 = phi i1 [ true, %23 ], [ true, %16 ], [ true, %4 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = call i32 @uv_sleep(i32 0)
  br label %4
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_get_process_title(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @uv_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
