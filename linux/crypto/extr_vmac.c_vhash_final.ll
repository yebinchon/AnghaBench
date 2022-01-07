; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vhash_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vhash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmac_tfm_ctx = type { i32*, i32*, i32 }
%struct.vmac_desc_ctx = type { i32, i64, i32, i32*, i32* }

@m62 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmac_tfm_ctx*, %struct.vmac_desc_ctx*)* @vhash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhash_final(%struct.vmac_tfm_ctx* %0, %struct.vmac_desc_ctx* %1) #0 {
  %3 = alloca %struct.vmac_tfm_ctx*, align 8
  %4 = alloca %struct.vmac_desc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmac_tfm_ctx* %0, %struct.vmac_tfm_ctx** %3, align 8
  store %struct.vmac_desc_ctx* %1, %struct.vmac_desc_ctx** %4, align 8
  %11 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @round_up(i32 %27, i32 16)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub i32 %35, %36
  %38 = call i32 @memset(i32* %34, i32 0, i32 %37)
  %39 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.vmac_tfm_ctx, %struct.vmac_tfm_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = udiv i32 %45, 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @nh_16(i32 %41, i32 %44, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @m62, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %26
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.vmac_tfm_ctx, %struct.vmac_tfm_ctx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.vmac_tfm_ctx, %struct.vmac_tfm_ctx* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @poly_step(i32 %58, i32 %59, i32 %64, i32 %69, i32 %70, i32 %71)
  br label %79

73:                                               ; preds = %26
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ADD128(i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %57
  br label %80

80:                                               ; preds = %79, %2
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.vmac_tfm_ctx, %struct.vmac_tfm_ctx* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.vmac_tfm_ctx, %struct.vmac_tfm_ctx* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = mul i32 %93, 8
  %95 = call i32 @l3hash(i32 %81, i32 %82, i32 %87, i32 %92, i32 %94)
  ret i32 %95
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nh_16(i32, i32, i32, i32, i32) #1

declare dso_local i32 @poly_step(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADD128(i32, i32, i32, i32) #1

declare dso_local i32 @l3hash(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
