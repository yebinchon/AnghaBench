; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_readlink.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

@STRBUF_MAXLINK = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_readlink(%struct.strbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 32, i64* %7, align 8
  br label %16

16:                                               ; preds = %15, %3
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @STRBUF_MAXLINK, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @strbuf_grow(%struct.strbuf* %22, i64 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @readlink(i8* %25, i32 %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ERANGE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %51

38:                                               ; preds = %33
  br label %48

39:                                               ; preds = %21
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @strbuf_setlen(%struct.strbuf* %44, i64 %45)
  store i32 0, i32* %4, align 4
  br label %58

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i64, i64* %7, align 8
  %50 = mul i64 %49, 2
  store i64 %50, i64* %7, align 8
  br label %17

51:                                               ; preds = %37, %17
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %56 = call i32 @strbuf_release(%struct.strbuf* %55)
  br label %57

57:                                               ; preds = %54, %51
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i64 @readlink(i8*, i32, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
