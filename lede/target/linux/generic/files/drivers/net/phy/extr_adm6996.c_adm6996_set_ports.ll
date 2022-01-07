; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_set_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.adm6996_priv = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"set_ports port_vlan %d ports\00", align 1
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @adm6996_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_set_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.adm6996_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %11 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %10)
  store %struct.adm6996_priv* %11, %struct.adm6996_priv** %5, align 8
  %12 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %13 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %16 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32* %18, i32** %6, align 8
  %19 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %20 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %23 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %27 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %6, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %77, %2
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %35 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %32
  %39 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %40 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.switch_port*, %struct.switch_port** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %42, i64 %44
  store %struct.switch_port* %45, %struct.switch_port** %9, align 8
  %46 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %47 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %38
  %54 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %55 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %62 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %66 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %53, %38
  %70 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %71 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %32

80:                                               ; preds = %32
  ret i32 0
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
