; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_md5.c_md5_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_md5.c_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_state = type { i64, i32* }

@MD5_H0 = common dso_local global i32 0, align 4
@MD5_H1 = common dso_local global i32 0, align 4
@MD5_H2 = common dso_local global i32 0, align 4
@MD5_H3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @md5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.md5_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %4 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %5 = call %struct.md5_state* @shash_desc_ctx(%struct.shash_desc* %4)
  store %struct.md5_state* %5, %struct.md5_state** %3, align 8
  %6 = load i32, i32* @MD5_H0, align 4
  %7 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %8 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* @MD5_H1, align 4
  %12 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %13 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @MD5_H2, align 4
  %17 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %18 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @MD5_H3, align 4
  %22 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %23 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %21, i32* %25, align 4
  %26 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %27 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret i32 0
}

declare dso_local %struct.md5_state* @shash_desc_ctx(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
