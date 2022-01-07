; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_operation = type { i32, i8*, i8*, i32 }
%struct.static_pending_operation = type { i32, i32, i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pending_operation* @pending_operation_load(%struct.static_pending_operation* %0) #0 {
  %2 = alloca %struct.static_pending_operation*, align 8
  %3 = alloca %struct.pending_operation*, align 8
  store %struct.static_pending_operation* %0, %struct.static_pending_operation** %2, align 8
  %4 = call %struct.pending_operation* @zmalloc0(i32 32)
  store %struct.pending_operation* %4, %struct.pending_operation** %3, align 8
  %5 = load %struct.static_pending_operation*, %struct.static_pending_operation** %2, align 8
  %6 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.pending_operation*, %struct.pending_operation** %3, align 8
  %9 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load %struct.static_pending_operation*, %struct.static_pending_operation** %2, align 8
  %11 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.static_pending_operation*, %struct.static_pending_operation** %2, align 8
  %16 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @zstrdup(i32 %17)
  %19 = load %struct.pending_operation*, %struct.pending_operation** %3, align 8
  %20 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.static_pending_operation*, %struct.static_pending_operation** %2, align 8
  %23 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.static_pending_operation*, %struct.static_pending_operation** %2, align 8
  %28 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @zstrdup(i32 %29)
  %31 = load %struct.pending_operation*, %struct.pending_operation** %3, align 8
  %32 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.pending_operation*, %struct.pending_operation** %3, align 8
  %35 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %34, i32 0, i32 0
  %36 = load %struct.static_pending_operation*, %struct.static_pending_operation** %2, align 8
  %37 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 4)
  %39 = load %struct.pending_operation*, %struct.pending_operation** %3, align 8
  ret %struct.pending_operation* %39
}

declare dso_local %struct.pending_operation* @zmalloc0(i32) #1

declare dso_local i8* @zstrdup(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
