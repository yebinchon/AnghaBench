; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-hubio.c_hub_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-hubio.c_hub_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@IIO_OUTWIDGET_ACCESS = common dso_local global i32 0, align 4
@IIO_WCR = common dso_local global i32 0, align 4
@HUB_WIDGET_ID_MIN = common dso_local global i32 0, align 4
@HUB_WIDGET_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hub_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_set_piomode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @IIO_OUTWIDGET_ACCESS, align 4
  %8 = call i8* @REMOTE_HUB_L(i32 %6, i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @IIO_OUTWIDGET_ACCESS, align 4
  %11 = call i32 @REMOTE_HUB_S(i32 %9, i32 %10, i8* null)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @IIO_WCR, align 4
  %14 = call i8* @REMOTE_HUB_L(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @hub_setup_prb(i32 %20, i32 0, i32 3)
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @hub_setup_prb(i32 %23, i32 0, i32 1)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @HUB_WIDGET_ID_MIN, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %35, %25
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HUB_WIDGET_ID_MAX, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @hub_setup_prb(i32 %32, i32 %33, i32 3)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @IIO_OUTWIDGET_ACCESS, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @REMOTE_HUB_S(i32 %39, i32 %40, i8* %41)
  ret void
}

declare dso_local i8* @REMOTE_HUB_L(i32, i32) #1

declare dso_local i32 @REMOTE_HUB_S(i32, i32, i8*) #1

declare dso_local i32 @hub_setup_prb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
