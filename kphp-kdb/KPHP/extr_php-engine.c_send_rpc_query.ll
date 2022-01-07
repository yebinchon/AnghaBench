; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_send_rpc_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_send_rpc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.connection*)* }

@.str = private unnamed_addr constant [58 x i8] c"send_rpc_query: [len = %d] [op = %08x] [rpc_id = <%lld>]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_rpc_query(%struct.connection* %0, i32 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %11, i32* %13, align 4
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = bitcast i32* %19 to i64*
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %16, %5
  %22 = load %struct.connection*, %struct.connection** %6, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @prepare_rpc_query(%struct.connection* %22, i32* %23, i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i64 %30)
  %32 = load %struct.connection*, %struct.connection** %6, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @write_out(i32* %33, i32* %34, i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.connection*, %struct.connection** %6, align 8
  %46 = call %struct.TYPE_2__* @RPCS_FUNC(%struct.connection* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %47, align 8
  %49 = load %struct.connection*, %struct.connection** %6, align 8
  %50 = call i32 %48(%struct.connection* %49)
  ret void
}

declare dso_local i32 @prepare_rpc_query(%struct.connection*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
