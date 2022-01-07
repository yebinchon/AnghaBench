; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1_hmac.c_sha1_hmac_update.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1_hmac.c_sha1_hmac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_hmac_ctx = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha1_hmac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_hmac_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha1_hmac_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %11 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sha1_hmac_ctx* @crypto_shash_ctx(i32 %12)
  store %struct.sha1_hmac_ctx* %13, %struct.sha1_hmac_ctx** %7, align 8
  %14 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 3
  %18 = and i32 %17, 63
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 3
  %21 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %25, %26
  %28 = icmp ugt i32 %27, 63
  br i1 %28, label %29, label %61

29:                                               ; preds = %3
  %30 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub i32 64, %37
  store i32 %38, i32* %8, align 4
  %39 = call i32 @memcpy(i32* %35, i32* %36, i32 %38)
  %40 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %41 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @sha1_hmac_transform(%struct.shash_desc* %40, i32* %43)
  br label %45

45:                                               ; preds = %57, %29
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 63
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @sha1_hmac_transform(%struct.shash_desc* %51, i32* %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 64
  store i32 %59, i32* %8, align 4
  br label %45

60:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %62

61:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub i32 %73, %74
  %76 = call i32 @memcpy(i32* %68, i32* %72, i32 %75)
  ret i32 0
}

declare dso_local %struct.sha1_hmac_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha1_hmac_transform(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
