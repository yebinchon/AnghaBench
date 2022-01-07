; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_print.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-aho.c_trie_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, %struct.TYPE_3__*, %struct.TYPE_3__*, i64 }

@trie_print.s = internal global [100000 x i8] zeroinitializer, align 16
@trie_print.sn = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trie_print(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  br label %3

3:                                                ; preds = %23, %1
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 8
  %10 = load i32, i32* @trie_print.sn, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @trie_print.sn, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_print.s, i64 0, i64 %12
  store i8 %9, i8* %13, align 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i32, i32* @trie_print.sn, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100000 x i8], [100000 x i8]* @trie_print.s, i64 0, i64 %20
  store i8 0, i8* %21, align 1
  %22 = call i32 @puts(i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @trie_print.s, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  call void @trie_print(%struct.TYPE_3__* %26)
  %27 = load i32, i32* @trie_print.sn, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @trie_print.sn, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %2, align 8
  br label %3

32:                                               ; preds = %3
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
