; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"card reset failed!\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get loader version\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"loader version is %08x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"microcode failure\00", align 1
@cmds = common dso_local global i32 0, align 4
@txs = common dso_local global i32 0, align 4
@rxs = common dso_local global i32 0, align 4
@rxs_bs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to get memory for queues\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"adapter did not accept queues\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @amb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amb_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @amb_reset(i32* %6, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @KERN_ERR, align 4
  %11 = call i32 (i32, i8*, ...) @PRINTK(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %60

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fixup_plx_window(i32* %13, i32* %4)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @get_loader_version(i32* %4, i32* %15, i32* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = call i32 (i32, i8*, ...) @PRINTK(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %59

21:                                               ; preds = %12
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i8*, ...) @PRINTK(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @ucode_init(i32* %4, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = call i32 (i32, i8*, ...) @PRINTK(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %56

31:                                               ; preds = %21
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @cmds, align 4
  %34 = load i32, i32* @txs, align 4
  %35 = load i32, i32* @rxs, align 4
  %36 = load i32, i32* @rxs_bs, align 4
  %37 = call i64 @create_queues(i32* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = call i32 (i32, i8*, ...) @PRINTK(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %55

42:                                               ; preds = %31
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @amb_talk(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = call i32 (i32, i8*, ...) @PRINTK(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @amb_ucode_version(i32* %50)
  store i32 0, i32* %2, align 4
  br label %63

52:                                               ; preds = %46
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @destroy_queues(i32* %53)
  br label %55

55:                                               ; preds = %52, %39
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @amb_reset(i32* %57, i32 0)
  br label %59

59:                                               ; preds = %56, %18
  br label %60

60:                                               ; preds = %59, %9
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @amb_reset(i32*, i32) #1

declare dso_local i32 @PRINTK(i32, i8*, ...) #1

declare dso_local i32 @fixup_plx_window(i32*, i32*) #1

declare dso_local i64 @get_loader_version(i32*, i32*, i32*) #1

declare dso_local i64 @ucode_init(i32*, i32*) #1

declare dso_local i64 @create_queues(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @amb_talk(i32*) #1

declare dso_local i32 @amb_ucode_version(i32*) #1

declare dso_local i32 @destroy_queues(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
