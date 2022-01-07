; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_md5_glue.c_md5_sparc64_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_md5_glue.c_md5_sparc64_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_state = type { i64, i8** }

@MD5_H0 = common dso_local global i32 0, align 4
@MD5_H1 = common dso_local global i32 0, align 4
@MD5_H2 = common dso_local global i32 0, align 4
@MD5_H3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @md5_sparc64_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_sparc64_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.md5_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %4 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %5 = call %struct.md5_state* @shash_desc_ctx(%struct.shash_desc* %4)
  store %struct.md5_state* %5, %struct.md5_state** %3, align 8
  %6 = load i32, i32* @MD5_H0, align 4
  %7 = call i8* @cpu_to_le32(i32 %6)
  %8 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %9 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %8, i32 0, i32 1
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* @MD5_H1, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %15 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* %13, i8** %17, align 8
  %18 = load i32, i32* @MD5_H2, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %21 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  store i8* %19, i8** %23, align 8
  %24 = load i32, i32* @MD5_H3, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %27 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  store i8* %25, i8** %29, align 8
  %30 = load %struct.md5_state*, %struct.md5_state** %3, align 8
  %31 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  ret i32 0
}

declare dso_local %struct.md5_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
