; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kbtree_test.c_ht_khash_str.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kbtree_test.c_ht_khash_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str_data = common dso_local global i8** null, align 8
@str = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@KB_DEFAULT_SIZE = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[ht_khash_int] size: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_khash_str() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = load i8**, i8*** @str_data, align 8
  store i8** %3, i8*** %2, align 8
  %4 = load i32, i32* @str, align 4
  %5 = call i32 @kbtree_t(i32 %4)
  %6 = load i32, i32* @h, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @str, align 4
  %9 = load i32, i32* @KB_DEFAULT_SIZE, align 4
  %10 = call i32 @kb_init(i32 %8, i32 %9)
  store i32 %10, i32* @h, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %44, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @data_size, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i32, i32* @str, align 4
  %17 = load i32, i32* @h, align 4
  %18 = load i8**, i8*** %2, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @kb_get(i32 %16, i32 %17, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* @str, align 4
  %27 = load i32, i32* @h, align 4
  %28 = load i8**, i8*** %2, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @kb_put(i32 %26, i32 %27, i8* %32)
  br label %43

34:                                               ; preds = %15
  %35 = load i32, i32* @str, align 4
  %36 = load i32, i32* @h, align 4
  %37 = load i8**, i8*** %2, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @kb_del(i32 %35, i32 %36, i8* %41)
  br label %43

43:                                               ; preds = %34, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i32, i32* @h, align 4
  %49 = call i32 @kb_size(i32 %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @h, align 4
  %52 = call i32 @__kb_destroy(i32 %51)
  ret void
}

declare dso_local i32 @kbtree_t(i32) #1

declare dso_local i32 @kb_init(i32, i32) #1

declare dso_local i64 @kb_get(i32, i32, i8*) #1

declare dso_local i32 @kb_put(i32, i32, i8*) #1

declare dso_local i32 @kb_del(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @kb_size(i32) #1

declare dso_local i32 @__kb_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
