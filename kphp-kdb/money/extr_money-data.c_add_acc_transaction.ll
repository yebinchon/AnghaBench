; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_add_acc_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_add_acc_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.account = type { i32, i32, %struct.transaction** }
%struct.transaction = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.account*, %struct.transaction*)* @add_acc_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_acc_transaction(%struct.account* %0, %struct.transaction* %1) #0 {
  %3 = alloca %struct.account*, align 8
  %4 = alloca %struct.transaction*, align 8
  %5 = alloca %struct.transaction**, align 8
  store %struct.account* %0, %struct.account** %3, align 8
  store %struct.transaction* %1, %struct.transaction** %4, align 8
  %6 = load %struct.account*, %struct.account** %3, align 8
  %7 = getelementptr inbounds %struct.account, %struct.account* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.account*, %struct.account** %3, align 8
  %12 = getelementptr inbounds %struct.account, %struct.account* %11, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = call i8* @zmalloc(i32 64)
  %14 = bitcast i8* %13 to %struct.transaction**
  %15 = load %struct.account*, %struct.account** %3, align 8
  %16 = getelementptr inbounds %struct.account, %struct.account* %15, i32 0, i32 2
  store %struct.transaction** %14, %struct.transaction*** %16, align 8
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.account*, %struct.account** %3, align 8
  %19 = getelementptr inbounds %struct.account, %struct.account* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.account*, %struct.account** %3, align 8
  %22 = getelementptr inbounds %struct.account, %struct.account* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %17
  %26 = load %struct.account*, %struct.account** %3, align 8
  %27 = getelementptr inbounds %struct.account, %struct.account* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i8* @zmalloc(i32 %32)
  %34 = bitcast i8* %33 to %struct.transaction**
  store %struct.transaction** %34, %struct.transaction*** %5, align 8
  %35 = load %struct.transaction**, %struct.transaction*** %5, align 8
  %36 = load %struct.account*, %struct.account** %3, align 8
  %37 = getelementptr inbounds %struct.account, %struct.account* %36, i32 0, i32 2
  %38 = load %struct.transaction**, %struct.transaction*** %37, align 8
  %39 = load %struct.account*, %struct.account** %3, align 8
  %40 = getelementptr inbounds %struct.account, %struct.account* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(%struct.transaction** %35, %struct.transaction** %38, i32 %44)
  %46 = load %struct.account*, %struct.account** %3, align 8
  %47 = getelementptr inbounds %struct.account, %struct.account* %46, i32 0, i32 2
  %48 = load %struct.transaction**, %struct.transaction*** %47, align 8
  %49 = load %struct.account*, %struct.account** %3, align 8
  %50 = getelementptr inbounds %struct.account, %struct.account* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @zfree(%struct.transaction** %48, i32 %54)
  %56 = load %struct.transaction**, %struct.transaction*** %5, align 8
  %57 = load %struct.account*, %struct.account** %3, align 8
  %58 = getelementptr inbounds %struct.account, %struct.account* %57, i32 0, i32 2
  store %struct.transaction** %56, %struct.transaction*** %58, align 8
  %59 = load %struct.account*, %struct.account** %3, align 8
  %60 = getelementptr inbounds %struct.account, %struct.account* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %25, %17
  %64 = load %struct.transaction*, %struct.transaction** %4, align 8
  %65 = load %struct.account*, %struct.account** %3, align 8
  %66 = getelementptr inbounds %struct.account, %struct.account* %65, i32 0, i32 2
  %67 = load %struct.transaction**, %struct.transaction*** %66, align 8
  %68 = load %struct.account*, %struct.account** %3, align 8
  %69 = getelementptr inbounds %struct.account, %struct.account* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.transaction*, %struct.transaction** %67, i64 %72
  store %struct.transaction* %64, %struct.transaction** %73, align 8
  %74 = load %struct.account*, %struct.account** %3, align 8
  %75 = getelementptr inbounds %struct.account, %struct.account* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  ret i32 %76
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.transaction**, %struct.transaction**, i32) #1

declare dso_local i32 @zfree(%struct.transaction**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
