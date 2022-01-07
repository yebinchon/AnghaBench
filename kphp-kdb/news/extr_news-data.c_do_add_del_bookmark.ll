; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_add_del_bookmark.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_add_del_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_del_bookmark(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @check_obj(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store i32 0, i32* %6, align 4
  br label %70

25:                                               ; preds = %21
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @PACK_BOOKMARK(i64 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @UNPACK_BOOKMARK(i64 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39, %25
  %48 = phi i1 [ false, %39 ], [ false, %25 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @insert_bookmark(i32 %51, i64 %52, i32 %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @insert_bookmark_log(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @add_del_bookmark(i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %70

69:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %56, %24
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local i32 @PACK_BOOKMARK(i64, i32, i32, i32) #1

declare dso_local i32 @UNPACK_BOOKMARK(i64, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @insert_bookmark(i32, i64, i32, i32) #1

declare dso_local i32 @insert_bookmark_log(i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_del_bookmark(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
