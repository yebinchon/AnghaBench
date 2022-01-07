; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_cwd.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV__PATH_MAX = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cwd(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @UV__PATH_MAX, align 4
  %10 = add nsw i32 1, %9
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @UV_EINVAL, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32* @getcwd(i8* %22, i32 %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %44

29:                                               ; preds = %21
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ERANGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = call i32 @UV__ERR(i64 %34)
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

36:                                               ; preds = %29
  %37 = trunc i64 %11 to i32
  %38 = call i32* @getcwd(i8* %13, i32 %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @UV__ERR(i64 %41)
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

43:                                               ; preds = %36
  store i8* %13, i8** %4, align 8
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %49, 1
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %60, %51, %44
  %69 = load i8*, i8** %4, align 8
  %70 = icmp eq i8* %69, %13
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

76:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %71, %40, %33, %19
  %78 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i32 @UV__ERR(i64) #2

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
