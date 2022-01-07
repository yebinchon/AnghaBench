; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_lscsa_alloc.c_spu_alloc_lscsa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_lscsa_alloc.c_spu_alloc_lscsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { %struct.spu_lscsa* }
%struct.spu_lscsa = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@LS_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_alloc_lscsa(%struct.spu_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu_lscsa*, align 8
  %5 = alloca i8*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  %6 = call %struct.spu_lscsa* @vzalloc(i32 8)
  store %struct.spu_lscsa* %6, %struct.spu_lscsa** %4, align 8
  %7 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %8 = icmp ne %struct.spu_lscsa* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %14 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %15 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %14, i32 0, i32 0
  store %struct.spu_lscsa* %13, %struct.spu_lscsa** %15, align 8
  %16 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %17 = getelementptr inbounds %struct.spu_lscsa, %struct.spu_lscsa* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %32, %12
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.spu_lscsa*, %struct.spu_lscsa** %4, align 8
  %22 = getelementptr inbounds %struct.spu_lscsa, %struct.spu_lscsa* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @LS_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = icmp ult i8* %20, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @vmalloc_to_page(i8* %29)
  %31 = call i32 @SetPageReserved(i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.spu_lscsa* @vzalloc(i32) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
