; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv_exepath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv_exepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC_ARGS = common dso_local global i32 0, align 4
@KERN_PROC_PATHNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_exepath(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i64*, i64** %5, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %17, %2
  %25 = load i32, i32* @UV_EINVAL, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %49

26:                                               ; preds = %20
  %27 = load i32, i32* @CTL_KERN, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* @KERN_PROC_ARGS, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @KERN_PROC_PATHNAME, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = call i64 @ARRAY_SIZE(i8* %14)
  store i64 %34, i64* %8, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %36 = call i64 @sysctl(i32* %35, i32 4, i8* %14, i64* %8, i32* null, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @UV__ERR(i32 %39)
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %49

41:                                               ; preds = %26
  %42 = load i8*, i8** %4, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @uv__strscpy(i8* %42, i8* %14, i64 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %41, %38, %24
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i32 @uv__strscpy(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
