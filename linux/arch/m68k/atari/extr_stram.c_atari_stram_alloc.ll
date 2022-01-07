; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_stram.c_atari_stram_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_stram.c_atari_stram_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i8*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"atari_stram_alloc: allocate %lu bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@stram_pool = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"atari_stram_alloc: allocate_resource() failed %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"atari_stram_alloc: returning %pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @atari_stram_alloc(i64 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @PAGE_ALIGN(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.resource* @kzalloc(i32 16, i32 %12)
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %40

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @UINT_MAX, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @allocate_resource(i32* @stram_pool, %struct.resource* %21, i64 %22, i32 0, i32 %23, i32 %24, i32* null, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call i32 @kfree(%struct.resource* %31)
  store i8* null, i8** %3, align 8
  br label %40

33:                                               ; preds = %17
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %34)
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @atari_stram_to_virt(i32 %38)
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %33, %28, %16
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.resource*) #1

declare dso_local i8* @atari_stram_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
