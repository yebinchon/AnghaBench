; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_copy_iv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_copy_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_walk = type { i32, i32, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_walk*)* @blkcipher_copy_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_copy_iv(%struct.blkcipher_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blkcipher_walk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.blkcipher_walk* %0, %struct.blkcipher_walk** %3, align 8
  %8 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %9 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %14 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %15, 1
  %17 = call i32 @ALIGN(i64 %12, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %18, 2
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @max(i32 %24, i32 %27)
  %29 = add i32 %23, %28
  %30 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %31 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, 1
  %34 = sub i32 %29, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (...) @crypto_tfm_ctx_alignment()
  %39 = sub nsw i32 %38, 1
  %40 = xor i32 %39, -1
  %41 = and i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i64 @kmalloc(i32 %44, i32 %45)
  %47 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %48 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %50 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %1
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %94

56:                                               ; preds = %1
  %57 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %61 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, 1
  %64 = call i32 @ALIGN(i64 %59, i32 %63)
  %65 = zext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32* @blkcipher_get_spot(i32* %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32* @blkcipher_get_spot(i32* %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** %7, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %81 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @blkcipher_get_spot(i32* %79, i32 %82)
  store i32* %83, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %86 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %89 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32* %84, i32 %87, i32 %90)
  %92 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %93 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %56, %53
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32* @blkcipher_get_spot(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
