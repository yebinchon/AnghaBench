; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_bulk_req_safe_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_bulk_req_safe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_thread_req = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"UBD IPC read returned a partial result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, [0 x %struct.io_thread_req*]*, %struct.io_thread_req**, i32*, i32)* @bulk_req_safe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bulk_req_safe_read(i32 %0, [0 x %struct.io_thread_req*]* %1, %struct.io_thread_req** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca [0 x %struct.io_thread_req*]*, align 8
  %8 = alloca %struct.io_thread_req**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store [0 x %struct.io_thread_req*]* %1, [0 x %struct.io_thread_req*]** %7, align 8
  store %struct.io_thread_req** %2, %struct.io_thread_req*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load [0 x %struct.io_thread_req*]*, [0 x %struct.io_thread_req*]** %7, align 8
  %18 = bitcast [0 x %struct.io_thread_req*]* %17 to i8*
  %19 = load %struct.io_thread_req**, %struct.io_thread_req*** %8, align 8
  %20 = bitcast %struct.io_thread_req** %19 to i8*
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memmove(i8* %18, i8* %20, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %16, %5
  %27 = load i32, i32* %6, align 4
  %28 = load [0 x %struct.io_thread_req*]*, [0 x %struct.io_thread_req*]** %7, align 8
  %29 = bitcast [0 x %struct.io_thread_req*]* %28 to i8*
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %36, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @os_read_file(i32 %27, i8* %33, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %26
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %50, 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = urem i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.io_thread_req**, %struct.io_thread_req*** %8, align 8
  %65 = bitcast %struct.io_thread_req** %64 to i8*
  %66 = load [0 x %struct.io_thread_req*]*, [0 x %struct.io_thread_req*]** %7, align 8
  %67 = bitcast [0 x %struct.io_thread_req*]* %66 to i8*
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = udiv i64 %69, 8
  %71 = mul i64 %70, 8
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memmove(i8* %65, i8* %72, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %76, %78
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %53, %45
  br label %83

81:                                               ; preds = %26
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @os_read_file(i32, i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
