; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha256_glue.c_sha256_sparc64_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha256_glue.c_sha256_sparc64_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_state = type { i64, i32* }

@SHA256_H0 = common dso_local global i32 0, align 4
@SHA256_H1 = common dso_local global i32 0, align 4
@SHA256_H2 = common dso_local global i32 0, align 4
@SHA256_H3 = common dso_local global i32 0, align 4
@SHA256_H4 = common dso_local global i32 0, align 4
@SHA256_H5 = common dso_local global i32 0, align 4
@SHA256_H6 = common dso_local global i32 0, align 4
@SHA256_H7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @sha256_sparc64_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_sparc64_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.sha256_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %4 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %5 = call %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc* %4)
  store %struct.sha256_state* %5, %struct.sha256_state** %3, align 8
  %6 = load i32, i32* @SHA256_H0, align 4
  %7 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %8 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* @SHA256_H1, align 4
  %12 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %13 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @SHA256_H2, align 4
  %17 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %18 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @SHA256_H3, align 4
  %22 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %23 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @SHA256_H4, align 4
  %27 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %28 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @SHA256_H5, align 4
  %32 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %33 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @SHA256_H6, align 4
  %37 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %38 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @SHA256_H7, align 4
  %42 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %43 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 %41, i32* %45, align 4
  %46 = load %struct.sha256_state*, %struct.sha256_state** %3, align 8
  %47 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret i32 0
}

declare dso_local %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
