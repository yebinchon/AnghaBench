; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_md5-glue.c_ppc_md5_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_md5-glue.c_ppc_md5_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_state = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ppc_md5_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_md5_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md5_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %13 = call %struct.md5_state* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.md5_state* %13, %struct.md5_state** %8, align 8
  %14 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %15 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 63
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub i32 64, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %23 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %31 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i8* %36, i32* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %95

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %45 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i8* %50, i32* %51, i32 %52)
  %54 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %55 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %58 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ppc_md5_transform(i32 %56, i32* %60, i32 1)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %11, align 8
  br label %69

69:                                               ; preds = %43, %40
  %70 = load i32, i32* %7, align 4
  %71 = icmp ugt i32 %70, 63
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %74 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = lshr i32 %77, 6
  %79 = call i32 @ppc_md5_transform(i32 %75, i32* %76, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -64
  %82 = load i32*, i32** %11, align 8
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %11, align 8
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 63
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %72, %69
  %88 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %89 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i8* %91, i32* %92, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %29
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.md5_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ppc_md5_transform(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
