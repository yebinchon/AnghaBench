; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_choose_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_choose_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.connection* }
%struct.rpc_target = type { %struct.connection*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.connection* }
%struct.process_id = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cr_ok = common dso_local global i32 0, align 4
@cr_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @rpc_target_choose_connection(%struct.rpc_target* %0, %struct.process_id* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpc_target*, align 8
  %5 = alloca %struct.process_id*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_target* %0, %struct.rpc_target** %4, align 8
  store %struct.process_id* %1, %struct.process_id** %5, align 8
  %10 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %11 = icmp ne %struct.rpc_target* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.connection* null, %struct.connection** %3, align 8
  br label %145

13:                                               ; preds = %2
  store %struct.connection* null, %struct.connection** %7, align 8
  store i32 10000, i32* %9, align 4
  %14 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %83

18:                                               ; preds = %13
  %19 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.connection*, %struct.connection** %22, align 8
  store %struct.connection* %23, %struct.connection** %6, align 8
  br label %24

24:                                               ; preds = %78, %18
  %25 = load %struct.connection*, %struct.connection** %6, align 8
  %26 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = bitcast %struct.TYPE_3__* %28 to %struct.connection*
  %30 = icmp ne %struct.connection* %25, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %24
  %32 = load %struct.connection*, %struct.connection** %6, align 8
  %33 = call i32 @server_check_ready(%struct.connection* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @cr_ok, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.process_id*, %struct.process_id** %5, align 8
  %39 = icmp ne %struct.process_id* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.connection*, %struct.connection** %6, align 8
  %42 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.process_id*, %struct.process_id** %5, align 8
  %45 = call i32 @matches_pid(i32* %43, %struct.process_id* %44)
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %40, %37
  %48 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %48, %struct.connection** %3, align 8
  br label %145

49:                                               ; preds = %40
  br label %77

50:                                               ; preds = %31
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @cr_stopped, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load %struct.process_id*, %struct.process_id** %5, align 8
  %62 = icmp ne %struct.process_id* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.connection*, %struct.connection** %6, align 8
  %65 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.process_id*, %struct.process_id** %5, align 8
  %68 = call i32 @matches_pid(i32* %66, %struct.process_id* %67)
  %69 = icmp sge i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %63, %60
  %71 = load %struct.connection*, %struct.connection** %6, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %9, align 4
  %74 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %74, %struct.connection** %7, align 8
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75, %54, %50
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.connection*, %struct.connection** %6, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 1
  %81 = load %struct.connection*, %struct.connection** %80, align 8
  store %struct.connection* %81, %struct.connection** %6, align 8
  br label %24

82:                                               ; preds = %24
  br label %83

83:                                               ; preds = %82, %13
  %84 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %85 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %84, i32 0, i32 0
  %86 = load %struct.connection*, %struct.connection** %85, align 8
  store %struct.connection* %86, %struct.connection** %6, align 8
  br label %87

87:                                               ; preds = %139, %83
  %88 = load %struct.connection*, %struct.connection** %6, align 8
  %89 = load %struct.rpc_target*, %struct.rpc_target** %4, align 8
  %90 = bitcast %struct.rpc_target* %89 to %struct.connection*
  %91 = icmp ne %struct.connection* %88, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %87
  %93 = load %struct.connection*, %struct.connection** %6, align 8
  %94 = call i32 @server_check_ready(%struct.connection* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @cr_ok, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.process_id*, %struct.process_id** %5, align 8
  %100 = icmp ne %struct.process_id* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.connection*, %struct.connection** %6, align 8
  %103 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.process_id*, %struct.process_id** %5, align 8
  %106 = call i32 @matches_pid(i32* %104, %struct.process_id* %105)
  %107 = icmp sge i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %101, %98
  %109 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %109, %struct.connection** %3, align 8
  br label %145

110:                                              ; preds = %101
  br label %138

111:                                              ; preds = %92
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @cr_stopped, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %111
  %116 = load %struct.connection*, %struct.connection** %6, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load %struct.process_id*, %struct.process_id** %5, align 8
  %123 = icmp ne %struct.process_id* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.connection*, %struct.connection** %6, align 8
  %126 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.process_id*, %struct.process_id** %5, align 8
  %129 = call i32 @matches_pid(i32* %127, %struct.process_id* %128)
  %130 = icmp sge i32 %129, 1
  br i1 %130, label %131, label %136

131:                                              ; preds = %124, %121
  %132 = load %struct.connection*, %struct.connection** %6, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %9, align 4
  %135 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %135, %struct.connection** %7, align 8
  br label %136

136:                                              ; preds = %131, %124
  br label %137

137:                                              ; preds = %136, %115, %111
  br label %138

138:                                              ; preds = %137, %110
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.connection*, %struct.connection** %6, align 8
  %141 = getelementptr inbounds %struct.connection, %struct.connection* %140, i32 0, i32 1
  %142 = load %struct.connection*, %struct.connection** %141, align 8
  store %struct.connection* %142, %struct.connection** %6, align 8
  br label %87

143:                                              ; preds = %87
  %144 = load %struct.connection*, %struct.connection** %7, align 8
  store %struct.connection* %144, %struct.connection** %3, align 8
  br label %145

145:                                              ; preds = %143, %108, %47, %12
  %146 = load %struct.connection*, %struct.connection** %3, align 8
  ret %struct.connection* %146
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
