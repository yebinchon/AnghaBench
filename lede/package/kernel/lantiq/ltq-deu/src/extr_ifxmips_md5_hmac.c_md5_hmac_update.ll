; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5_hmac.c_md5_hmac_update.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5_hmac.c_md5_hmac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_hmac_ctx = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @md5_hmac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_hmac_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md5_hmac_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %11 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.md5_hmac_ctx* @crypto_shash_ctx(i32 %12)
  store %struct.md5_hmac_ctx* %13, %struct.md5_hmac_ctx** %8, align 8
  %14 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 63
  %18 = sext i32 %17 to i64
  %19 = sub i64 8, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = sub i64 8, %34
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i8* %36, i32* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %91

40:                                               ; preds = %3
  %41 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = sub i64 8, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @memcpy(i8* %47, i32* %48, i32 %49)
  %51 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %52 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @md5_hmac_transform(%struct.shash_desc* %51, i8* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %67, %40
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = icmp uge i64 %65, 8
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @memcpy(i8* %70, i32* %71, i32 8)
  %73 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %74 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @md5_hmac_transform(%struct.shash_desc* %73, i8* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  store i32* %79, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = sub i64 %81, 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @memcpy(i8* %87, i32* %88, i32 %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %29
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.md5_hmac_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @md5_hmac_transform(%struct.shash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
