; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm_aes_ctx = type { i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@pmull_ghash_update_p64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32*, %struct.gcm_aes_ctx*)* @gcm_update_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_update_mac(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, %struct.gcm_aes_ctx* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gcm_aes_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.gcm_aes_ctx* %5, %struct.gcm_aes_ctx** %12, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %20, %22
  %24 = call i32 @min(i32 %19, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @memcpy(i32* %29, i32* %30, i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %18, %6
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %12, align 8
  %61 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %60, i32 0, i32 0
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32*, i32** %10, align 8
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32* [ %66, %65 ], [ null, %67 ]
  %70 = load i32, i32* @pmull_ghash_update_p64, align 4
  %71 = call i32 @ghash_do_update(i32 %57, i32* %58, i32* %59, i32* %61, i32* %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32*, i32** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %79 = load i32, i32* %9, align 4
  %80 = srem i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %48
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @memcpy(i32* %86, i32* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %82
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ghash_do_update(i32, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
