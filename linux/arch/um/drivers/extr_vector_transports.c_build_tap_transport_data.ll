; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_tap_transport_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_tap_transport_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, i32, %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@raw_form_header = common dso_local global i32 0, align 4
@raw_verify_header = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"tap: using vnet headers for tso and tx/rx checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*)* @build_tap_transport_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_tap_transport_data(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %4 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %5 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %4, i32 0, i32 5
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @uml_tap_enable_vnet_headers(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %13 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %12, i32 0, i32 4
  store i32* @raw_form_header, i32** %13, align 8
  %14 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %15 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %14, i32 0, i32 3
  store i32* @raw_verify_header, i32** %15, align 8
  %16 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %17 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %16, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %19 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %18, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* @NETIF_F_TSO, align 4
  %21 = load i32, i32* @NETIF_F_GSO, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NETIF_F_GRO, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %26 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %32 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NETIF_F_TSO, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NETIF_F_GSO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NETIF_F_GRO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %41 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %47 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @netdev_info(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @uml_tap_enable_vnet_headers(i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
