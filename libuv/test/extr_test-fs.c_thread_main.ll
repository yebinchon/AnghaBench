; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs.c_thread_main.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs.c_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_ctx = type { i32, i8*, i32, i32, i32, i64 }

@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.thread_ctx*
  store %struct.thread_ctx* %9, %struct.thread_ctx** %3, align 8
  %10 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %66, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  store i32 %32, i32* %7, align 4
  %33 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @write(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  br label %66

49:                                               ; preds = %31
  %50 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @read(i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %59, %60
  br label %62

62:                                               ; preds = %58, %49
  %63 = phi i1 [ false, %49 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  br label %66

66:                                               ; preds = %62, %37
  %67 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SIGUSR1, align 4
  %71 = call i32 @pthread_kill(i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %5, align 8
  br label %16

79:                                               ; preds = %16
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @pthread_kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
