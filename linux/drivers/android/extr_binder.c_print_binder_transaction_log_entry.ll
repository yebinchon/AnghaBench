; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_print_binder_transaction_log_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_print_binder_transaction_log_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.binder_transaction_log_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [82 x i8] c"%d: %s from %d:%d to %d:%d context %s node %d handle %d size %d:%d ret %d/%d l=%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"call \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" (incomplete)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.binder_transaction_log_entry*)* @print_binder_transaction_log_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_binder_transaction_log_entry(%struct.seq_file* %0, %struct.binder_transaction_log_entry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.binder_transaction_log_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.binder_transaction_log_entry* %1, %struct.binder_transaction_log_entry** %4, align 8
  %6 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %7 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @READ_ONCE(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @smp_rmb()
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %13 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %16 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %22 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  br label %27

27:                                               ; preds = %20, %19
  %28 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %19 ], [ %26, %20 ]
  %29 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %30 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %33 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %36 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %39 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %42 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %45 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %48 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %51 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %54 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %57 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %60 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %63 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64)
  %66 = call i32 (...) @smp_rmb()
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %27
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %4, align 8
  %73 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @READ_ONCE(i32 %74)
  %76 = icmp eq i32 %71, %75
  br label %77

77:                                               ; preds = %70, %27
  %78 = phi i1 [ false, %27 ], [ %76, %70 ]
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* %80)
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
