; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_get_first_want_exec_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_get_first_want_exec_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@HASH_MASK = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @get_first_want_exec_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_first_want_exec_transaction() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %56, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @HASH_MASK, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @H, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %10, i64 %12
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  br label %15

15:                                               ; preds = %51, %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i64 @transaction_want_exec(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %22
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %2, align 8
  br label %35

35:                                               ; preds = %33, %25
  br label %50

36:                                               ; preds = %18
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %36
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %3, align 8
  br label %49

49:                                               ; preds = %47, %39
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %4, align 8
  br label %15

55:                                               ; preds = %15
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %5

59:                                               ; preds = %5
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  br label %66

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi %struct.TYPE_5__* [ %63, %62 ], [ %65, %64 ]
  ret %struct.TYPE_5__* %67
}

declare dso_local i64 @transaction_want_exec(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
