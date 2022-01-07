; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_dump_connection_buffers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_dump_connection_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Dumping buffers of connection %d\0AINPUT buffers of %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"OUTPUT buffers of %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TEMP buffers of %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"--- END (dumping buffers of connection %d) ---\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_connection_buffers(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 3
  %13 = call i32 @dump_buffers(i32* %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 2
  %21 = call i32 @dump_buffers(i32* %20)
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load i32, i32* @stderr, align 4
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.connection*, %struct.connection** %2, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dump_buffers(i32* %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load i32, i32* @stderr, align 4
  %38 = load %struct.connection*, %struct.connection** %2, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @dump_buffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
