; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_md5-glue.c_ppc_md5_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_md5-glue.c_ppc_md5_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_state = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @ppc_md5_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_md5_final(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.md5_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %13 = call %struct.md5_state* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.md5_state* %13, %struct.md5_state** %5, align 8
  %14 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %15 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 63
  store i32 %17, i32* %6, align 4
  %18 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %19 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub i32 55, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %29 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 56
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  store i8 -128, i8* %36, align 1
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %2
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i8* %41, i32 0, i32 %45)
  %47 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %48 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @ppc_md5_transform(i32* %49, i8* %50, i32 1)
  %52 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %53 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %8, align 8
  store i32 56, i32* %9, align 4
  br label %56

56:                                               ; preds = %40, %2
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @memset(i8* %57, i32 0, i32 %58)
  %60 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %61 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 3
  %64 = call i32 @cpu_to_le64(i32 %63)
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %67 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @ppc_md5_transform(i32* %68, i8* %69, i32 1)
  %71 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %72 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %80 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %88 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @cpu_to_le32(i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %96 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.md5_state*, %struct.md5_state** %5, align 8
  %104 = call i32 @ppc_md5_clear_context(%struct.md5_state* %103)
  ret i32 0
}

declare dso_local %struct.md5_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ppc_md5_transform(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ppc_md5_clear_context(%struct.md5_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
