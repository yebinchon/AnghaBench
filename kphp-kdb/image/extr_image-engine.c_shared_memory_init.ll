; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_shared_memory_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_shared_memory_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_process_number = common dso_local global i64 0, align 8
@shm_no = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/img%d_%d_%d_%d\00", align 1
@now = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@SHM = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Couldn't create share memory object %s\0A%m\0A\00", align 1
@MAX_SHARED_MEMORY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"shm_unlink (%s) failed. %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shared_memory_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i64, i64* @max_process_number, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @max_process_number, align 8
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i64 [ %8, %7 ], [ -1, %9 ]
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @shm_no, align 4
  %13 = load i32, i32* @shm_no, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %72, %10
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @shm_no, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %23 = call i32 (...) @getpid()
  %24 = load i32, i32* @now, align 4
  %25 = load i32, i32* @port, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @snprintf(i8* %22, i32 126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 128
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %33
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = load i32, i32* @O_CREAT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @O_EXCL, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @shm_open(i8* %35, i32 %40, i32 416)
  %42 = load i64*, i64** @SHM, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64*, i64** @SHM, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %21
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %54 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* @shm_no, align 4
  store i32 0, i32* %1, align 4
  br label %76

56:                                               ; preds = %21
  %57 = load i64*, i64** @SHM, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @MAX_SHARED_MEMORY_SIZE, align 4
  %63 = call i32 @ftruncate(i64 %61, i32 %62)
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %65 = call i64 @shm_unlink(i8* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %69 = call i32 @kprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %2, align 4
  store i32 %70, i32* @shm_no, align 4
  store i32 0, i32* %1, align 4
  br label %76

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %17

75:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %76

76:                                               ; preds = %75, %67, %52
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @shm_open(i8*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i32 @ftruncate(i64, i32) #1

declare dso_local i64 @shm_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
