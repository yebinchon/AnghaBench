; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-mem.c_urb_priv_free.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-mem.c_urb_priv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.admhcd = type { i32 }
%struct.urb_priv = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.admhcd*, %struct.urb_priv*)* @urb_priv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urb_priv_free(%struct.admhcd* %0, %struct.urb_priv* %1) #0 {
  %3 = alloca %struct.admhcd*, align 8
  %4 = alloca %struct.urb_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.admhcd* %0, %struct.admhcd** %3, align 8
  store %struct.urb_priv* %1, %struct.urb_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %9 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %14 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %23 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %24 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @td_free(%struct.admhcd* %22, i64 %29)
  br label %31

31:                                               ; preds = %21, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %37 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %36, i32 0, i32 1
  %38 = call i32 @list_del(i32* %37)
  %39 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %40 = call i32 @kfree(%struct.urb_priv* %39)
  ret void
}

declare dso_local i32 @td_free(%struct.admhcd*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.urb_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
