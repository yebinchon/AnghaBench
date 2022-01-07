; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_os_gethostname.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_os_gethostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_MAXHOSTNAMESIZE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_gethostname(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i32, i32* @UV_MAXHOSTNAMESIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16, %2
  %24 = load i32, i32* @UV_EINVAL, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %52

25:                                               ; preds = %19
  %26 = trunc i64 %11 to i32
  %27 = call i64 @gethostname(i8* %13, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @UV__ERR(i32 %30)
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %52

32:                                               ; preds = %25
  %33 = sub i64 %11, 1
  %34 = getelementptr inbounds i8, i8* %13, i64 %33
  store i8 0, i8* %34, align 1
  %35 = call i64 @strlen(i8* %13)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  %49 = call i32 @memcpy(i8* %46, i8* %13, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %45, %40, %29, %23
  %53 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i64 @strlen(i8*) #2

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
