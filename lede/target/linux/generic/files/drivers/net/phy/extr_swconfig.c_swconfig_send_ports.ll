; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.swconfig_callback = type { i32, %struct.sk_buff*, i32*, i32 (%struct.swconfig_callback*, i32*)*, i32, %struct.genl_info* }

@EINVAL = common dso_local global i32 0, align 4
@swconfig_send_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, %struct.genl_info*, i32, %struct.switch_val*)* @swconfig_send_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_send_ports(%struct.sk_buff** %0, %struct.genl_info* %1, i32 %2, %struct.switch_val* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_val*, align 8
  %10 = alloca %struct.swconfig_callback, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %6, align 8
  store %struct.genl_info* %1, %struct.genl_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.switch_val* %3, %struct.switch_val** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.switch_val*, %struct.switch_val** %9, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = call i32 @memset(%struct.swconfig_callback* %10, i32 0, i32 48)
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 1
  store %struct.sk_buff* %26, %struct.sk_buff** %27, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %29 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 5
  store %struct.genl_info* %28, %struct.genl_info** %29, align 8
  %30 = load i32, i32* @swconfig_send_port, align 4
  %31 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 3
  store i32 (%struct.swconfig_callback*, i32*)* @swconfig_close_portlist, i32 (%struct.swconfig_callback*, i32*)** %32, align 8
  %33 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nla_nest_start(%struct.sk_buff* %34, i32 %36)
  %38 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %37, i32* %40, align 4
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %60, %21
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.switch_val*, %struct.switch_val** %9, align 8
  %44 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.switch_val*, %struct.switch_val** %9, align 8
  %49 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @swconfig_send_multipart(%struct.swconfig_callback* %10, i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %71

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %41

63:                                               ; preds = %41
  %64 = load %struct.switch_val*, %struct.switch_val** %9, align 8
  %65 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %11, align 4
  %67 = call i32 @swconfig_close_portlist(%struct.swconfig_callback* %10, i32* null)
  %68 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 1
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  %70 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %70, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %18
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @memset(%struct.swconfig_callback*, i32, i32) #1

declare dso_local i32 @swconfig_close_portlist(%struct.swconfig_callback*, i32*) #1

declare dso_local i32 @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @swconfig_send_multipart(%struct.swconfig_callback*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
