; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/dec/prom/extr_memory.c_pmax_setup_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/dec/prom/extr_memory.c_pmax_setup_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CKSEG0 = common dso_local global i64 0, align 8
@genexcept_early = external dso_local global i8, align 1
@CKSEG1 = common dso_local global i64 0, align 8
@CHUNK_SIZE = common dso_local global i32 0, align 4
@mem_err = common dso_local global i64 0, align 8
@BOOT_MEM_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmax_setup_memory_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmax_setup_memory_region() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca [128 x i8], align 16
  %4 = bitcast [128 x i8]* %3 to i8*
  %5 = load i64, i64* @CKSEG0, align 8
  %6 = add nsw i64 %5, 128
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 (i8*, ...) @memcpy(i8* %4, i8* %7, i32 128)
  %9 = load i64, i64* @CKSEG0, align 8
  %10 = add nsw i64 %9, 128
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 (i8*, ...) @memcpy(i8* %11, i8* @genexcept_early, i32 128)
  %13 = load i64, i64* @CKSEG1, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* @CHUNK_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %1, align 8
  br label %18

18:                                               ; preds = %32, %0
  %19 = load i64, i64* @mem_err, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %1, align 8
  %23 = load i64, i64* @CKSEG1, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 31457280
  %26 = icmp ult i8* %22, %25
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = load i8*, i8** %1, align 8
  %31 = load volatile i8, i8* %30, align 1
  store volatile i8 %31, i8* %2, align 1
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @CHUNK_SIZE, align 4
  %34 = load i8*, i8** %1, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %1, align 8
  br label %18

37:                                               ; preds = %27
  %38 = load i64, i64* @CKSEG0, align 8
  %39 = add nsw i64 %38, 128
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (i8*, ...) @memcpy(i8* %40, [128 x i8]* %3, i32 128)
  %42 = load i8*, i8** %1, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i64, i64* @CKSEG1, align 8
  %45 = sub i64 %43, %44
  %46 = load i32, i32* @CHUNK_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %45, %47
  %49 = load i32, i32* @BOOT_MEM_RAM, align 4
  %50 = call i32 @add_memory_region(i32 0, i64 %48, i32 %49)
  ret void
}

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @add_memory_region(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
