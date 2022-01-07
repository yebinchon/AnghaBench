; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_cmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_cmp(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i64 [ %18, %15 ], [ %22, %19 ]
  store i64 %24, i64* %6, align 8
  %25 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @memcmp(i32 %27, i32 %30, i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %23
  %38 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %55

46:                                               ; preds = %37
  %47 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %46, %45
  %56 = phi i32 [ -1, %45 ], [ %54, %46 ]
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
