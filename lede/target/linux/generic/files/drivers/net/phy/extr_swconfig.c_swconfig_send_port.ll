; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_port.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_send_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swconfig_callback = type { %struct.nlattr**, i32, i32 }
%struct.nlattr = type { i32 }
%struct.switch_port = type { i32, i32 }

@SWITCH_ATTR_PORT = common dso_local global i32 0, align 4
@SWITCH_PORT_ID = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swconfig_callback*, i8*)* @swconfig_send_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_send_port(%struct.swconfig_callback* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swconfig_callback*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.switch_port*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.swconfig_callback* %0, %struct.swconfig_callback** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.switch_port*
  store %struct.switch_port* %9, %struct.switch_port** %6, align 8
  store %struct.nlattr* null, %struct.nlattr** %7, align 8
  %10 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %11 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %10, i32 0, i32 0
  %12 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 0
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %18 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %21 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @nla_nest_start(i32 %19, i32 %22)
  %24 = bitcast i8* %23 to %struct.nlattr*
  %25 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %26 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %25, i32 0, i32 0
  %27 = load %struct.nlattr**, %struct.nlattr*** %26, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 0
  store %struct.nlattr* %24, %struct.nlattr** %28, align 8
  %29 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %30 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %29, i32 0, i32 0
  %31 = load %struct.nlattr**, %struct.nlattr*** %30, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 0
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %97

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %39 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SWITCH_ATTR_PORT, align 4
  %42 = call i8* @nla_nest_start(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.nlattr*
  store %struct.nlattr* %43, %struct.nlattr** %7, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %87

47:                                               ; preds = %37
  %48 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %49 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SWITCH_PORT_ID, align 4
  %52 = load %struct.switch_port*, %struct.switch_port** %6, align 8
  %53 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u32(i32 %50, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %81

58:                                               ; preds = %47
  %59 = load %struct.switch_port*, %struct.switch_port** %6, align 8
  %60 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %68 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %71 = call i64 @nla_put_flag(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %81

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %77 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %80 = call i32 @nla_nest_end(i32 %78, %struct.nlattr* %79)
  store i32 0, i32* %3, align 4
  br label %97

81:                                               ; preds = %73, %57
  %82 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %83 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %86 = call i32 @nla_nest_cancel(i32 %84, %struct.nlattr* %85)
  br label %87

87:                                               ; preds = %81, %46
  %88 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %89 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %92 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %91, i32 0, i32 0
  %93 = load %struct.nlattr**, %struct.nlattr*** %92, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %93, i64 0
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i32 @nla_nest_cancel(i32 %90, %struct.nlattr* %95)
  store i32 -1, i32* %3, align 4
  br label %97

97:                                               ; preds = %87, %75, %35
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i8* @nla_nest_start(i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
