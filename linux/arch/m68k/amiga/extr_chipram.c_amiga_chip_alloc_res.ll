; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_chipram.c_amiga_chip_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_chipram.c_amiga_chip_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"amiga_chip_alloc_res: allocate %lu bytes\0A\00", align 1
@chipram_res = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"amiga_chip_alloc_res: allocate_resource() failed %d!\0A\00", align 1
@chipavail = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"amiga_chip_alloc_res: returning %pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @amiga_chip_alloc_res(i64 %0, %struct.resource* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @PAGE_ALIGN(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.resource*, %struct.resource** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @UINT_MAX, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @allocate_resource(i32* @chipram_res, %struct.resource* %11, i64 %12, i32 0, i32 %13, i32 %14, i32* null, i32* null)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i8* null, i8** %3, align 8
  br label %30

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @atomic_sub(i64 %22, i32* @chipavail)
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %24)
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @ZTWO_VADDR(i32 %28)
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i8* @ZTWO_VADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
