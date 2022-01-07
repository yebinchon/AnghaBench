; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_all_servers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_all_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.related_binlog = type { i32, i32, %struct.repl_client_status**, %struct.repl_server_status* }
%struct.repl_client_status = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.repl_server_status = type { i64, i32, %struct.TYPE_3__*, %struct.repl_server_status* }
%struct.TYPE_3__ = type { i64 }

@servers_sentall = common dso_local global i64 0, align 8
@servers_readall = common dso_local global i64 0, align 8
@local_rbs = common dso_local global i32 0, align 4
@LR = common dso_local global %struct.related_binlog* null, align 8
@LRF_MASTER = common dso_local global i32 0, align 4
@LRF_BROKEN = common dso_local global i32 0, align 4
@RS_FATAL = common dso_local global i32 0, align 4
@LRF_CHANGED_TIME = common dso_local global i32 0, align 4
@RS_ALLREAD = common dso_local global i32 0, align 4
@RS_ALLSENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_all_servers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.related_binlog*, align 8
  %3 = alloca %struct.repl_server_status*, align 8
  %4 = alloca %struct.repl_server_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.repl_client_status*, align 8
  store i64 0, i64* @servers_sentall, align 8
  store i64 0, i64* @servers_readall, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %146, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @local_rbs, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %149

11:                                               ; preds = %7
  %12 = load %struct.related_binlog*, %struct.related_binlog** @LR, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %12, i64 %14
  store %struct.related_binlog* %15, %struct.related_binlog** %2, align 8
  %16 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %17 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LRF_MASTER, align 4
  %20 = load i32, i32* @LRF_BROKEN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @LRF_MASTER, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %101

25:                                               ; preds = %11
  %26 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %27 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %26, i32 0, i32 3
  %28 = load %struct.repl_server_status*, %struct.repl_server_status** %27, align 8
  store %struct.repl_server_status* %28, %struct.repl_server_status** %3, align 8
  br label %29

29:                                               ; preds = %92, %25
  %30 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %31 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %32 = bitcast %struct.related_binlog* %31 to %struct.repl_server_status*
  %33 = icmp ne %struct.repl_server_status* %30, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %29
  %35 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %36 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %35, i32 0, i32 3
  %37 = load %struct.repl_server_status*, %struct.repl_server_status** %36, align 8
  store %struct.repl_server_status* %37, %struct.repl_server_status** %4, align 8
  %38 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %39 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %44 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %34
  %48 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %49 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RS_FATAL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47, %34
  %55 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %56 = call i32 @destroy_server(%struct.repl_server_status* %55)
  br label %92

57:                                               ; preds = %47
  %58 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %59 = call i32 @process_server(%struct.repl_server_status* %58)
  %60 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %61 = call i32 @process_server_rotate(%struct.repl_server_status* %60)
  %62 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %63 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LRF_CHANGED_TIME, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %70 = call i32 @process_server_time(%struct.repl_server_status* %69)
  br label %71

71:                                               ; preds = %68, %57
  %72 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %73 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RS_ALLREAD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i64, i64* @servers_readall, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* @servers_readall, align 8
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %83 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RS_ALLSENT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i64, i64* @servers_sentall, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* @servers_sentall, align 8
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %54
  %93 = load %struct.repl_server_status*, %struct.repl_server_status** %4, align 8
  store %struct.repl_server_status* %93, %struct.repl_server_status** %3, align 8
  br label %29

94:                                               ; preds = %29
  %95 = load i32, i32* @LRF_CHANGED_TIME, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %98 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %11
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %142, %101
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %105 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %102
  %109 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %110 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %109, i32 0, i32 2
  %111 = load %struct.repl_client_status**, %struct.repl_client_status*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.repl_client_status*, %struct.repl_client_status** %111, i64 %113
  %115 = load %struct.repl_client_status*, %struct.repl_client_status** %114, align 8
  %116 = icmp ne %struct.repl_client_status* %115, null
  br i1 %116, label %117, label %141

117:                                              ; preds = %108
  %118 = load %struct.related_binlog*, %struct.related_binlog** %2, align 8
  %119 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %118, i32 0, i32 2
  %120 = load %struct.repl_client_status**, %struct.repl_client_status*** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.repl_client_status*, %struct.repl_client_status** %120, i64 %122
  %124 = load %struct.repl_client_status*, %struct.repl_client_status** %123, align 8
  store %struct.repl_client_status* %124, %struct.repl_client_status** %6, align 8
  %125 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %126 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %131 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %117
  %135 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %136 = call i32 @destroy_client(%struct.repl_client_status* %135)
  br label %140

137:                                              ; preds = %117
  %138 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %139 = call i32 @check_flush_client(%struct.repl_client_status* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %108
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %102

145:                                              ; preds = %102
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %1, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %1, align 4
  br label %7

149:                                              ; preds = %7
  ret i32 0
}

declare dso_local i32 @destroy_server(%struct.repl_server_status*) #1

declare dso_local i32 @process_server(%struct.repl_server_status*) #1

declare dso_local i32 @process_server_rotate(%struct.repl_server_status*) #1

declare dso_local i32 @process_server_time(%struct.repl_server_status*) #1

declare dso_local i32 @destroy_client(%struct.repl_client_status*) #1

declare dso_local i32 @check_flush_client(%struct.repl_client_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
