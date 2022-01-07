; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_graph_get_endpoint_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_graph_get_endpoint_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_endpoint = type { i64, i64, i32 }

@FWNODE_GRAPH_ENDPOINT_NEXT = common dso_local global i64 0, align 8
@FWNODE_GRAPH_DEVICE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @fwnode_graph_get_endpoint_by_id(%struct.fwnode_handle* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fwnode_handle*, align 8
  %11 = alloca %struct.fwnode_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fwnode_endpoint, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fwnode_handle*, align 8
  %18 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %10, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @FWNODE_GRAPH_ENDPOINT_NEXT, align 8
  %21 = and i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @FWNODE_GRAPH_DEVICE_DISABLED, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %87, %86, %71, %60, %54, %47, %4
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %32 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %30, %struct.fwnode_handle* %31)
  store %struct.fwnode_handle* %32, %struct.fwnode_handle** %10, align 8
  %33 = icmp ne %struct.fwnode_handle* %32, null
  br i1 %33, label %34, label %95

34:                                               ; preds = %29
  %35 = bitcast %struct.fwnode_endpoint* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %40 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %39)
  store %struct.fwnode_handle* %40, %struct.fwnode_handle** %17, align 8
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %17, align 8
  %42 = call i32 @fwnode_device_is_available(%struct.fwnode_handle* %41)
  store i32 %42, i32* %18, align 4
  %43 = load %struct.fwnode_handle*, %struct.fwnode_handle** %17, align 8
  %44 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %43)
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %29

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %51 = call i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* %50, %struct.fwnode_endpoint* %15)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %29

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %15, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %29

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %15, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  store %struct.fwnode_handle* %67, %struct.fwnode_handle** %5, align 8
  br label %97

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %29

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %15, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load %struct.fwnode_handle*, %struct.fwnode_handle** %11, align 8
  %79 = icmp ne %struct.fwnode_handle* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %15, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %72
  br label %29

87:                                               ; preds = %80, %77
  %88 = load %struct.fwnode_handle*, %struct.fwnode_handle** %11, align 8
  %89 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %88)
  %90 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %91 = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* %90)
  store %struct.fwnode_handle* %91, %struct.fwnode_handle** %11, align 8
  %92 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %15, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  br label %29

95:                                               ; preds = %29
  %96 = load %struct.fwnode_handle*, %struct.fwnode_handle** %11, align 8
  store %struct.fwnode_handle* %96, %struct.fwnode_handle** %5, align 8
  br label %97

97:                                               ; preds = %95, %66
  %98 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  ret %struct.fwnode_handle* %98
}

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle*, %struct.fwnode_handle*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_device_is_available(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle*, %struct.fwnode_endpoint*) #1

declare dso_local %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
