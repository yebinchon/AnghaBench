; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha_common.c_s390_sha_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha_common.c_s390_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_sha_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_sha_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.s390_sha_ctx* %12, %struct.s390_sha_ctx** %7, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @crypto_shash_blocksize(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = urem i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %97

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub i32 %44, %45
  %47 = call i32 @memcpy(i32* %42, i32* %43, i32 %46)
  %48 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @cpacf_kimd(i32 %50, i32 %53, i32* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub i32 %59, %60
  %62 = load i32*, i32** %5, align 8
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %36, %33
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp uge i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = udiv i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = mul i32 %77, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @cpacf_kimd(i32 %82, i32 %85, i32* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %74, %70
  br label %97

97:                                               ; preds = %96, %32
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %102 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @memcpy(i32* %106, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %100, %97
  ret i32 0
}

declare dso_local %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_blocksize(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpacf_kimd(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
