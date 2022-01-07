; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_pic_host_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_pic_host_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@mpc8xx_pic_host_xlate.map_pic_senses = internal global [4 x i8] c"\82\80\81\83", align 1
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i32*, i32*)* @mpc8xx_pic_host_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xx_pic_host_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 31
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %44

19:                                               ; preds = %6
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %12, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* @mpc8xx_pic_host_xlate.map_pic_senses, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32*, i32** %13, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %26, %19
  %41 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %31
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
