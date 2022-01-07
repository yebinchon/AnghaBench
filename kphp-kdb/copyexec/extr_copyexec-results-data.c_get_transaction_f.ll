; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_transaction_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_transaction_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_6__* }

@HASH_MASK = common dso_local global i32 0, align 4
@H = common dso_local global i8** null, align 8
@tot_memory_transactions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @get_transaction_f(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul i32 %14, 10007
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  %18 = add i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul i32 %19, 10007
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @HASH_MASK, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i8**, i8*** @H, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = bitcast i8** %29 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %30, %struct.TYPE_6__*** %9, align 8
  br label %31

31:                                               ; preds = %3, %75
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = load i8**, i8*** @H, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to %struct.TYPE_6__*
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = bitcast %struct.TYPE_6__* %65 to i8*
  %67 = load i8**, i8*** @H, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %66, i8** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = call i32 @lru_reuse(%struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %56, %49
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %4, align 8
  br label %110

75:                                               ; preds = %43, %37
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store %struct.TYPE_6__** %77, %struct.TYPE_6__*** %9, align 8
  br label %31

78:                                               ; preds = %36
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = call i32 (...) @transaction_lru_gc()
  %83 = call %struct.TYPE_6__* @zmalloc0(i32 24)
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %10, align 8
  %84 = load i32, i32* @tot_memory_transactions, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @tot_memory_transactions, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i8**, i8*** @H, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_6__*
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = bitcast %struct.TYPE_6__* %100 to i8*
  %102 = load i8**, i8*** @H, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %101, i8** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = call i32 @lru_add(%struct.TYPE_6__* %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %4, align 8
  br label %110

109:                                              ; preds = %78
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %110

110:                                              ; preds = %109, %81, %73
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %111
}

declare dso_local i32 @lru_reuse(%struct.TYPE_6__*) #1

declare dso_local i32 @transaction_lru_gc(...) #1

declare dso_local %struct.TYPE_6__* @zmalloc0(i32) #1

declare dso_local i32 @lru_add(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
