; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_hdr.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i64, i64, i64, i64, i32 }
%struct.csys_header = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"writing header for block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_writeout_hdr(i32* %0, %struct.csys_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csys_block*, align 8
  %6 = alloca %struct.csys_header, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.csys_block* %1, %struct.csys_block** %5, align 8
  %8 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %9 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.csys_header, %struct.csys_header* %6, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %17 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @memcpy(i32 %15, i32 %18, i32 4)
  %20 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %21 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @HOST_TO_LE32(i64 %22)
  %24 = getelementptr inbounds %struct.csys_header, %struct.csys_header* %6, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %26 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %29 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %33 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i8* @HOST_TO_LE32(i64 %35)
  %37 = getelementptr inbounds %struct.csys_header, %struct.csys_header* %6, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = bitcast %struct.csys_header* %6 to i32*
  %41 = call i32 @write_out_data(i32* %39, i32* %40, i32 24, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %13, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @HOST_TO_LE32(i64) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @write_out_data(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
