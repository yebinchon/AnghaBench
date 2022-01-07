; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_get_hash_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_get_hash_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_word = type { i64, %struct.hash_word* }

@HASH_BUCKETS = common dso_local global i32 0, align 4
@Hash = common dso_local global %struct.hash_word** null, align 8
@hash_word_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hash_word* @get_hash_node(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.hash_word*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_word*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @HASH_BUCKETS, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.hash_word**, %struct.hash_word*** @Hash, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hash_word*, %struct.hash_word** %13, i64 %15
  %17 = load %struct.hash_word*, %struct.hash_word** %16, align 8
  store %struct.hash_word* %17, %struct.hash_word** %7, align 8
  br label %18

18:                                               ; preds = %29, %2
  %19 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  %20 = icmp ne %struct.hash_word* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  %23 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  store %struct.hash_word* %28, %struct.hash_word** %3, align 8
  br label %57

29:                                               ; preds = %21
  %30 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  %31 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %30, i32 0, i32 1
  %32 = load %struct.hash_word*, %struct.hash_word** %31, align 8
  store %struct.hash_word* %32, %struct.hash_word** %7, align 8
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store %struct.hash_word* null, %struct.hash_word** %3, align 8
  br label %57

37:                                               ; preds = %33
  %38 = load i32, i32* @hash_word_nodes, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @hash_word_nodes, align 4
  %40 = call %struct.hash_word* @zmalloc0(i32 16)
  store %struct.hash_word* %40, %struct.hash_word** %7, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  %43 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.hash_word**, %struct.hash_word*** @Hash, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hash_word*, %struct.hash_word** %44, i64 %46
  %48 = load %struct.hash_word*, %struct.hash_word** %47, align 8
  %49 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  %50 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %49, i32 0, i32 1
  store %struct.hash_word* %48, %struct.hash_word** %50, align 8
  %51 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  %52 = load %struct.hash_word**, %struct.hash_word*** @Hash, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hash_word*, %struct.hash_word** %52, i64 %54
  store %struct.hash_word* %51, %struct.hash_word** %55, align 8
  %56 = load %struct.hash_word*, %struct.hash_word** %7, align 8
  store %struct.hash_word* %56, %struct.hash_word** %3, align 8
  br label %57

57:                                               ; preds = %37, %36, %27
  %58 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  ret %struct.hash_word* %58
}

declare dso_local %struct.hash_word* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
