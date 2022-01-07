; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_write_full_stats_to_pipe.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_write_full_stats_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@master_pipe_write = common dso_local global i32 0, align 4
@stats_len = common dso_local global i32 0, align 4
@RPC_PHP_FULL_STATS = common dso_local global i32 0, align 4
@stats = common dso_local global i32 0, align 4
@pipe_packet_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error during write to pipe [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_full_stats_to_pipe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @master_pipe_write, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %57

6:                                                ; preds = %0
  %7 = call i32 (...) @prepare_full_stats()
  %8 = load i32, i32* @stats_len, align 4
  %9 = add nsw i32 %8, 1
  %10 = add nsw i32 %9, 20
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 3
  %13 = and i32 %12, -4
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32* @malloc(i64 %15)
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 @memset(i32* %17, i32 0, i64 %19)
  %21 = load i32, i32* @RPC_PHP_FULL_STATS, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* @stats, align 4
  %27 = load i32, i32* @stats_len, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @memcpy(i32* %25, i32 %26, i64 %28)
  %30 = load i32, i32* @pipe_packet_id, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @pipe_packet_id, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @prepare_rpc_query_raw(i32 %30, i32* %32, i32 %33)
  %35 = load i32, i32* @master_pipe_write, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = call i64 @write(i32 %35, i32* %36, i64 %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @master_pipe_write, align 4
  %46 = call i32 @dl_pstr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = call i32 @dl_passert(i32 %44, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %6
  %52 = call i32 (...) @getppid()
  %53 = call i32 @kill(i32 %52, i32 9)
  br label %54

54:                                               ; preds = %51, %6
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @free(i32* %55)
  br label %57

57:                                               ; preds = %54, %0
  ret void
}

declare dso_local i32 @prepare_full_stats(...) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @prepare_rpc_query_raw(i32, i32*, i32) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i32 @dl_passert(i32, i32) #1

declare dso_local i32 @dl_pstr(i8*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
