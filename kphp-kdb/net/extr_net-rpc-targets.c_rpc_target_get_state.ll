; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_get_state.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { %struct.connection*, %struct.TYPE_3__* }
%struct.connection = type { i32, %struct.connection* }
%struct.TYPE_3__ = type { %struct.connection* }
%struct.process_id = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cr_ok = common dso_local global i32 0, align 4
@cr_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_target_get_state(%struct.rpc_target* %0, %struct.process_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_target*, align 8
  %5 = alloca %struct.process_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  store %struct.rpc_target* %0, %struct.rpc_target** %4, align 8
  store %struct.process_id* %1, %struct.process_id** %5, align 8
  %10 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %11 = icmp ne %struct.rpc_target* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

13:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  store i32 10000, i32* %7, align 4
  %14 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %13
  %19 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.connection*, %struct.connection** %22, align 8
  store %struct.connection* %23, %struct.connection** %9, align 8
  br label %24

24:                                               ; preds = %73, %18
  %25 = load %struct.connection*, %struct.connection** %9, align 8
  %26 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = bitcast %struct.TYPE_3__* %28 to %struct.connection*
  %30 = icmp ne %struct.connection* %25, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %24
  %32 = load %struct.connection*, %struct.connection** %9, align 8
  %33 = call i32 @server_check_ready(%struct.connection* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @cr_ok, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.process_id*, %struct.process_id** %5, align 8
  %39 = icmp ne %struct.process_id* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.connection*, %struct.connection** %9, align 8
  %42 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.process_id*, %struct.process_id** %5, align 8
  %45 = call i32 @matches_pid(i32* %43, %struct.process_id* %44)
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %37
  store i32 1, i32* %3, align 4
  br label %135

48:                                               ; preds = %40
  br label %72

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @cr_stopped, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.connection*, %struct.connection** %9, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.process_id*, %struct.process_id** %5, align 8
  %61 = icmp ne %struct.process_id* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.connection*, %struct.connection** %9, align 8
  %64 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.process_id*, %struct.process_id** %5, align 8
  %67 = call i32 @matches_pid(i32* %65, %struct.process_id* %66)
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %59
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %53, %49
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.connection*, %struct.connection** %9, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 1
  %76 = load %struct.connection*, %struct.connection** %75, align 8
  store %struct.connection* %76, %struct.connection** %9, align 8
  br label %24

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %77, %13
  %79 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %80 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %79, i32 0, i32 0
  %81 = load %struct.connection*, %struct.connection** %80, align 8
  store %struct.connection* %81, %struct.connection** %9, align 8
  br label %82

82:                                               ; preds = %129, %78
  %83 = load %struct.connection*, %struct.connection** %9, align 8
  %84 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %85 = bitcast %struct.rpc_target* %84 to %struct.connection*
  %86 = icmp ne %struct.connection* %83, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %82
  %88 = load %struct.connection*, %struct.connection** %9, align 8
  %89 = call i32 @server_check_ready(%struct.connection* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @cr_ok, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.process_id*, %struct.process_id** %5, align 8
  %95 = icmp ne %struct.process_id* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.connection*, %struct.connection** %9, align 8
  %98 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.process_id*, %struct.process_id** %5, align 8
  %101 = call i32 @matches_pid(i32* %99, %struct.process_id* %100)
  %102 = icmp sge i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %93
  store i32 1, i32* %3, align 4
  br label %135

104:                                              ; preds = %96
  br label %128

105:                                              ; preds = %87
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @cr_stopped, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load %struct.connection*, %struct.connection** %9, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.process_id*, %struct.process_id** %5, align 8
  %117 = icmp ne %struct.process_id* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.connection*, %struct.connection** %9, align 8
  %120 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.process_id*, %struct.process_id** %5, align 8
  %123 = call i32 @matches_pid(i32* %121, %struct.process_id* %122)
  %124 = icmp sge i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %118, %115
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %118
  br label %127

127:                                              ; preds = %126, %109, %105
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.connection*, %struct.connection** %9, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 1
  %132 = load %struct.connection*, %struct.connection** %131, align 8
  store %struct.connection* %132, %struct.connection** %9, align 8
  br label %82

133:                                              ; preds = %82
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %103, %47, %12
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @server_check_ready(%struct.connection*) #1

declare dso_local i32 @matches_pid(i32*, %struct.process_id*) #1

declare dso_local %struct.TYPE_4__* @RPCS_DATA(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
