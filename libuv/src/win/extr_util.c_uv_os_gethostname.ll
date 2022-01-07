; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_gethostname.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_gethostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_MAXHOSTNAMESIZE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
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
  br label %53

25:                                               ; preds = %19
  %26 = call i32 (...) @uv__once_init()
  %27 = trunc i64 %11 to i32
  %28 = call i64 @gethostname(i8* %13, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 (...) @WSAGetLastError()
  %32 = call i32 @uv_translate_sys_error(i32 %31)
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %53

33:                                               ; preds = %25
  %34 = sub i64 %11, 1
  %35 = getelementptr inbounds i8, i8* %13, i64 %34
  store i8 0, i8* %35, align 1
  %36 = call i64 @strlen(i8* %13)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %53

46:                                               ; preds = %33
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  %50 = call i32 @memcpy(i8* %47, i8* %13, i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %46, %41, %30, %23
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uv__once_init(...) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i32 @WSAGetLastError(...) #2

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
