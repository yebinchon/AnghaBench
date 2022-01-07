; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_l2tpv3_form_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_l2tpv3_form_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vector_private = type { %struct.uml_l2tpv3_data* }
%struct.uml_l2tpv3_data = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@L2TPV3_DATA_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sk_buff*, %struct.vector_private*)* @l2tpv3_form_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tpv3_form_header(i32* %0, %struct.sk_buff* %1, %struct.vector_private* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vector_private*, align 8
  %7 = alloca %struct.uml_l2tpv3_data*, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.vector_private* %2, %struct.vector_private** %6, align 8
  %9 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %10 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %9, i32 0, i32 0
  %11 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %10, align 8
  store %struct.uml_l2tpv3_data* %11, %struct.uml_l2tpv3_data** %7, align 8
  %12 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %13 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @L2TPV3_DATA_PACKET, align 4
  %18 = call i64 @cpu_to_be32(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to i64*
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %23 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %27 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = bitcast i32* %30 to i64*
  store i64 %24, i64* %31, align 8
  %32 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %33 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %21
  %37 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %38 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %43 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %47 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = bitcast i32* %50 to i64*
  store i64 %44, i64* %51, align 8
  br label %63

52:                                               ; preds = %36
  %53 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %54 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %58 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = bitcast i32* %61 to i64*
  store i64 %55, i64* %62, align 8
  br label %63

63:                                               ; preds = %52, %41
  br label %64

64:                                               ; preds = %63, %21
  %65 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %66 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %72 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = bitcast i32* %75 to i64*
  store i64* %76, i64** %8, align 8
  %77 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %78 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i64*, i64** %8, align 8
  store i64 0, i64* %82, align 8
  br label %93

83:                                               ; preds = %69
  %84 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %85 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %7, align 8
  %89 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @cpu_to_be32(i32 %90)
  %92 = load i64*, i64** %8, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %83, %81
  br label %94

94:                                               ; preds = %93, %64
  ret i32 0
}

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
