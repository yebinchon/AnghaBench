; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_operation = type { i32, i32, i8*, i8* }
%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pending_operation* @pending_operation_create(i32 %0, i8* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.pending_operation*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.stat* %3, %struct.stat** %8, align 8
  %10 = call %struct.pending_operation* @zmalloc0(i32 24)
  store %struct.pending_operation* %10, %struct.pending_operation** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pending_operation*, %struct.pending_operation** %9, align 8
  %13 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @zstrdup(i8* %17)
  %19 = load %struct.pending_operation*, %struct.pending_operation** %9, align 8
  %20 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @zstrdup(i8* %25)
  %27 = load %struct.pending_operation*, %struct.pending_operation** %9, align 8
  %28 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.stat*, %struct.stat** %8, align 8
  %31 = icmp ne %struct.stat* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.pending_operation*, %struct.pending_operation** %9, align 8
  %34 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %33, i32 0, i32 1
  %35 = load %struct.stat*, %struct.stat** %8, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.stat* %35, i32 4)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.pending_operation*, %struct.pending_operation** %9, align 8
  ret %struct.pending_operation* %38
}

declare dso_local %struct.pending_operation* @zmalloc0(i32) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
