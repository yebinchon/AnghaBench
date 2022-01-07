; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_gen_hashes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_gen_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prep_lbuf_res = common dso_local global i64* null, align 8
@MAX_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_hashes(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @prepare_watchcat_str(i8* %9, i32 0)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64*, i64** @prep_lbuf_res, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load i64*, i64** @prep_lbuf_res, align 8
  store i64* %17, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %70, %16
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %18
  store i64 3213211, i64* %8, align 8
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 43
  br label %42

42:                                               ; preds = %34, %26
  %43 = phi i1 [ false, %26 ], [ %41, %34 ]
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = load i64, i64* %8, align 8
  %46 = mul nsw i64 %45, 999983
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i64
  %53 = add nsw i64 %46, %52
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %26

56:                                               ; preds = %42
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 1, i64* %8, align 8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i64, i64* %8, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %71, i64* %76, align 8
  br label %18

77:                                               ; preds = %18
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MAX_NAME_SIZE, align 4
  %80 = icmp slt i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i64*, i64** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dl_qsort_ll(i64* %83, i32 %84)
  %86 = load i64*, i64** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dl_unique_ll(i64* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %77, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i8* @prepare_watchcat_str(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_qsort_ll(i64*, i32) #1

declare dso_local i32 @dl_unique_ll(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
