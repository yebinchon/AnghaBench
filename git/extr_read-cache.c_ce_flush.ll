; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_flush.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (i64, i32*)*, i32 (i32*, i64, i32)* }

@write_buffer_len = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@write_buffer = common dso_local global i64 0, align 8
@WRITE_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @ce_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_flush(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @write_buffer_len, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  store i32 0, i32* @write_buffer_len, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @write_buffer, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 %15(i32* %16, i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* @WRITE_BUFFER_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* @write_buffer, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @write_in_full(i32 %30, i64 %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %67

36:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (i64, i32*)*, i32 (i64, i32*)** %39, align 8
  %41 = load i64, i64* @write_buffer, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 %40(i64 %44, i32* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* @write_buffer, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @hashcpy(i8* %47, i64 %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* @write_buffer, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @write_in_full(i32 %60, i64 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 0
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %37, %35
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @write_in_full(i32, i64, i32) #1

declare dso_local i32 @hashcpy(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
