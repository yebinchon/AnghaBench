; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_l2tpv3_verify_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_l2tpv3_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vector_private = type { i32, %struct.uml_l2tpv3_data* }
%struct.uml_l2tpv3_data = type { i32, i64, i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"uml_l2tpv3: unknown cookie id\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"uml_l2tpv3: session mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sk_buff*, %struct.vector_private*)* @l2tpv3_verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tpv3_verify_header(i32* %0, %struct.sk_buff* %1, %struct.vector_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vector_private*, align 8
  %8 = alloca %struct.uml_l2tpv3_data*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.vector_private* %2, %struct.vector_private** %7, align 8
  %11 = load %struct.vector_private*, %struct.vector_private** %7, align 8
  %12 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %11, i32 0, i32 1
  %13 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %12, align 8
  store %struct.uml_l2tpv3_data* %13, %struct.uml_l2tpv3_data** %8, align 8
  %14 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %15 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %20 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %5, align 8
  br label %26

26:                                               ; preds = %23, %18, %3
  %27 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %28 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %33 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %39 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %54

45:                                               ; preds = %31
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %48 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = bitcast i32* %51 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %45, %36
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %57 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = call i64 (...) @net_ratelimit()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.vector_private*, %struct.vector_private** %7, align 8
  %65 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %60
  store i32 -1, i32* %4, align 4
  br label %94

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %73 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = bitcast i32* %76 to i64*
  store i64* %77, i64** %9, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.uml_l2tpv3_data*, %struct.uml_l2tpv3_data** %8, align 8
  %81 = getelementptr inbounds %struct.uml_l2tpv3_data, %struct.uml_l2tpv3_data* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %70
  %85 = call i64 (...) @net_ratelimit()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.vector_private*, %struct.vector_private** %7, align 8
  %89 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @netdev_err(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %84
  store i32 -1, i32* %4, align 4
  br label %94

93:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %92, %68
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
