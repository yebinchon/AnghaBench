; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-common.c_dump_next_rpc_packet_limit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-common.c_dump_next_rpc_packet_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.nb_iterator = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_next_rpc_packet_limit(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nb_iterator, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 0
  %11 = call i32 @nbit_set(%struct.nb_iterator* %5, i32* %10)
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = call i32 @nbit_read_in(%struct.nb_iterator* %5, i32* %8, i32 4)
  %25 = icmp eq i32 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = and i32 %37, 7
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %32
  br label %12

44:                                               ; preds = %21
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nbit_set(%struct.nb_iterator*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(%struct.nb_iterator*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
