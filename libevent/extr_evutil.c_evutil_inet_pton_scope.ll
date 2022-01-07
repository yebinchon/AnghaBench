; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_inet_pton_scope.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_inet_pton_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_inet_pton_scope(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @evutil_inet_pton(i32 %20, i8* %21, i8* %22)
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 37)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @evutil_inet_pton(i32 %30, i8* %31, i8* %32)
  store i32 %33, i32* %5, align 4
  br label %66

34:                                               ; preds = %24
  %35 = load i8*, i8** %13, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 @if_nametoindex(i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @strtoul(i8* %42, i8** %12, i32 10)
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %66

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @mm_strdup(i8* %54)
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 37)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @evutil_inet_pton(i32 %59, i8* %60, i8* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %51, %49, %29, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @evutil_inet_pton(i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @mm_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
