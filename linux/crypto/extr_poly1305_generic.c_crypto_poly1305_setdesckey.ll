; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_crypto_poly1305_setdesckey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_crypto_poly1305_setdesckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poly1305_desc_ctx = type { i32, i32, i8**, i32 }

@POLY1305_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_poly1305_setdesckey(%struct.poly1305_desc_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.poly1305_desc_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.poly1305_desc_ctx* %0, %struct.poly1305_desc_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %77, label %11

11:                                               ; preds = %3
  %12 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %21, i32 0, i32 3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @poly1305_core_setkey(i32* %22, i32* %23)
  %25 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %5, align 8
  %29 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %20, %16, %11
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i8* @get_unaligned_le32(i32* %40)
  %42 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %41, i8** %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = call i8* @get_unaligned_le32(i32* %47)
  %49 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %48, i8** %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = call i8* @get_unaligned_le32(i32* %54)
  %56 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  store i8* %55, i8** %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  %62 = call i8* @get_unaligned_le32(i32* %61)
  %63 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 3
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %38, %34
  br label %77

77:                                               ; preds = %76, %3
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @poly1305_core_setkey(i32*, i32*) #1

declare dso_local i8* @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
