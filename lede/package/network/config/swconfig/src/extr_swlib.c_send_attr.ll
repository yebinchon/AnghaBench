; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_send_attr.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_send_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.switch_val = type { i32, %struct.switch_attr* }
%struct.switch_attr = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SWITCH_ATTR_ID = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_ID = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_PORT = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @send_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_attr(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.switch_attr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.switch_val*
  store %struct.switch_val* %9, %struct.switch_val** %6, align 8
  %10 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %11 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 1
  %12 = load %struct.switch_attr*, %struct.switch_attr** %11, align 8
  store %struct.switch_attr* %12, %struct.switch_attr** %7, align 8
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %14 = load i32, i32* @SWITCH_ATTR_ID, align 4
  %15 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %16 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @NLA_PUT_U32(%struct.nl_msg* %13, i32 %14, i32 %19)
  %21 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %22 = load i32, i32* @SWITCH_ATTR_OP_ID, align 4
  %23 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %24 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NLA_PUT_U32(%struct.nl_msg* %21, i32 %22, i32 %25)
  %27 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %28 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %44 [
    i32 129, label %30
    i32 128, label %37
  ]

30:                                               ; preds = %2
  %31 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %32 = load i32, i32* @SWITCH_ATTR_OP_PORT, align 4
  %33 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %34 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @NLA_PUT_U32(%struct.nl_msg* %31, i32 %32, i32 %35)
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %39 = load i32, i32* @SWITCH_ATTR_OP_VLAN, align 4
  %40 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %41 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @NLA_PUT_U32(%struct.nl_msg* %38, i32 %39, i32 %42)
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %37, %30
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @NLA_PUT_U32(%struct.nl_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
