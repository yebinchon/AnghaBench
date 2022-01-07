; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_md5_doc_idx_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_md5_doc_idx_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i64 }

@STORAGE_ERR_DOC_NOT_FOUND = common dso_local global i32 0, align 4
@STORAGE_SECRET_MASK = common dso_local global i64 0, align 8
@STORAGE_ERR_WRONG_SECRET = common dso_local global i32 0, align 4
@FILE_OFFSET_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64, i64*)* @md5_doc_idx_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_doc_idx_lookup(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  br label %17

17:                                               ; preds = %42, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %23, %24
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = call i64 @memcmp(i64 %33, i8* %35, i32 16)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %22
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = call i64 @memcmp(i64 %53, i8* %55, i32 16)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46, %43
  %59 = load i32, i32* @STORAGE_ERR_DOC_NOT_FOUND, align 4
  store i32 %59, i32* %5, align 4
  br label %81

60:                                               ; preds = %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %13, align 8
  %70 = xor i64 %68, %69
  %71 = load i64, i64* @STORAGE_SECRET_MASK, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* @STORAGE_ERR_WRONG_SECRET, align 4
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %60
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @FILE_OFFSET_MASK, align 8
  %79 = and i64 %77, %78
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %74, %58
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @memcmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
