; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_write_out_blocks.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_write_out_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i64 }

@boot_block = common dso_local global %struct.csys_block* null, align 8
@conf_block = common dso_local global %struct.csys_block* null, align 8
@webp_block = common dso_local global %struct.csys_block* null, align 8
@code_block = common dso_local global %struct.csys_block* null, align 8
@num_blocks = common dso_local global i32 0, align 4
@blocks = common dso_local global %struct.csys_block* null, align 8
@BLOCK_TYPE_XTRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_blocks(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.csys_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.csys_block*, %struct.csys_block** @boot_block, align 8
  %9 = call i32 @block_writeout(i32* %7, %struct.csys_block* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.csys_block*, %struct.csys_block** @conf_block, align 8
  %17 = call i32 @block_writeout(i32* %15, %struct.csys_block* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.csys_block*, %struct.csys_block** @webp_block, align 8
  %25 = call i32 @block_writeout(i32* %23, %struct.csys_block* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.csys_block*, %struct.csys_block** @code_block, align 8
  %33 = call i32 @block_writeout(i32* %31, %struct.csys_block* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @num_blocks, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.csys_block*, %struct.csys_block** @blocks, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %44, i64 %46
  store %struct.csys_block* %47, %struct.csys_block** %4, align 8
  %48 = load %struct.csys_block*, %struct.csys_block** %4, align 8
  %49 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BLOCK_TYPE_XTRA, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %62

54:                                               ; preds = %43
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.csys_block*, %struct.csys_block** %4, align 8
  %57 = call i32 @block_writeout(i32* %55, %struct.csys_block* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %65

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %39

65:                                               ; preds = %60, %39
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %36, %28, %20, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @block_writeout(i32*, %struct.csys_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
