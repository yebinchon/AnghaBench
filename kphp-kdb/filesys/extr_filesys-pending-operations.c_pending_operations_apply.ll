; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operations_apply.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operations_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_operation = type { %struct.pending_operation* }

@pol_head = common dso_local global %struct.pending_operation* null, align 8
@po_use_mark = common dso_local global i64 0, align 8
@po_mrk = common dso_local global i32 0, align 4
@pol_tail = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_operations_apply() #0 {
  %1 = alloca %struct.pending_operation*, align 8
  %2 = load %struct.pending_operation*, %struct.pending_operation** @pol_head, align 8
  store %struct.pending_operation* %2, %struct.pending_operation** %1, align 8
  br label %3

3:                                                ; preds = %9, %0
  %4 = load %struct.pending_operation*, %struct.pending_operation** %1, align 8
  %5 = icmp ne %struct.pending_operation* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load %struct.pending_operation*, %struct.pending_operation** %1, align 8
  %8 = call i32 @pending_operation_apply(%struct.pending_operation* %7)
  br label %9

9:                                                ; preds = %6
  %10 = load %struct.pending_operation*, %struct.pending_operation** %1, align 8
  %11 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %10, i32 0, i32 0
  %12 = load %struct.pending_operation*, %struct.pending_operation** %11, align 8
  store %struct.pending_operation* %12, %struct.pending_operation** %1, align 8
  br label %3

13:                                               ; preds = %3
  %14 = load i64, i64* @po_use_mark, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @po_mrk, align 4
  %18 = call i32 @dyn_release(i32 %17)
  br label %21

19:                                               ; preds = %13
  %20 = call i32 (...) @pending_operations_clear()
  br label %21

21:                                               ; preds = %19, %16
  store i32* null, i32** @pol_tail, align 8
  store %struct.pending_operation* null, %struct.pending_operation** @pol_head, align 8
  ret void
}

declare dso_local i32 @pending_operation_apply(%struct.pending_operation*) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local i32 @pending_operations_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
