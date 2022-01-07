; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-mem.c_urb_priv_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-mem.c_urb_priv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb_priv = type { i32, i32, i32** }
%struct.admhcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb_priv* (%struct.admhcd*, i32, i32)* @urb_priv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb_priv* @urb_priv_alloc(%struct.admhcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.urb_priv*, align 8
  %5 = alloca %struct.admhcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb_priv*, align 8
  store %struct.admhcd* %0, %struct.admhcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = add i64 16, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.urb_priv* @kzalloc(i32 %13, i32 %14)
  store %struct.urb_priv* %15, %struct.urb_priv** %8, align 8
  %16 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %17 = icmp ne %struct.urb_priv* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %21 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %52, %19
  %23 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %24 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @td_alloc(%struct.admhcd* %29, i32 %30)
  %32 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %33 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %36 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %34, i64 %38
  store i32* %31, i32** %39, align 8
  %40 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %41 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %44 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %42, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  br label %62

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %54 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %22

57:                                               ; preds = %22
  %58 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %59 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %58, i32 0, i32 1
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  store %struct.urb_priv* %61, %struct.urb_priv** %4, align 8
  br label %67

62:                                               ; preds = %50
  %63 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %64 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %65 = call i32 @urb_priv_free(%struct.admhcd* %63, %struct.urb_priv* %64)
  br label %66

66:                                               ; preds = %62, %18
  store %struct.urb_priv* null, %struct.urb_priv** %4, align 8
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  ret %struct.urb_priv* %68
}

declare dso_local %struct.urb_priv* @kzalloc(i32, i32) #1

declare dso_local i32* @td_alloc(%struct.admhcd*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @urb_priv_free(%struct.admhcd*, %struct.urb_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
