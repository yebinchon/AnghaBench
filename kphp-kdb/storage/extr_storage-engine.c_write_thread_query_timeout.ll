; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_write_thread_query_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_write_thread_query_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i32 }
%struct.gather_data = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Query %p timeout.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Query on key %.*s timeout\0A\00", align 1
@gather_timeouts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_thread_query_timeout(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca %struct.gather_data*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %4 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %5 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %4)
  %6 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %7 = call %struct.gather_data* @GATHER_QUERY(%struct.conn_query* %6)
  store %struct.gather_data* %7, %struct.gather_data** %3, align 8
  %8 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %9 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %12 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load i32, i32* @gather_timeouts, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @gather_timeouts, align 4
  %17 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %18 = call i32 @delete_write_thread_query(%struct.conn_query* %17)
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.conn_query*) #1

declare dso_local %struct.gather_data* @GATHER_QUERY(%struct.conn_query*) #1

declare dso_local i32 @kprintf(i8*, i32, i32) #1

declare dso_local i32 @delete_write_thread_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
