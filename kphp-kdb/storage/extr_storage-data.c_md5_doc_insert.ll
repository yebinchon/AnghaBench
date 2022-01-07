; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_md5_doc_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_md5_doc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"md5_doc_insert (secret = %llx, file_pos = %llx)\0A\00", align 1
@STORAGE_ERR_WRONG_SECRET = common dso_local global i32 0, align 4
@STORAGE_ERR_DOC_EXISTS = common dso_local global i32 0, align 4
@STORAGE_SECRET_MASK = common dso_local global i64 0, align 8
@tot_docs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64, i64)* @md5_doc_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_doc_insert(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @md5_doc_lookup(%struct.TYPE_4__* %15, i8* %16, i32 0, i64* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @STORAGE_ERR_WRONG_SECRET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %4
  %25 = load i32, i32* @STORAGE_ERR_DOC_EXISTS, align 4
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (...) @lrand48()
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @STORAGE_SECRET_MASK, align 8
  %35 = and i64 %33, %34
  %36 = or i64 %32, %35
  %37 = call i32 @md5_tree_insert(i32 %29, i8* %30, i32 %31, i64 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @tot_docs, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @tot_docs, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %26, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @md5_doc_lookup(%struct.TYPE_4__*, i8*, i32, i64*) #1

declare dso_local i32 @md5_tree_insert(i32, i8*, i32, i64) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
