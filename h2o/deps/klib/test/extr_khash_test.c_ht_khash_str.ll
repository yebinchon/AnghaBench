; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_khash_test.c_ht_khash_str.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_khash_test.c_ht_khash_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str_data = common dso_local global i8** null, align 8
@str = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[ht_khash_int] size: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_khash_str() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = load i8**, i8*** @str_data, align 8
  store i8** %5, i8*** %3, align 8
  %6 = load i32, i32* @str, align 4
  %7 = call i32 @khash_t(i32 %6)
  %8 = load i32, i32* @h, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @str, align 4
  %11 = call i32 @kh_init(i32 %10)
  store i32 %11, i32* @h, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %33, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @data_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i32, i32* @str, align 4
  %18 = load i32, i32* @h, align 4
  %19 = load i8**, i8*** %3, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @kh_put(i32 %17, i32 %18, i8* %23, i32* %2)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @str, align 4
  %29 = load i32, i32* @h, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @kh_del(i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* @h, align 4
  %38 = call i32 @kh_size(i32 %37)
  %39 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @str, align 4
  %41 = load i32, i32* @h, align 4
  %42 = call i32 @kh_destroy(i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @khash_t(i32) #1

declare dso_local i32 @kh_init(i32) #1

declare dso_local i32 @kh_put(i32, i32, i8*, i32*) #1

declare dso_local i32 @kh_del(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @kh_size(i32) #1

declare dso_local i32 @kh_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
