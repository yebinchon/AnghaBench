; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_coredump.c_do_coredump_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_coredump.c_do_coredump_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.spu_context*, i8*, i64, i32*)*, i32 (%struct.spu_context*)* }
%struct.spu_context = type { i32 }

@spufs_coredump_read = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"0x%.16llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.spu_context*, i8*, i64, i32*)* @do_coredump_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_coredump_read(i32 %0, %struct.spu_context* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spu_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.spu_context* %1, %struct.spu_context** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.spu_context*, i8*, i64, i32*)*, i64 (%struct.spu_context*, i8*, i64, i32*)** %18, align 8
  %20 = icmp ne i64 (%struct.spu_context*, i8*, i64, i32*)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64 (%struct.spu_context*, i8*, i64, i32*)*, i64 (%struct.spu_context*, i8*, i64, i32*)** %26, align 8
  %28 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i64 %27(%struct.spu_context* %28, i8* %29, i64 %30, i32* %31)
  store i64 %32, i64* %6, align 8
  br label %56

33:                                               ; preds = %5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %38, align 8
  %40 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %41 = call i32 %39(%struct.spu_context* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %10, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %6, align 8
  br label %56

52:                                               ; preds = %33
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %52, %50, %21
  %57 = load i64, i64* %6, align 8
  ret i64 %57
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
