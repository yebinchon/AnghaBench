; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_pos_info_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_pos_info_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.repl_pos_info = type { i64, i64, i64, i32 }
%struct.repl_client_status = type { i64, %struct.related_binlog* }
%struct.related_binlog = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@posinfo_packets_received = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"received server time packet from %s:%d, session %d:%d, position %lld, time %016llx\0A\00", align 1
@R_ERROR_EBADFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown handshake id\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"handshake/session id mismatch\00", align 1
@.str.3 = private unnamed_addr constant [152 x i8] c"WARNING: server time packet from %s:%d, session %d:%d, position %lld, time %016llx for binlog %s is ignored because of bad time (current time %016llx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [133 x i8] c"WARNING: server time packet from %s:%d, session %d:%d, position %lld, time %016llx for binlog %s is ignored because of bad position\0A\00", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"Result of updating binlog position info for replica %s to position %lld, time %016llx is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_pos_info_packet(%struct.connection* %0, %struct.repl_pos_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.repl_pos_info*, align 8
  %6 = alloca %struct.repl_client_status*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.related_binlog*, align 8
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.repl_pos_info* %1, %struct.repl_pos_info** %5, align 8
  %10 = load i32, i32* @posinfo_packets_received, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @posinfo_packets_received, align 4
  %12 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %13 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.repl_client_status* @get_client_by_handshake(i32 %14, i32 0)
  store %struct.repl_client_status* %15, %struct.repl_client_status** %6, align 8
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = call i32 @show_remote_ip(%struct.connection* %16)
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %23 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %27 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %31 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %34 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %21, i64 %25, i32 %29, i64 %32, i64 %35)
  %37 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %38 = icmp ne %struct.repl_client_status* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %2
  %40 = load %struct.connection*, %struct.connection** %4, align 8
  %41 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %42 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %45 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @R_ERROR_EBADFD, align 4
  %48 = call i32 @send_error(%struct.connection* %40, i32 %43, i64 %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  br label %171

49:                                               ; preds = %2
  %50 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %51 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %54 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %59 = call i32 @destroy_client(%struct.repl_client_status* %58)
  %60 = load %struct.connection*, %struct.connection** %4, align 8
  %61 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %62 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %65 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @R_ERROR_EBADFD, align 4
  %68 = call i32 @send_error(%struct.connection* %60, i32 %63, i64 %66, i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %68, i32* %3, align 4
  br label %171

69:                                               ; preds = %49
  %70 = call i64 @get_precise_time(i32 1000000)
  store i64 %70, i64* %7, align 8
  %71 = load %struct.repl_client_status*, %struct.repl_client_status** %6, align 8
  %72 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %71, i32 0, i32 1
  %73 = load %struct.related_binlog*, %struct.related_binlog** %72, align 8
  store %struct.related_binlog* %73, %struct.related_binlog** %8, align 8
  %74 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %75 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 21474836480
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %69
  %81 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %82 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = sub nsw i64 %84, 128849018880
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %80, %69
  %88 = load %struct.connection*, %struct.connection** %4, align 8
  %89 = call i32 @show_remote_ip(%struct.connection* %88)
  %90 = load %struct.connection*, %struct.connection** %4, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %95 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %99 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %103 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %106 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.related_binlog*, %struct.related_binlog** %8, align 8
  %109 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0), i32 %89, i64 %93, i64 %97, i32 %101, i64 %104, i64 %107, i32 %112, i64 %113)
  store i32 0, i32* %3, align 4
  br label %171

115:                                              ; preds = %80
  %116 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %117 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ugt i64 %118, 72057594037927936
  br i1 %119, label %120, label %147

120:                                              ; preds = %115
  %121 = load %struct.connection*, %struct.connection** %4, align 8
  %122 = call i32 @show_remote_ip(%struct.connection* %121)
  %123 = load %struct.connection*, %struct.connection** %4, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %128 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %132 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %136 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %139 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.related_binlog*, %struct.related_binlog** %8, align 8
  %142 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0), i32 %122, i64 %126, i64 %130, i32 %134, i64 %137, i64 %140, i32 %145)
  store i32 0, i32* %3, align 4
  br label %171

147:                                              ; preds = %115
  %148 = load %struct.related_binlog*, %struct.related_binlog** %8, align 8
  %149 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %152 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %155 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @update_binlog_postime_info(i32 %150, i64 %153, i64 %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.related_binlog*, %struct.related_binlog** %8, align 8
  %159 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %164 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.repl_pos_info*, %struct.repl_pos_info** %5, align 8
  %167 = getelementptr inbounds %struct.repl_pos_info, %struct.repl_pos_info* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.5, i64 0, i64 0), i32 %162, i64 %165, i64 %168, i32 %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %147, %120, %87, %57, %39
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.repl_client_status* @get_client_by_handshake(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64, i64, i32, ...) #1

declare dso_local i32 @show_remote_ip(%struct.connection*) #1

declare dso_local i32 @send_error(%struct.connection*, i32, i64, i32, i8*) #1

declare dso_local i32 @destroy_client(%struct.repl_client_status*) #1

declare dso_local i64 @get_precise_time(i32) #1

declare dso_local i32 @update_binlog_postime_info(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
