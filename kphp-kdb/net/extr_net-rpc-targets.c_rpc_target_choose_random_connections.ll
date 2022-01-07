; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_choose_random_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-targets.c_rpc_target_choose_random_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_target = type { %struct.connection*, %struct.TYPE_3__* }
%struct.connection = type { %struct.connection* }
%struct.TYPE_3__ = type { %struct.connection* }
%struct.process_id = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cr_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_target_choose_random_connections(%struct.rpc_target* %0, %struct.process_id* %1, i32 %2, %struct.connection** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_target*, align 8
  %7 = alloca %struct.process_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection**, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rpc_target* %0, %struct.rpc_target** %6, align 8
  store %struct.process_id* %1, %struct.process_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.connection** %3, %struct.connection*** %9, align 8
  %16 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %17 = icmp ne %struct.rpc_target* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %149

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %21 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %88

24:                                               ; preds = %19
  %25 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %26 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.connection*, %struct.connection** %28, align 8
  store %struct.connection* %29, %struct.connection** %10, align 8
  br label %30

30:                                               ; preds = %83, %24
  %31 = load %struct.connection*, %struct.connection** %10, align 8
  %32 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %33 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = bitcast %struct.TYPE_3__* %34 to %struct.connection*
  %36 = icmp ne %struct.connection* %31, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %30
  %38 = load %struct.connection*, %struct.connection** %10, align 8
  %39 = call i32 @server_check_ready(%struct.connection* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @cr_ok, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load %struct.process_id*, %struct.process_id** %7, align 8
  %45 = icmp ne %struct.process_id* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.connection*, %struct.connection** %10, align 8
  %48 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.process_id*, %struct.process_id** %7, align 8
  %51 = call i32 @matches_pid(i32* %49, %struct.process_id* %50)
  %52 = icmp sge i32 %51, 1
  br i1 %52, label %53, label %82

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.connection*, %struct.connection** %10, align 8
  %59 = load %struct.connection**, %struct.connection*** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.connection*, %struct.connection** %59, i64 %62
  store %struct.connection* %58, %struct.connection** %63, align 8
  br label %79

64:                                               ; preds = %53
  %65 = call i32 (...) @lrand48()
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = srem i32 %65, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.connection*, %struct.connection** %10, align 8
  %74 = load %struct.connection**, %struct.connection*** %9, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.connection*, %struct.connection** %74, i64 %76
  store %struct.connection* %73, %struct.connection** %77, align 8
  br label %78

78:                                               ; preds = %72, %64
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %46, %37
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.connection*, %struct.connection** %10, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 0
  %86 = load %struct.connection*, %struct.connection** %85, align 8
  store %struct.connection* %86, %struct.connection** %10, align 8
  br label %30

87:                                               ; preds = %30
  br label %88

88:                                               ; preds = %87, %19
  %89 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %90 = getelementptr inbounds %struct.rpc_target, %struct.rpc_target* %89, i32 0, i32 0
  %91 = load %struct.connection*, %struct.connection** %90, align 8
  store %struct.connection* %91, %struct.connection** %10, align 8
  br label %92

92:                                               ; preds = %143, %88
  %93 = load %struct.connection*, %struct.connection** %10, align 8
  %94 = load %struct.rpc_target*, %struct.rpc_target** %6, align 8
  %95 = bitcast %struct.rpc_target* %94 to %struct.connection*
  %96 = icmp ne %struct.connection* %93, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %92
  %98 = load %struct.connection*, %struct.connection** %10, align 8
  %99 = call i32 @server_check_ready(%struct.connection* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @cr_ok, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %142

103:                                              ; preds = %97
  %104 = load %struct.process_id*, %struct.process_id** %7, align 8
  %105 = icmp ne %struct.process_id* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.connection*, %struct.connection** %10, align 8
  %108 = call %struct.TYPE_4__* @RPCS_DATA(%struct.connection* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.process_id*, %struct.process_id** %7, align 8
  %111 = call i32 @matches_pid(i32* %109, %struct.process_id* %110)
  %112 = icmp sge i32 %111, 1
  br i1 %112, label %113, label %142

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.connection*, %struct.connection** %10, align 8
  %119 = load %struct.connection**, %struct.connection*** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.connection*, %struct.connection** %119, i64 %122
  store %struct.connection* %118, %struct.connection** %123, align 8
  br label %139

124:                                              ; preds = %113
  %125 = call i32 (...) @lrand48()
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  %128 = srem i32 %125, %127
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.connection*, %struct.connection** %10, align 8
  %134 = load %struct.connection**, %struct.connection*** %9, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.connection*, %struct.connection** %134, i64 %136
  store %struct.connection* %133, %struct.connection** %137, align 8
  br label %138

138:                                              ; preds = %132, %124
  br label %139

139:                                              ; preds = %138, %117
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %139, %106, %97
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.connection*, %struct.connection** %10, align 8
  %145 = getelementptr inbounds %struct.connection, %struct.connection* %144, i32 0, i32 0
  %146 = load %struct.connection*, %struct.connection** %145, align 8
  store %struct.connection* %146, %struct.connection** %10, align 8
  br label %92

147:                                              ; preds = %92
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %18
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @server_check_ready(%struct.connection*) #1

declare dso_local i32 @matches_pid(i32*, %struct.process_id*) #1

declare dso_local %struct.TYPE_4__* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
