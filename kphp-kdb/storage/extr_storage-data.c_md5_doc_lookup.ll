; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_md5_doc_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_md5_doc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@STORAGE_ERR_WRONG_SECRET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"md5_doc_idx_lookup returns exit code %d.\0A\00", align 1
@STORAGE_ERR_DOC_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pos = %llx\0A\00", align 1
@STORAGE_SECRET_MASK = common dso_local global i64 0, align 8
@FILE_OFFSET_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i64*)* @md5_doc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_doc_lookup(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = call i32 @md5_doc_idx_lookup(%struct.TYPE_6__* %13, i8* %14, i64 %15, i64* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @STORAGE_ERR_WRONG_SECRET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %58

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.TYPE_7__* @md5_tree_lookup(i32 %32, i8* %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %11, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = icmp eq %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @STORAGE_ERR_DOC_NOT_FOUND, align 4
  store i32 %38, i32* %5, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = xor i64 %45, %46
  %48 = load i64, i64* @STORAGE_SECRET_MASK, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @STORAGE_ERR_WRONG_SECRET, align 4
  store i32 %52, i32* %5, align 4
  br label %58

53:                                               ; preds = %39
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @FILE_OFFSET_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %51, %37, %24
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @md5_doc_idx_lookup(%struct.TYPE_6__*, i8*, i64, i64*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local %struct.TYPE_7__* @md5_tree_lookup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
