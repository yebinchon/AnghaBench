; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_want_exec.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_want_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@ts_running = common dso_local global i64 0, align 8
@ts_decryption_failed = common dso_local global i64 0, align 8
@ts_cancelled = common dso_local global i64 0, align 8
@MASK_RERUN_TRANSACTION = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i64 0, align 8
@ts_interrupted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @transaction_want_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transaction_want_exec(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ts_running, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ts_decryption_failed, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %65

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ts_cancelled, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MASK_RERUN_TRANSACTION, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %65

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @SIGINT, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @SIGTERM, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31
  store i32 1, i32* %2, align 4
  br label %65

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %65

49:                                               ; preds = %17
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ts_interrupted, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MASK_RERUN_TRANSACTION, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %55, %49
  %63 = phi i1 [ false, %49 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %48, %47, %30, %16, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
