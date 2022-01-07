; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.atm_vcc = type { i32*, %struct.atm_dev*, i32, %struct.TYPE_5__* }
%struct.atm_dev = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.atm_vcc* }

@atmtcp_v_dev_ops = common dso_local global i32 0, align 4
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@atmtcp_control_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @atmtcp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atm_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.atm_dev* null, %struct.atm_dev** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.atm_dev* @atm_dev_lookup(i32 %11)
  store %struct.atm_dev* %12, %struct.atm_dev** %6, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %15 = icmp ne %struct.atm_dev* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %18 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, @atmtcp_v_dev_ops
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %23 = call i32 @atm_dev_put(%struct.atm_dev* %22)
  %24 = load i32, i32* @EMEDIUMTYPE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %16
  %27 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %28 = call %struct.TYPE_6__* @PRIV(%struct.atm_dev* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %29, align 8
  %31 = icmp ne %struct.atm_vcc* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %34 = call i32 @atm_dev_put(%struct.atm_dev* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %26
  br label %46

38:                                               ; preds = %13
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @atmtcp_create(i32 %39, i32 0, %struct.atm_dev** %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %74

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %37
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %48 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %49 = call %struct.TYPE_6__* @PRIV(%struct.atm_dev* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store %struct.atm_vcc* %47, %struct.atm_vcc** %50, align 8
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %52 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %51, i32 0, i32 3
  store %struct.TYPE_5__* @atmtcp_control_dev, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %54 = call i32 @sk_atm(%struct.atm_vcc* %53)
  %55 = call i32 @vcc_insert_socket(i32 %54)
  %56 = load i32, i32* @ATM_VF_META, align 4
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %58 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %57, i32 0, i32 2
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load i32, i32* @ATM_VF_READY, align 4
  %61 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %62 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %61, i32 0, i32 2
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %66 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %65, i32 0, i32 1
  store %struct.atm_dev* %64, %struct.atm_dev** %66, align 8
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %68 = call i32 @atm_init_aal5(%struct.atm_vcc* %67)
  %69 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %70 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %69, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @atmtcp_control_dev, i32 0, i32 0, i32 0), i32** %70, align 8
  %71 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %72 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %46, %43, %32, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.atm_dev* @atm_dev_lookup(i32) #1

declare dso_local i32 @atm_dev_put(%struct.atm_dev*) #1

declare dso_local %struct.TYPE_6__* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @atmtcp_create(i32, i32, %struct.atm_dev**) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atm_init_aal5(%struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
