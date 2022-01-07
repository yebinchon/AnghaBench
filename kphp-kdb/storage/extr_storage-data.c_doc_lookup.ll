; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_doc_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_doc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64*, i64**, i32 }

@STORAGE_ERR_ILLEGAL_LOCAL_ID = common dso_local global i32 0, align 4
@FILE_OFFSET_MASK = common dso_local global i64 0, align 8
@STORAGE_SECRET_MASK = common dso_local global i64 0, align 8
@STORAGE_ERR_WRONG_SECRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64, i64*)* @doc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_lookup(%struct.TYPE_3__* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = call i32 @pthread_mutex_unlock(i32* %25)
  %27 = load i32, i32* @STORAGE_ERR_ILLEGAL_LOCAL_ID, align 4
  store i32 %27, i32* %5, align 4
  br label %79

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %62

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64**, i64*** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 11
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %51, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 2047
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %42, %34
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @FILE_OFFSET_MASK, align 8
  %68 = and i64 %66, %67
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = xor i64 %70, %71
  %73 = load i64, i64* @STORAGE_SECRET_MASK, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* @STORAGE_ERR_WRONG_SECRET, align 4
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %76, %23
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
