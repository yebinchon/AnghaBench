; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_fill.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_pending_operation = type { i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_operation_fill(%struct.static_pending_operation* %0, i32 %1, i8* %2, i8* %3, %struct.stat* %4) #0 {
  %6 = alloca %struct.static_pending_operation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat*, align 8
  store %struct.static_pending_operation* %0, %struct.static_pending_operation** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.stat* %4, %struct.stat** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %13 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %15 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %14, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %17 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i64, i64* @PATH_MAX, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %28 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcpy(i32 %29, i8* %30)
  %32 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %33 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %20, %5
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = load i64, i64* @PATH_MAX, align 8
  %41 = icmp slt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %45 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcpy(i32 %46, i8* %47)
  %49 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %50 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %37, %34
  %52 = load %struct.stat*, %struct.stat** %10, align 8
  %53 = icmp ne %struct.stat* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.static_pending_operation*, %struct.static_pending_operation** %6, align 8
  %56 = getelementptr inbounds %struct.static_pending_operation, %struct.static_pending_operation* %55, i32 0, i32 3
  %57 = load %struct.stat*, %struct.stat** %10, align 8
  %58 = call i32 @memcpy(i32* %56, %struct.stat* %57, i32 4)
  br label %59

59:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
