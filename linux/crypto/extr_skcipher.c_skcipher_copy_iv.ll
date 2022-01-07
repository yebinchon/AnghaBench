; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_copy_iv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_copy_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32, i32, i32, i32, i32 }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*)* @skcipher_copy_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_copy_iv(%struct.skcipher_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  %11 = call i32 (...) @crypto_tfm_ctx_alignment()
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %14 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %17 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %20 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  %25 = call i32 @ALIGN(i32 %22, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %31 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %55

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub i32 %46, 1
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %40, %36
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %58 = call i32 @skcipher_walk_gfp(%struct.skcipher_walk* %57)
  %59 = call i32 @kmalloc(i32 %56, i32 %58)
  %60 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %61 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %63 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %92

69:                                               ; preds = %55
  %70 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %71 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 1
  %75 = call i32* @PTR_ALIGN(i32 %72, i32 %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32* @skcipher_get_spot(i32* %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %84 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %87 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32* %82, i32 %85, i32 %88)
  %90 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %91 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %69, %66
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @skcipher_walk_gfp(%struct.skcipher_walk*) #1

declare dso_local i32* @PTR_ALIGN(i32, i32) #1

declare dso_local i32* @skcipher_get_spot(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
