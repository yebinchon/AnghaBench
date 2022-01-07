; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_setup_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_setup_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_queue = type { i32, %struct.nullb_cmd*, i8* }
%struct.nullb_cmd = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb_queue*)* @setup_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_commands(%struct.nullb_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nullb_queue*, align 8
  %4 = alloca %struct.nullb_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nullb_queue* %0, %struct.nullb_queue** %3, align 8
  %7 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %8 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kcalloc(i32 %9, i32 24, i32 %10)
  %12 = bitcast i8* %11 to %struct.nullb_cmd*
  %13 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %14 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %13, i32 0, i32 1
  store %struct.nullb_cmd* %12, %struct.nullb_cmd** %14, align 8
  %15 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %15, i32 0, i32 1
  %17 = load %struct.nullb_cmd*, %struct.nullb_cmd** %16, align 8
  %18 = icmp ne %struct.nullb_cmd* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BITS_PER_LONG, align 4
  %27 = call i32 @ALIGN(i32 %25, i32 %26)
  %28 = load i32, i32* @BITS_PER_LONG, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 8, i32 %31)
  %33 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %34 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %22
  %40 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %41 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %40, i32 0, i32 1
  %42 = load %struct.nullb_cmd*, %struct.nullb_cmd** %41, align 8
  %43 = call i32 @kfree(%struct.nullb_cmd* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %50 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %55 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %54, i32 0, i32 1
  %56 = load %struct.nullb_cmd*, %struct.nullb_cmd** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %56, i64 %58
  store %struct.nullb_cmd* %59, %struct.nullb_cmd** %4, align 8
  %60 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %60, i32 0, i32 2
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %47

71:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %39, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kfree(%struct.nullb_cmd*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
