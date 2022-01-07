; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_zstd.c_zstd_comp_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_zstd.c_zstd_comp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zstd_ctx = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zstd_ctx*)* @zstd_comp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zstd_comp_init(%struct.zstd_ctx* %0) #0 {
  %2 = alloca %struct.zstd_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i64, align 8
  store %struct.zstd_ctx* %0, %struct.zstd_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @zstd_params()
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ZSTD_CCtxWorkspaceBound(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @vzalloc(i64 %11)
  %13 = load %struct.zstd_ctx*, %struct.zstd_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.zstd_ctx, %struct.zstd_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.zstd_ctx*, %struct.zstd_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.zstd_ctx, %struct.zstd_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.zstd_ctx*, %struct.zstd_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.zstd_ctx, %struct.zstd_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ZSTD_initCCtx(i32 %25, i64 %26)
  %28 = load %struct.zstd_ctx*, %struct.zstd_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.zstd_ctx, %struct.zstd_ctx* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.zstd_ctx*, %struct.zstd_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.zstd_ctx, %struct.zstd_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %40, %37, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39

40:                                               ; preds = %34
  %41 = load %struct.zstd_ctx*, %struct.zstd_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.zstd_ctx, %struct.zstd_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vfree(i32 %43)
  br label %38
}

declare dso_local i32 @zstd_params(...) #1

declare dso_local i64 @ZSTD_CCtxWorkspaceBound(i32) #1

declare dso_local i32 @vzalloc(i64) #1

declare dso_local i32 @ZSTD_initCCtx(i32, i64) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
