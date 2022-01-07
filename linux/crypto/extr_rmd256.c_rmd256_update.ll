; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rmd256.c_rmd256_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rmd256.c_rmd256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.rmd256_ctx = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @rmd256_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmd256_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rmd256_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = call %struct.rmd256_ctx* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.rmd256_ctx* %10, %struct.rmd256_ctx** %7, align 8
  %11 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 63
  %15 = sext i32 %14 to i64
  %16 = sub i64 8, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = sub i64 8, %31
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy(i8* %33, i32* %34, i32 %35)
  br label %92

37:                                               ; preds = %3
  %38 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = sub i64 8, %42
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @memcpy(i8* %44, i32* %45, i32 %46)
  %48 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @rmd256_transform(i32 %50, i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %66, %37
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp uge i64 %64, 8
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @memcpy(i8* %69, i32* %70, i32 8)
  %72 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @rmd256_transform(i32 %74, i8* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32* %80, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = sub i64 %82, 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %6, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load %struct.rmd256_ctx*, %struct.rmd256_ctx** %7, align 8
  %87 = getelementptr inbounds %struct.rmd256_ctx, %struct.rmd256_ctx* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @memcpy(i8* %88, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %26
  ret i32 0
}

declare dso_local %struct.rmd256_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @rmd256_transform(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
