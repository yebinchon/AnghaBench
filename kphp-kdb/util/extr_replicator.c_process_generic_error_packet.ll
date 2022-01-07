; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_generic_error_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_process_generic_error_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.repl_error = type { i32, i32, i32, i32 }

@errors_received = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Received error packet in session %d:%d from %s:%d, error code %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Received malformed error packet in session %d:%d from %s:%d, error code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_generic_error_packet(%struct.connection* %0, %struct.repl_error* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.repl_error*, align 8
  %6 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.repl_error* %1, %struct.repl_error** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @errors_received, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @errors_received, align 4
  %9 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @bad_error_packet(%struct.repl_error* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  %14 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %15 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %18 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.connection*, %struct.connection** %4, align 8
  %21 = call i32 @show_remote_ip(%struct.connection* %20)
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %26 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %29 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %21, i32 %24, i32 %27, i32 %30)
  br label %48

32:                                               ; preds = %3
  %33 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %34 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %37 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.connection*, %struct.connection** %4, align 8
  %40 = call i32 @show_remote_ip(%struct.connection* %39)
  %41 = load %struct.connection*, %struct.connection** %4, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.repl_error*, %struct.repl_error** %5, align 8
  %45 = getelementptr inbounds %struct.repl_error, %struct.repl_error* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %32, %13
  ret i32 0
}

declare dso_local i32 @bad_error_packet(%struct.repl_error*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @show_remote_ip(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
