; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_inet.c_uv_inet_pton.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_inet.c_uv_inet_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@UV__INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@UV_EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_inet_pton(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @UV_EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %65 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @inet_pton4(i8* %24, i8* %25)
  store i32 %26, i32* %4, align 4
  br label %67

27:                                               ; preds = %21
  %28 = load i32, i32* @UV__INET6_ADDRSTRLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 37)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %27
  store i8* %31, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @UV__INET6_ADDRSTRLEN, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @UV_EINVAL, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %63

50:                                               ; preds = %37
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcpy(i8* %51, i8* %52, i32 %53)
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %50, %27
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @inet_pton6(i8* %60, i8* %61)
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %48
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %67

65:                                               ; preds = %21
  %66 = load i32, i32* @UV_EAFNOSUPPORT, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %63, %23, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @inet_pton4(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @inet_pton6(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
