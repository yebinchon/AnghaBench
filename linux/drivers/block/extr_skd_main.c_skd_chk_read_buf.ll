; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_chk_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_chk_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32 }
%struct.skd_special_context = type { i8* }

@WR_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*, %struct.skd_special_context*)* @skd_chk_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_chk_read_buf(%struct.skd_device* %0, %struct.skd_special_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca %struct.skd_special_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %4, align 8
  store %struct.skd_special_context* %1, %struct.skd_special_context** %5, align 8
  %8 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %9 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @WR_BUF_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %31

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %11

30:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
