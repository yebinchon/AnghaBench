; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_lscsa_alloc.c_spu_free_lscsa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_lscsa_alloc.c_spu_free_lscsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@LS_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_free_lscsa(%struct.spu_state* %0) #0 {
  %2 = alloca %struct.spu_state*, align 8
  %3 = alloca i8*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %2, align 8
  %4 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %5 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %11 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %30, %9
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %18 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @LS_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = icmp ult i8* %16, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @vmalloc_to_page(i8* %27)
  %29 = call i32 @ClearPageReserved(i32 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %3, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %37 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @vfree(%struct.TYPE_2__* %38)
  br label %40

40:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i32 @vfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
