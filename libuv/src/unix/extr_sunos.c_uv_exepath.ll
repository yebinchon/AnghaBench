; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv_exepath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv_exepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"/proc/%lu/path/a.out\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_exepath(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %10, %2
  %18 = load i32, i32* @UV_EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %13
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %21 = call i64 (...) @getpid()
  %22 = call i32 @snprintf(i8* %20, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @readlink(i8* %30, i8* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @UV__ERR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %37, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
