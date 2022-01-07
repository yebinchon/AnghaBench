; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_server_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_server_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_server_status = type { i32, %struct.TYPE_5__*, i32, i32, %struct.related_binlog*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.related_binlog = type { i32, i32 }
%struct.repl_pos_info = type { i32, i32, i32, i32, i32 }

@RS_REPL_STARTED = common dso_local global i32 0, align 4
@MAX_PENDING_BYTES_THRESHOLD = common dso_local global i32 0, align 4
@process_server_time.last_spam = internal global i32 0, align 4
@now = common dso_local global i32 0, align 4
@NOTSENT_SPAM_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [141 x i8] c"Server is NOT sending server time packet to %s:%d, session %d:%d, position %lld, time %016llx; %d bytes in output buffer (%lld such errors)\0A\00", align 1
@posinfo_packets_not_sent = common dso_local global i32 0, align 4
@P_REPL_POS_INFO = common dso_local global i32 0, align 4
@posinfo_packets_sent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [118 x i8] c"Server is sending server time packet to %s:%d, session %d:%d, position %lld, time %016llx; %d bytes in output buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_server_time(%struct.repl_server_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repl_server_status*, align 8
  %4 = alloca %struct.related_binlog*, align 8
  %5 = alloca %struct.repl_pos_info*, align 8
  store %struct.repl_server_status* %0, %struct.repl_server_status** %3, align 8
  %6 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %7 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RS_REPL_STARTED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %14 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %131

18:                                               ; preds = %12
  %19 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %20 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %19, i32 0, i32 4
  %21 = load %struct.related_binlog*, %struct.related_binlog** %20, align 8
  store %struct.related_binlog* %21, %struct.related_binlog** %4, align 8
  %22 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %23 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_PENDING_BYTES_THRESHOLD, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = load i32, i32* @now, align 4
  %32 = load i32, i32* @NOTSENT_SPAM_INTERVAL, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* @process_server_time.last_spam, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %39 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @show_remote_ip(%struct.TYPE_5__* %40)
  %42 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %43 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %48 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %51 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %54 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %57 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %60 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @posinfo_packets_not_sent, align 4
  %66 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32, i32, ...) @vkprintf(i32 %37, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %64, i32 %65)
  %67 = load i32, i32* @posinfo_packets_not_sent, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @posinfo_packets_not_sent, align 4
  %69 = load i32, i32* @now, align 4
  %70 = load i32, i32* @NOTSENT_SPAM_INTERVAL, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* @process_server_time.last_spam, align 4
  store i32 1, i32* %2, align 4
  br label %131

72:                                               ; preds = %18
  %73 = call %struct.repl_pos_info* @alloc_packet(i32 20)
  store %struct.repl_pos_info* %73, %struct.repl_pos_info** %5, align 8
  %74 = load i32, i32* @P_REPL_POS_INFO, align 4
  %75 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %76 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %78 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %81 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %83 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %86 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %88 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %91 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %93 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %96 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @posinfo_packets_sent, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @posinfo_packets_sent, align 4
  %99 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %100 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32 @show_remote_ip(%struct.TYPE_5__* %101)
  %103 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %104 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %109 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %112 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %115 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %118 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %121 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %107, i32 %110, i32 %113, i32 %116, i32 %119, i32 %125)
  %127 = load %struct.repl_server_status*, %struct.repl_server_status** %3, align 8
  %128 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = call i32 @push_packet(%struct.TYPE_5__* %129, i32 20)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %72, %30, %17
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @show_remote_ip(%struct.TYPE_5__*) #1

declare dso_local %struct.repl_pos_info* @alloc_packet(i32) #1

declare dso_local i32 @push_packet(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
