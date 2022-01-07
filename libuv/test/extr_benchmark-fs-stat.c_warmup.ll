; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-fs-stat.c_warmup.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-fs-stat.c_warmup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CONCURRENT_REQS = common dso_local global i32 0, align 4
@uv_fs_req_cleanup = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @warmup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warmup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @MAX_CONCURRENT_REQS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ARRAY_SIZE(i32* %9)
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = call i32 (...) @uv_default_loop()
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %9, i64 %17
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @uv_fs_req_cleanup, align 4
  %21 = call i32 @uv_fs_stat(i32 %15, i32* %18, i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  %26 = call i32 (...) @uv_default_loop()
  %27 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %28 = call i32 @uv_run(i32 %26, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %36, %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = getelementptr inbounds i32, i32* %9, i64 0
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @sync_stat(i32* %33, i8* %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %29

39:                                               ; preds = %29
  %40 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @uv_fs_stat(i32, i32*, i8*, i32) #2

declare dso_local i32 @uv_default_loop(...) #2

declare dso_local i32 @uv_run(i32, i32) #2

declare dso_local i32 @sync_stat(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
