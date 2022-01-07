; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_data.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"padding block, length=%zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_writeout_data(i32* %0, %struct.csys_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csys_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.csys_block* %1, %struct.csys_block** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %10 = call i32 @block_writeout_file(i32* %8, %struct.csys_block* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %17 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %20 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %28 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %31 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @write_out_padding(i32* %25, i64 %26, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %15, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @block_writeout_file(i32*, %struct.csys_block*) #1

declare dso_local i32 @DBG(i32, i8*, i64) #1

declare dso_local i32 @write_out_padding(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
