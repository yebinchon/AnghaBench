; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.ghash_desc_ctx = type { i32, i32*, i32 }
%struct.ghash_key = type { i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ghash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ghash_desc_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ghash_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %13 = call %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.ghash_desc_ctx* %13, %struct.ghash_desc_ctx** %7, align 8
  %14 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %24, %25
  %27 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %3
  %30 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %31 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ghash_key* @crypto_shash_ctx(i32 %32)
  store %struct.ghash_key* %33, %struct.ghash_key** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @memcpy(i32* %45, i32* %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %36, %29
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = urem i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.ghash_key*, %struct.ghash_key** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  br label %76

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32* [ %74, %71 ], [ null, %75 ]
  %78 = call i32 @ghash_do_update(i32 %63, i32 %66, i32* %67, %struct.ghash_key* %68, i32* %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %81 = mul i32 %79, %80
  %82 = load i32*, i32** %5, align 8
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %76, %3
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @memcpy(i32* %94, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %85
  ret i32 0
}

declare dso_local %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.ghash_key* @crypto_shash_ctx(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ghash_do_update(i32, i32, i32*, %struct.ghash_key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
