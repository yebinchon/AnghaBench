; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_raw_transport_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_raw_transport_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, i32, %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@raw_form_header = common dso_local global i32 0, align 4
@raw_verify_header = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"raw: using vnet headers for tso and tx/rx checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*)* @build_raw_transport_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_raw_transport_data(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %4 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %5 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %4, i32 0, i32 5
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @uml_raw_enable_vnet_headers(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %1
  %12 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %13 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @uml_raw_enable_vnet_headers(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %56

20:                                               ; preds = %11
  %21 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %22 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %21, i32 0, i32 4
  store i32* @raw_form_header, i32** %22, align 8
  %23 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %24 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %23, i32 0, i32 3
  store i32* @raw_verify_header, i32** %24, align 8
  %25 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %26 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %28 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %27, i32 0, i32 1
  store i32 4, i32* %28, align 4
  %29 = load i32, i32* @NETIF_F_TSO, align 4
  %30 = load i32, i32* @NETIF_F_GRO, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %33 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %39 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NETIF_F_TSO, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NETIF_F_GRO, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %46 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %52 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @netdev_info(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @uml_raw_enable_vnet_headers(i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
