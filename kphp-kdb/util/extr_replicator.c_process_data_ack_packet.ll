; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_data_ack_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_data_ack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.repl_data_ack = type { i64, i64, i64, i32 }
%struct.repl_server_status = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [100 x i8] c"received data ack packet from %s:%d, session %d:%d, binlog written up to %lld, received up to %lld\0A\00", align 1
@R_ERROR_EBADFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unknown session id\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"handshake/session id mismatch\00", align 1
@R_ERROR_EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"incorrect log positions\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"acknowledged log positions go backwards and/or after the end of transmitted data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_data_ack_packet(%struct.connection* %0, %struct.repl_data_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.repl_data_ack*, align 8
  %6 = alloca %struct.repl_server_status*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.repl_data_ack* %1, %struct.repl_data_ack** %5, align 8
  %7 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %8 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.repl_server_status* @get_server_by_session(i32 %9, i32 0)
  store %struct.repl_server_status* %10, %struct.repl_server_status** %6, align 8
  %11 = load %struct.connection*, %struct.connection** %4, align 8
  %12 = call i32 @show_remote_ip(%struct.connection* %11)
  %13 = load %struct.connection*, %struct.connection** %4, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %17 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %20 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %23 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %26 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i64 %18, i32 %21, i64 %24, i64 %27)
  %29 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %30 = icmp ne %struct.repl_server_status* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %2
  %32 = load %struct.connection*, %struct.connection** %4, align 8
  %33 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %34 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %37 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @R_ERROR_EBADFD, align 4
  %40 = call i32 @send_error(%struct.connection* %32, i64 %35, i32 %38, i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  br label %135

41:                                               ; preds = %2
  %42 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %43 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %46 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %51 = call i32 @destroy_server(%struct.repl_server_status* %50)
  %52 = load %struct.connection*, %struct.connection** %4, align 8
  %53 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %54 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %57 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @R_ERROR_EBADFD, align 4
  %60 = call i32 @send_error(%struct.connection* %52, i64 %55, i32 %58, i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %3, align 4
  br label %135

61:                                               ; preds = %41
  %62 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %63 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %68 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %71 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %66, %61
  %75 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %76 = call i32 @destroy_server(%struct.repl_server_status* %75)
  %77 = load %struct.connection*, %struct.connection** %4, align 8
  %78 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %79 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %82 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @R_ERROR_EINVAL, align 4
  %85 = call i32 @send_error(%struct.connection* %77, i64 %80, i32 %83, i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %85, i32* %3, align 4
  br label %135

86:                                               ; preds = %66
  %87 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %88 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %91 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %110, label %94

94:                                               ; preds = %86
  %95 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %96 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %99 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %104 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %107 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %102, %94, %86
  %111 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %112 = call i32 @destroy_server(%struct.repl_server_status* %111)
  %113 = load %struct.connection*, %struct.connection** %4, align 8
  %114 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %115 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %118 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @R_ERROR_EINVAL, align 4
  %121 = call i32 @send_error(%struct.connection* %113, i64 %116, i32 %119, i32 %120, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  store i32 %121, i32* %3, align 4
  br label %135

122:                                              ; preds = %102
  %123 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %124 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %127 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.repl_data_ack*, %struct.repl_data_ack** %5, align 8
  %129 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %132 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.repl_server_status*, %struct.repl_server_status** %6, align 8
  %134 = call i32 @process_server(%struct.repl_server_status* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %122, %110, %74, %49, %31
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.repl_server_status* @get_server_by_session(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i64, i32, i64, i64) #1

declare dso_local i32 @show_remote_ip(%struct.connection*) #1

declare dso_local i32 @send_error(%struct.connection*, i64, i32, i32, i8*) #1

declare dso_local i32 @destroy_server(%struct.repl_server_status*) #1

declare dso_local i32 @process_server(%struct.repl_server_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
