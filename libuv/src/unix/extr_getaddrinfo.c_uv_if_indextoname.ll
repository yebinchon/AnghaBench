; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_getaddrinfo.c_uv_if_indextoname.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_getaddrinfo.c_uv_if_indextoname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_IF_NAMESIZE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_if_indextoname(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @UV_IF_NAMESIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %3
  %26 = load i32, i32* @UV_EINVAL, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %55

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @if_indextoname(i32 %28, i8* %15)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @UV__ERR(i32 %32)
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %55

34:                                               ; preds = %27
  %35 = trunc i64 %13 to i32
  %36 = call i64 @strnlen(i8* %15, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @memcpy(i8* %47, i8* %15, i64 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %46, %41, %31, %25
  %56 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @if_indextoname(i32, i8*) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
