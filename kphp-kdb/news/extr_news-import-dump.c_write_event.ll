; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_write_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_split_mod = common dso_local global i32 0, align 4
@z = common dso_local global i32* null, align 8
@u = common dso_local global i32* null, align 8
@USERMOD = common dso_local global i32 0, align 4
@MAXUSERS = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@c = common dso_local global i32* null, align 8
@LEV_BOOKMARK_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_event(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @gen_split_param(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @log_split_mod, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %9, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 0, %22
  %24 = load i32, i32* @log_split_mod, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 422
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load i32*, i32** @z, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32*, i32** @z, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  %43 = load i32*, i32** @u, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @log_split_mod, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %61

51:                                               ; preds = %29
  %52 = load i32*, i32** @u, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* @log_split_mod, align 4
  %56 = sdiv i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %51, %42
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32*, i32** @z, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %101

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @USERMOD, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i32, i32* @MAXUSERS, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* @MAXUSERS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @USERMOD, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, i32* @MAXUSERS, align 4
  %83 = sdiv i32 %82, 2
  %84 = add nsw i32 %81, %83
  %85 = icmp sge i32 %84, 0
  br label %86

86:                                               ; preds = %78, %69
  %87 = phi i1 [ false, %69 ], [ %85, %78 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32*, i32** @a, align 8
  %91 = load i32, i32* @MAXUSERS, align 4
  %92 = sdiv i32 %91, 2
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @USERMOD, align 4
  %95 = sdiv i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %90, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %86, %62
  %102 = load i32*, i32** @c, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @LEV_BOOKMARK_INSERT, align 4
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i32 @write_int(i32 %108, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @write_int(i32 %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @write_int(i32 %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @write_int(i32 %119, i32 %120)
  ret void
}

declare dso_local i32 @gen_split_param(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
