; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_srr0_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_srr0_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.spu_lscsa* }
%struct.spu_lscsa = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @spufs_srr0_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_srr0_set(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca %struct.spu_lscsa*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.spu_context*
  store %struct.spu_context* %10, %struct.spu_context** %6, align 8
  %11 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.spu_lscsa*, %struct.spu_lscsa** %13, align 8
  store %struct.spu_lscsa* %14, %struct.spu_lscsa** %7, align 8
  %15 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %16 = call i32 @spu_acquire_saved(%struct.spu_context* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.spu_lscsa*, %struct.spu_lscsa** %7, align 8
  %24 = getelementptr inbounds %struct.spu_lscsa, %struct.spu_lscsa* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %22, i64* %27, align 8
  %28 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %29 = call i32 @spu_release_saved(%struct.spu_context* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @spu_acquire_saved(%struct.spu_context*) #1

declare dso_local i32 @spu_release_saved(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
