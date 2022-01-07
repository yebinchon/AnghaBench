; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_decompress.c_decompress_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_decompress.c_decompress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"Looking for TRX header... \00", align 1
@flash_ofs = common dso_local global i64 0, align 8
@FLASH_BANK_SIZE = common dso_local global i64 0, align 8
@flash_base = common dso_local global i32* null, align 8
@TRX_MAGIC = common dso_local global i64 0, align 8
@TRX_ALIGN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"not found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"found at %08X, kernel:%08X len:%08X\0A\00", align 1
@flash_max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decompress_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress_init() #0 {
  %1 = alloca %struct.trx_header*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.trx_header* null, %struct.trx_header** %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @flash_ofs, align 8
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i64, i64* @flash_ofs, align 8
  %7 = load i64, i64* @FLASH_BANK_SIZE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i32*, i32** @flash_base, align 8
  %11 = load i64, i64* @flash_ofs, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i64 @read_le32(i32* %12)
  %14 = load i64, i64* @TRX_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i32*, i32** @flash_base, align 8
  %18 = load i64, i64* @flash_ofs, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = bitcast i32* %19 to %struct.trx_header*
  store %struct.trx_header* %20, %struct.trx_header** %1, align 8
  br label %26

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* @TRX_ALIGN, align 8
  %24 = load i64, i64* @flash_ofs, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* @flash_ofs, align 8
  br label %5

26:                                               ; preds = %16, %5
  %27 = load %struct.trx_header*, %struct.trx_header** %1, align 8
  %28 = icmp eq %struct.trx_header* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (...) @halt()
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.trx_header*, %struct.trx_header** %1, align 8
  %34 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i64 @read_le32(i32* %36)
  store i64 %37, i64* %2, align 8
  %38 = load i64, i64* %2, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %2, align 8
  %42 = icmp ugt i64 %41, 65536
  br i1 %42, label %43, label %56

43:                                               ; preds = %40, %32
  %44 = load i64, i64* %2, align 8
  %45 = load %struct.trx_header*, %struct.trx_header** %1, align 8
  %46 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i64 @read_le32(i32* %48)
  %50 = sub i64 %44, %49
  store i64 %50, i64* %3, align 8
  %51 = load %struct.trx_header*, %struct.trx_header** %1, align 8
  %52 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i64 @read_le32(i32* %54)
  store i64 %55, i64* %2, align 8
  br label %76

56:                                               ; preds = %40
  %57 = load %struct.trx_header*, %struct.trx_header** %1, align 8
  %58 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = call i64 @read_le32(i32* %60)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %2, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* %3, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %3, align 8
  br label %75

69:                                               ; preds = %56
  %70 = load %struct.trx_header*, %struct.trx_header** %1, align 8
  %71 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %70, i32 0, i32 0
  %72 = call i64 @read_le32(i32* %71)
  %73 = load i64, i64* %2, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %69, %65
  br label %76

76:                                               ; preds = %75, %43
  %77 = load i64, i64* @flash_ofs, align 8
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* @flash_ofs, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* @flash_ofs, align 8
  %84 = load i64, i64* @flash_ofs, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %84, %85
  store i64 %86, i64* @flash_max, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @read_le32(i32*) #1

declare dso_local i32 @halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
