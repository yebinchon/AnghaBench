; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_mymalloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_mymalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@heap_a = common dso_local global i8* null, align 8
@Heap = common dso_local global i8* null, align 8
@HEAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mymalloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i8*, i8** @heap_a, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ugt i64 %6, 33554432
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @heap_a, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = load i8*, i8** @Heap, align 8
  %13 = load i32, i32* @HEAP_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = icmp ugt i8* %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8, %1
  store i8* null, i8** %2, align 8
  br label %25

18:                                               ; preds = %8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 3
  %21 = and i64 %20, -4
  %22 = load i8*, i8** @heap_a, align 8
  %23 = getelementptr i8, i8* %22, i64 %21
  store i8* %23, i8** @heap_a, align 8
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
