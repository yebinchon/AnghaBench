; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i32, %struct.csum_state*, i32, i32, i32 }
%struct.csum_state = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"writing block, file=%s, file_size=%d, space=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_writeout(i32* %0, %struct.csys_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csys_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csum_state, align 4
  store i32* %0, i32** %4, align 8
  store %struct.csys_block* %1, %struct.csys_block** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %9 = icmp eq %struct.csys_block* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %14 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %13, i32 0, i32 1
  store %struct.csum_state* null, %struct.csum_state** %14, align 8
  %15 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %16 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %19 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %22 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %27 = call i32 @block_writeout_hdr(i32* %25, %struct.csys_block* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %12
  %33 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %34 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %39 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %38, i32 0, i32 1
  store %struct.csum_state* %7, %struct.csum_state** %39, align 8
  %40 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %41 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @csum_init(%struct.csum_state* %7, i32 %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %47 = call i32 @block_writeout_data(i32* %45, %struct.csys_block* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %55 = call i32 @block_writeout_csum(i32* %53, %struct.csys_block* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %50, %30, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @block_writeout_hdr(i32*, %struct.csys_block*) #1

declare dso_local i32 @csum_init(%struct.csum_state*, i32) #1

declare dso_local i32 @block_writeout_data(i32*, %struct.csys_block*) #1

declare dso_local i32 @block_writeout_csum(i32*, %struct.csys_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
