; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvswitch.c_mvswitch_mangle_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvswitch.c_mvswitch_mangle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.mvswitch_priv* }
%struct.mvswitch_priv = type { i32* }
%struct.sk_buff = type { i8*, i32 }

@MV_TRAILER_SIZE = common dso_local global i8* null, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@MV_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @mvswitch_mangle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvswitch_mangle_rx(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mvswitch_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 -1, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %10, align 8
  store %struct.mvswitch_priv* %11, %struct.mvswitch_priv** %5, align 8
  %12 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %5, align 8
  %13 = icmp ne %struct.mvswitch_priv* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8*, i8** @MV_TRAILER_SIZE, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 128
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  br label %78

39:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %5, align 8
  %43 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 1, %51
  %53 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %5, align 8
  %54 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %52, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %78

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @ETH_P_8021Q, align 4
  %75 = call i32 @htons(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %73, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %71, %38, %18
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
