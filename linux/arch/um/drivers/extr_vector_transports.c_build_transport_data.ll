; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_transport_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_transport_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"transport\00", align 1
@TRANS_GRE = common dso_local global i32 0, align 4
@TRANS_GRE_LEN = common dso_local global i32 0, align 4
@TRANS_L2TPV3 = common dso_local global i32 0, align 4
@TRANS_L2TPV3_LEN = common dso_local global i32 0, align 4
@TRANS_RAW = common dso_local global i32 0, align 4
@TRANS_RAW_LEN = common dso_local global i32 0, align 4
@TRANS_TAP = common dso_local global i32 0, align 4
@TRANS_TAP_LEN = common dso_local global i32 0, align 4
@TRANS_HYBRID = common dso_local global i32 0, align 4
@TRANS_HYBRID_LEN = common dso_local global i32 0, align 4
@TRANS_BESS = common dso_local global i32 0, align 4
@TRANS_BESS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_transport_data(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca i8*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %5 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %6 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @uml_vector_fetch_arg(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @TRANS_GRE, align 4
  %11 = load i32, i32* @TRANS_GRE_LEN, align 4
  %12 = call i64 @strncmp(i8* %9, i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %16 = call i32 @build_gre_transport_data(%struct.vector_private* %15)
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @TRANS_L2TPV3, align 4
  %20 = load i32, i32* @TRANS_L2TPV3_LEN, align 4
  %21 = call i64 @strncmp(i8* %18, i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %25 = call i32 @build_l2tpv3_transport_data(%struct.vector_private* %24)
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @TRANS_RAW, align 4
  %29 = load i32, i32* @TRANS_RAW_LEN, align 4
  %30 = call i64 @strncmp(i8* %27, i32 %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %34 = call i32 @build_raw_transport_data(%struct.vector_private* %33)
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @TRANS_TAP, align 4
  %38 = load i32, i32* @TRANS_TAP_LEN, align 4
  %39 = call i64 @strncmp(i8* %36, i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %43 = call i32 @build_tap_transport_data(%struct.vector_private* %42)
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @TRANS_HYBRID, align 4
  %47 = load i32, i32* @TRANS_HYBRID_LEN, align 4
  %48 = call i64 @strncmp(i8* %45, i32 %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %52 = call i32 @build_hybrid_transport_data(%struct.vector_private* %51)
  store i32 %52, i32* %2, align 4
  br label %63

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @TRANS_BESS, align 4
  %56 = load i32, i32* @TRANS_BESS_LEN, align 4
  %57 = call i64 @strncmp(i8* %54, i32 %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %61 = call i32 @build_bess_transport_data(%struct.vector_private* %60)
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59, %50, %41, %32, %23, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @uml_vector_fetch_arg(i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @build_gre_transport_data(%struct.vector_private*) #1

declare dso_local i32 @build_l2tpv3_transport_data(%struct.vector_private*) #1

declare dso_local i32 @build_raw_transport_data(%struct.vector_private*) #1

declare dso_local i32 @build_tap_transport_data(%struct.vector_private*) #1

declare dso_local i32 @build_hybrid_transport_data(%struct.vector_private*) #1

declare dso_local i32 @build_bess_transport_data(%struct.vector_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
