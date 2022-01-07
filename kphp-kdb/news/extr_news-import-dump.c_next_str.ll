; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_next_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_next_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i32* null, align 8
@rend = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_str(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @eat_whitespaces()
  %8 = load i32*, i32** @rptr, align 8
  %9 = load i32*, i32** @rend, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** @rptr, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 32
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = load i32*, i32** @rptr, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** @rptr, align 8
  %26 = load i32, i32* %24, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 %27, i8* %32, align 1
  %33 = load i32*, i32** @rptr, align 8
  %34 = load i32*, i32** @rend, align 8
  %35 = icmp eq i32* %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = call i32 (...) @advance_buff()
  %38 = load i32*, i32** @rptr, align 8
  %39 = load i32*, i32** @rend, align 8
  %40 = icmp eq i32* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %44

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %23
  br label %13

44:                                               ; preds = %41, %21
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 0, i8* %49, align 1
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @eat_whitespaces(...) #1

declare dso_local i32 @advance_buff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
