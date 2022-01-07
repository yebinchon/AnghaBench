; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_wp512.c_wp512_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_wp512.c_wp512_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.wp512_ctx = type { i32*, i32*, i32, i32, i32* }

@WP512_BLOCK_SIZE = common dso_local global i32 0, align 4
@WP512_LENGTHBYTES = common dso_local global i32 0, align 4
@WP512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @wp512_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wp512_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wp512_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %13 = call %struct.wp512_ctx* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.wp512_ctx* %13, %struct.wp512_ctx** %5, align 8
  %14 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %4, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 7
  %29 = lshr i32 128, %28
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %40 = load i32, i32* @WP512_LENGTHBYTES, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %2
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @memset(i32* %51, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %47, %43
  %57 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %58 = call i32 @wp512_process_buffer(%struct.wp512_ctx* %57)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %2
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %62 = load i32, i32* @WP512_LENGTHBYTES, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %71 = load i32, i32* @WP512_LENGTHBYTES, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @memset(i32* %69, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %65, %59
  %77 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %78 = load i32, i32* @WP512_LENGTHBYTES, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @WP512_BLOCK_SIZE, align 4
  %82 = load i32, i32* @WP512_LENGTHBYTES, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @WP512_LENGTHBYTES, align 4
  %88 = call i32 @memcpy(i32* %85, i32* %86, i32 %87)
  %89 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %90 = call i32 @wp512_process_buffer(%struct.wp512_ctx* %89)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %109, %76
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @WP512_DIGEST_SIZE, align 4
  %94 = sdiv i32 %93, 8
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cpu_to_be64(i32 %103)
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %115 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.wp512_ctx*, %struct.wp512_ctx** %5, align 8
  %118 = getelementptr inbounds %struct.wp512_ctx, %struct.wp512_ctx* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  ret i32 0
}

declare dso_local %struct.wp512_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wp512_process_buffer(%struct.wp512_ctx*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
