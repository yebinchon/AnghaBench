; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_store_link_val.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_store_link_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nlattr = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port_link* }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32, i32 }

@SWITCH_LINK_ATTR_MAX = common dso_local global i32 0, align 4
@link_policy = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_LINK = common dso_local global i64 0, align 8
@SWITCH_LINK_FLAG_DUPLEX = common dso_local global i64 0, align 8
@SWITCH_LINK_FLAG_ANEG = common dso_local global i64 0, align 8
@SWITCH_LINK_FLAG_TX_FLOW = common dso_local global i64 0, align 8
@SWITCH_LINK_FLAG_RX_FLOW = common dso_local global i64 0, align 8
@SWITCH_LINK_SPEED = common dso_local global i64 0, align 8
@SWITCH_LINK_FLAG_EEE_100BASET = common dso_local global i64 0, align 8
@SWLIB_LINK_FLAG_EEE_100BASET = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_EEE_1000BASET = common dso_local global i64 0, align 8
@SWLIB_LINK_FLAG_EEE_1000BASET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, %struct.nlattr*, %struct.switch_val*)* @store_link_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_link_val(%struct.nl_msg* %0, %struct.nlattr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.switch_port_link*, align 8
  %10 = alloca i32, align 4
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %11 = load i32, i32* @SWITCH_LINK_ATTR_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %17 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.switch_port_link*, %struct.switch_port_link** %18, align 8
  %20 = icmp ne %struct.switch_port_link* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = call %struct.switch_port_link* @malloc(i32 28)
  %23 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.switch_port_link* %22, %struct.switch_port_link** %25, align 8
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @SWITCH_LINK_ATTR_MAX, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %29 = load i32, i32* @link_policy, align 4
  %30 = call i32 @nla_parse_nested(%struct.nlattr** %15, i32 %27, %struct.nlattr* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %114

34:                                               ; preds = %26
  %35 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %36 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.switch_port_link*, %struct.switch_port_link** %37, align 8
  store %struct.switch_port_link* %38, %struct.switch_port_link** %9, align 8
  %39 = load i64, i64* @SWITCH_LINK_FLAG_LINK, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %47 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* @SWITCH_LINK_FLAG_DUPLEX, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %56 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* @SWITCH_LINK_FLAG_ANEG, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %65 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* @SWITCH_LINK_FLAG_TX_FLOW, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %74 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* @SWITCH_LINK_FLAG_RX_FLOW, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %83 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* @SWITCH_LINK_SPEED, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @nla_get_u32(%struct.nlattr* %86)
  %88 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %89 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %91 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %90, i32 0, i32 5
  store i32 0, i32* %91, align 4
  %92 = load i64, i64* @SWITCH_LINK_FLAG_EEE_100BASET, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %34
  %97 = load i32, i32* @SWLIB_LINK_FLAG_EEE_100BASET, align 4
  %98 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %99 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %34
  %103 = load i64, i64* @SWITCH_LINK_FLAG_EEE_1000BASET, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @SWLIB_LINK_FLAG_EEE_1000BASET, align 4
  %109 = load %struct.switch_port_link*, %struct.switch_port_link** %9, align 8
  %110 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  br label %114

114:                                              ; preds = %113, %33
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %116)
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.switch_port_link* @malloc(i32) #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
