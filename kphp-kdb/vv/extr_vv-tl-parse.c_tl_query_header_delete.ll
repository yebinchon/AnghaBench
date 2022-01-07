; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_query_header_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_query_header_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i64, i32, i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_query_header_delete(%struct.tl_query_header* %0) #0 {
  %2 = alloca %struct.tl_query_header*, align 8
  %3 = alloca i32, align 4
  store %struct.tl_query_header* %0, %struct.tl_query_header** %2, align 8
  %4 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %5 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %9 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %15 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %21 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %26 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %33 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %38 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %47 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @free(i64 %52)
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.tl_query_header*, %struct.tl_query_header** %2, align 8
  %60 = call i32 @zfree(%struct.tl_query_header* %59, i32 32)
  br label %61

61:                                               ; preds = %58, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @zfree(%struct.tl_query_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
