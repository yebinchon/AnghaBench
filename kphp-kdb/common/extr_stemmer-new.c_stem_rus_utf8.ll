; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_stemmer-new.c_stem_rus_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_stemmer-new.c_stem_rus_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stem_ts_v = common dso_local global i32* null, align 8
@stem_ts = common dso_local global i32* null, align 8
@maxn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stem_rus_utf8(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32*, i32** @stem_ts_v, align 8
  %11 = call i32 @string_to_utf8(i8* %9, i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %37, %3
  %13 = load i32*, i32** @stem_ts, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 100
  %22 = load i32, i32* @maxn, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i1 [ false, %12 ], [ %23, %19 ]
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = load i32*, i32** @stem_ts_v, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @conv_rus_utf8(i32 %31)
  %33 = load i32*, i32** @stem_ts, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %12

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @stem_rus(i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %67, %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i32*, i32** @stem_ts, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 32
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32*, i32** @stem_ts, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1072
  %62 = load i32*, i32** @stem_ts_v, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %44

70:                                               ; preds = %44
  %71 = load i32*, i32** @stem_ts_v, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** @stem_ts_v, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @put_string_utf8(i32* %75, i8* %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @string_to_utf8(i8*, i32*) #1

declare dso_local i32 @conv_rus_utf8(i32) #1

declare dso_local i32 @stem_rus(i32, i32) #1

declare dso_local i32 @put_string_utf8(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
