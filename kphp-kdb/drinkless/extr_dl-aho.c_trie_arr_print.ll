; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_arr_print.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_arr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i64 }

@trie_arr_print.s = internal global [100000 x i8] zeroinitializer, align 16
@trie_arr_print.sn = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trie_arr_print(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @trie_arr_print.sn, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_arr_print.s, i64 0, i64 %10
  store i8 0, i8* %11, align 1
  %12 = call i32 @puts(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @trie_arr_print.s, i64 0, i64 0))
  br label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i32, i32* @trie_arr_print.sn, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @trie_arr_print.sn, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_arr_print.s, i64 0, i64 %32
  store i8 %29, i8* %33, align 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call %struct.TYPE_5__* @TSHIFT(%struct.TYPE_5__* %34, i8 signext %42)
  call void @trie_arr_print(%struct.TYPE_5__* %43)
  %44 = load i32, i32* @trie_arr_print.sn, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @trie_arr_print.sn, align 4
  br label %46

46:                                               ; preds = %20
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %14

49:                                               ; preds = %14
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local %struct.TYPE_5__* @TSHIFT(%struct.TYPE_5__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
