; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_process_files.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_process_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_block = type { i64, i64, i64, i64 }
%struct.stat = type { i64 }

@fw_num_blocks = common dso_local global i32 0, align 4
@fw_blocks = common dso_local global %struct.fw_block* null, align 8
@flash_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"block at 0x%08X is too big\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"file %s is too big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fw_block*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %77, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @fw_num_blocks, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %80

9:                                                ; preds = %5
  %10 = load %struct.fw_block*, %struct.fw_block** @fw_blocks, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %10, i64 %12
  store %struct.fw_block* %13, %struct.fw_block** %2, align 8
  %14 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %15 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %18 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load i64, i64* @flash_size, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %9
  %24 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %25 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @errmsg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 -1, i32* %1, align 4
  br label %81

28:                                               ; preds = %9
  %29 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %30 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %77

35:                                               ; preds = %28
  %36 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %37 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i64 @stat(i32* %39, %struct.stat* %3)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %44 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @errmsg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  store i32 -1, i32* %1, align 4
  br label %81

47:                                               ; preds = %35
  %48 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %49 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i64, i64* @flash_size, align 8
  %54 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %55 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %59 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %64 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %69 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @errmsg(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  store i32 -1, i32* %1, align 4
  br label %81

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %76 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %34
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %5

80:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %67, %42, %23
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @errmsg(i32, i8*, i64) #1

declare dso_local i64 @stat(i32*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
