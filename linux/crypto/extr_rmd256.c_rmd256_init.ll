; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rmd256.c_rmd256_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rmd256.c_rmd256_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.rmd256_ctx = type { i32, i32*, i64 }

@RMD_H0 = common dso_local global i32 0, align 4
@RMD_H1 = common dso_local global i32 0, align 4
@RMD_H2 = common dso_local global i32 0, align 4
@RMD_H3 = common dso_local global i32 0, align 4
@RMD_H5 = common dso_local global i32 0, align 4
@RMD_H6 = common dso_local global i32 0, align 4
@RMD_H7 = common dso_local global i32 0, align 4
@RMD_H8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @rmd256_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmd256_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.rmd256_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %4 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %5 = call %struct.rmd256_ctx* @shash_desc_ctx(%struct.shash_desc* %4)
  store %struct.rmd256_ctx* %5, %struct.rmd256_ctx** %3, align 8
  %6 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @RMD_H0, align 4
  %9 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @RMD_H1, align 4
  %14 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @RMD_H2, align 4
  %19 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @RMD_H3, align 4
  %24 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @RMD_H5, align 4
  %29 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @RMD_H6, align 4
  %34 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @RMD_H7, align 4
  %39 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @RMD_H8, align 4
  %44 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  store i32 %43, i32* %47, align 4
  %48 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memset(i32 %50, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.rmd256_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
