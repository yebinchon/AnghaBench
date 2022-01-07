; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_random-devurandom.c_uv__random_readpath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_random-devurandom.c_uv__random_readpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@UV_EIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__random_readpath(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @uv__open_cloexec(i8* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @errno, align 8
  %19 = call i32 @UV__ERR(i64 %18)
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @fstat(i32 %21, %struct.stat* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @uv__close(i32 %25)
  %27 = load i64, i64* @errno, align 8
  %28 = call i32 @UV__ERR(i64 %27)
  store i32 %28, i32* %4, align 4
  br label %85

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISCHR(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @uv__close(i32 %35)
  %37 = load i32, i32* @UV_EIO, align 4
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %78, %38
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  %52 = call i64 @read(i32 %45, i8* %48, i64 %51)
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EINTR, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %44, label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @uv__close(i32 %66)
  %68 = load i64, i64* @errno, align 8
  %69 = call i32 @UV__ERR(i64 %68)
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %62
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @uv__close(i32 %74)
  %76 = load i32, i32* @UV_EIO, align 4
  store i32 %76, i32* %4, align 4
  br label %85

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  br label %39

82:                                               ; preds = %39
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @uv__close(i32 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %73, %65, %34, %24, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @uv__open_cloexec(i8*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
