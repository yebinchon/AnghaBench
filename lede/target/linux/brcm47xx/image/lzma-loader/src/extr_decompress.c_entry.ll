; ModuleID = '/home/carl/AnghaBench/lede/target/linux/brcm47xx/image/lzma-loader/src/extr_decompress.c_entry.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/brcm47xx/image/lzma-loader/src/extr_decompress.c_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.trx_header = type { i64, i32* }

@read_byte = common dso_local global i32 0, align 4
@BCM4710_FLASH = common dso_local global i32 0, align 4
@data = common dso_local global i8* null, align 8
@TRX_MAGIC = common dso_local global i64 0, align 8
@EDIMAX_PS_HEADER_MAGIC = common dso_local global i64 0, align 8
@EDIMAX_PS_HEADER_LEN = common dso_local global i32 0, align 4
@offset = common dso_local global i64 0, align 8
@workspace = common dso_local global i32 0, align 4
@LOADADDR = common dso_local global i64 0, align 8
@LZMA_RESULT_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @entry(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_3__, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %23 = load i32, i32* @read_byte, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @BCM4710_FLASH, align 4
  %26 = call i64 @KSEG1ADDR(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** @data, align 8
  br label %28

28:                                               ; preds = %45, %8
  %29 = load i8*, i8** @data, align 8
  %30 = bitcast i8* %29 to %struct.trx_header*
  %31 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TRX_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i8*, i8** @data, align 8
  %37 = bitcast i8* %36 to %struct.trx_header*
  %38 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EDIMAX_PS_HEADER_MAGIC, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi i1 [ false, %28 ], [ %41, %35 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** @data, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 65536
  store i8* %47, i8** @data, align 8
  br label %28

48:                                               ; preds = %42
  %49 = load i8*, i8** @data, align 8
  %50 = bitcast i8* %49 to %struct.trx_header*
  %51 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EDIMAX_PS_HEADER_MAGIC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @EDIMAX_PS_HEADER_LEN, align 4
  %57 = load i8*, i8** @data, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** @data, align 8
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i8*, i8** @data, align 8
  %62 = bitcast i8* %61 to %struct.trx_header*
  %63 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 65536
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load i8*, i8** @data, align 8
  %70 = bitcast i8* %69 to %struct.trx_header*
  %71 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** @data, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** @data, align 8
  br label %88

78:                                               ; preds = %60
  %79 = load i8*, i8** @data, align 8
  %80 = bitcast i8* %79 to %struct.trx_header*
  %81 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** @data, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** @data, align 8
  br label %88

88:                                               ; preds = %78, %68
  store i64 0, i64* @offset, align 8
  %89 = call i32 (...) @get_byte()
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = urem i32 %90, 9
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = udiv i32 %92, 9
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = urem i32 %94, 5
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %17, align 4
  %97 = udiv i32 %96, 5
  store i32 %97, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %103, %88
  %99 = load i32, i32* %17, align 4
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = call i32 (...) @get_byte()
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %17, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %98

106:                                              ; preds = %98
  %107 = call i32 (...) @get_byte()
  %108 = call i32 (...) @get_byte()
  %109 = shl i32 %108, 8
  %110 = add i32 %107, %109
  %111 = call i32 (...) @get_byte()
  %112 = shl i32 %111, 16
  %113 = add i32 %110, %112
  %114 = call i32 (...) @get_byte()
  %115 = shl i32 %114, 24
  %116 = add i32 %113, %115
  store i32 %116, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %122, %106
  %118 = load i32, i32* %17, align 4
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = call i32 (...) @get_byte()
  br label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %17, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %117

125:                                              ; preds = %117
  %126 = load i32, i32* @workspace, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i64, i64* @LOADADDR, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load i32, i32* %21, align 4
  %133 = call i64 @LzmaDecode(i32 %126, i32 -1, i32 %127, i32 %128, i32 %129, %struct.TYPE_3__* %22, i8* %131, i32 %132, i32* %17)
  %134 = load i64, i64* @LZMA_RESULT_OK, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %125
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @blast_dcache(i64 %137, i64 %138)
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @blast_icache(i64 %140, i64 %141)
  %143 = load i64, i64* @LOADADDR, align 8
  %144 = inttoptr i64 %143 to void (i64, i64, i64, i64)*
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %16, align 8
  call void %144(i64 %145, i64 %146, i64 %147, i64 %148)
  br label %149

149:                                              ; preds = %136, %125
  ret void
}

declare dso_local i64 @KSEG1ADDR(i32) #1

declare dso_local i32 @get_byte(...) #1

declare dso_local i64 @LzmaDecode(i32, i32, i32, i32, i32, %struct.TYPE_3__*, i8*, i32, i32*) #1

declare dso_local i32 @blast_dcache(i64, i64) #1

declare dso_local i32 @blast_icache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
