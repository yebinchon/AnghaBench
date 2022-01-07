; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_transaction_log_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_transaction_log_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.binder_transaction_log* }
%struct.binder_transaction_log = type { i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binder_transaction_log_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.binder_transaction_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %12, align 8
  store %struct.binder_transaction_log* %13, %struct.binder_transaction_log** %5, align 8
  %14 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %15 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %14, i32 0, i32 2
  %16 = call i32 @atomic_read(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %21 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %27 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %25, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %34 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = urem i32 %32, %36
  br label %38

38:                                               ; preds = %31, %30
  %39 = phi i32 [ 0, %30 ], [ %37, %31 ]
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %42 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp ugt i32 %40, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %48 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %38
  %52 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %53 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %46
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %65 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = urem i32 %62, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %5, align 8
  %71 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @print_binder_transaction_log_entry(%struct.seq_file* %69, i32* %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %57

80:                                               ; preds = %57
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @print_binder_transaction_log_entry(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
