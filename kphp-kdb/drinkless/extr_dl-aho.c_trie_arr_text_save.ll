; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_arr_text_save.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_arr_text_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i64 }

@trie_arr_text_save.s = internal global [100000 x i8] zeroinitializer, align 16
@trie_arr_text_save.sn = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trie_arr_text_save(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32, i32* @trie_arr_text_save.sn, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_arr_text_save.s, i64 0, i64 %14
  store i8 0, i8* %15, align 1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %31, %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @trie_arr_text_save.sn, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_arr_text_save.s, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8 %24, i8* %30, align 1
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 9, i8* %40, align 1
  br label %41

41:                                               ; preds = %34, %3
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %76, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i32, i32* @trie_arr_text_save.sn, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @trie_arr_text_save.sn, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_arr_text_save.s, i64 0, i64 %60
  store i8 %57, i8* %61, align 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call %struct.TYPE_5__* @TSHIFT(%struct.TYPE_5__* %62, i8 signext %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i32*, i32** %6, align 8
  call void @trie_arr_text_save(%struct.TYPE_5__* %71, i8* %72, i32* %73)
  %74 = load i32, i32* @trie_arr_text_save.sn, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* @trie_arr_text_save.sn, align 4
  br label %76

76:                                               ; preds = %48
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %42

79:                                               ; preds = %42
  ret void
}

declare dso_local %struct.TYPE_5__* @TSHIFT(%struct.TYPE_5__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
