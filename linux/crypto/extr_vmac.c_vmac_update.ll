; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vmac_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_vmac.c_vmac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.vmac_tfm_ctx = type { i32 }
%struct.vmac_desc_ctx = type { i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@VMAC_NONCEBYTES = common dso_local global i32 0, align 4
@VMAC_NHBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @vmac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmac_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmac_tfm_ctx*, align 8
  %8 = alloca %struct.vmac_desc_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %11 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vmac_tfm_ctx* @crypto_shash_ctx(i32 %12)
  store %struct.vmac_tfm_ctx* %13, %struct.vmac_tfm_ctx** %7, align 8
  %14 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %15 = call %struct.vmac_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %14)
  store %struct.vmac_desc_ctx* %15, %struct.vmac_desc_ctx** %8, align 8
  %16 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VMAC_NONCEBYTES, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VMAC_NONCEBYTES, align 4
  %24 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %23, %26
  %28 = call i32 @min(i32 %22, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %21, %3
  %54 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @VMAC_NHBYTES, align 4
  %61 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  %65 = call i32 @min(i32 %59, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @memcpy(i32* %73, i32* %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VMAC_NHBYTES, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %58
  %95 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %7, align 8
  %96 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %97 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @vhash_blocks(%struct.vmac_tfm_ctx* %95, %struct.vmac_desc_ctx* %96, i32* %99, i32 1)
  %101 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %102 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %94, %58
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @VMAC_NHBYTES, align 4
  %107 = icmp uge i32 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @VMAC_NHBYTES, align 4
  %111 = call i32 @round_down(i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.vmac_tfm_ctx*, %struct.vmac_tfm_ctx** %7, align 8
  %113 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @VMAC_NHBYTES, align 4
  %117 = udiv i32 %115, %116
  %118 = call i32 @vhash_blocks(%struct.vmac_tfm_ctx* %112, %struct.vmac_desc_ctx* %113, i32* %114, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %108, %104
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %131 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @memcpy(i32* %132, i32* %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.vmac_desc_ctx*, %struct.vmac_desc_ctx** %8, align 8
  %138 = getelementptr inbounds %struct.vmac_desc_ctx, %struct.vmac_desc_ctx* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %129, %126
  ret i32 0
}

declare dso_local %struct.vmac_tfm_ctx* @crypto_shash_ctx(i32) #1

declare dso_local %struct.vmac_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vhash_blocks(%struct.vmac_tfm_ctx*, %struct.vmac_desc_ctx*, i32*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
