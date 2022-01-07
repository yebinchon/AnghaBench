; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-xtalk.c_xtalk_probe_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-xtalk.c_xtalk_probe_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IIO_LLP_CSR = common dso_local global i32 0, align 4
@IIO_LLP_CSR_IS_UP = common dso_local global i32 0, align 4
@WIDGET_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"xtalk:n%d/0 xbow widget\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"xtalk:n%d/0 unknown widget (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xtalk_probe_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtalk_probe_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @COMPACT_TO_NASID_NODEID(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IIO_LLP_CSR, align 4
  %11 = call i32 @REMOTE_HUB_L(i32 %9, i32 %10)
  store volatile i32 %11, i32* %3, align 4
  %12 = load volatile i32, i32* %3, align 4
  %13 = load volatile i32, i32* @IIO_LLP_CSR_IS_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %39

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @RAW_NODE_SWIN_BASE(i32 %18, i32 0)
  %20 = load i64, i64* @WIDGET_ID, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to i32*
  %23 = load volatile i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @XWIDGET_PART_NUM(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %35 [
    i32 130, label %27
    i32 129, label %30
    i32 128, label %30
  ]

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @bridge_platform_create(i32 %28, i32 8, i32 10)
  br label %39

30:                                               ; preds = %17, %17
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @xbow_probe(i32 %33)
  br label %39

35:                                               ; preds = %17
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %16, %35, %30, %27
  ret void
}

declare dso_local i32 @COMPACT_TO_NASID_NODEID(i32) #1

declare dso_local i32 @REMOTE_HUB_L(i32, i32) #1

declare dso_local i64 @RAW_NODE_SWIN_BASE(i32, i32) #1

declare dso_local i32 @XWIDGET_PART_NUM(i32) #1

declare dso_local i32 @bridge_platform_create(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @xbow_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
