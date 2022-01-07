; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_extract_tail.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_extract_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_buf = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_buf*, i8*, i32)* @extract_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_tail(%struct.data_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.data_buf* %0, %struct.data_buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %10 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %13 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %75

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %24, i64 %28
  %30 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %31 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %34 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @memcpy(i8* %29, i64 %40, i32 %41)
  %43 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @remove_tail(%struct.data_buf* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %23
  %52 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %53 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %75

57:                                               ; preds = %51, %23
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %60 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %63 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memcpy(i8* %58, i64 %69, i32 %70)
  %72 = load %struct.data_buf*, %struct.data_buf** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @remove_tail(%struct.data_buf* %72, i32 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %57, %56, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @remove_tail(%struct.data_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
