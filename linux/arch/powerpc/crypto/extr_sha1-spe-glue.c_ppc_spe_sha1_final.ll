; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_sha1-spe-glue.c_ppc_spe_sha1_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_sha1-spe-glue.c_ppc_spe_sha1_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_state = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @ppc_spe_sha1_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_spe_sha1_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha1_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %12 = call %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.sha1_state* %12, %struct.sha1_state** %5, align 8
  %13 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %14 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 63
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %18 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %7, align 8
  %24 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %25 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %24, i32 0, i32 2
  %26 = bitcast i64* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 56
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 55, %30
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  store i8 -128, i8* %32, align 1
  %34 = call i32 (...) @spe_begin()
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i8* %38, i32 0, i32 %42)
  %44 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %45 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %48 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ppc_spe_sha1_transform(i32* %46, i64 %49, i32 1)
  %51 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %52 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %7, align 8
  store i32 56, i32* %8, align 4
  br label %55

55:                                               ; preds = %37, %2
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @memset(i8* %56, i32 0, i32 %57)
  %59 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %60 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 3
  %63 = call i32 @cpu_to_be64(i32 %62)
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %66 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %69 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ppc_spe_sha1_transform(i32* %67, i64 %70, i32 1)
  %72 = call i32 (...) @spe_end()
  %73 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %74 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_be32(i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %82 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cpu_to_be32(i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %90 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cpu_to_be32(i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %98 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cpu_to_be32(i32 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %106 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cpu_to_be32(i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %114 = call i32 @ppc_sha1_clear_context(%struct.sha1_state* %113)
  ret i32 0
}

declare dso_local %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @spe_begin(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ppc_spe_sha1_transform(i32*, i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @spe_end(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ppc_sha1_clear_context(%struct.sha1_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
