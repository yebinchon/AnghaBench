; ModuleID = '/home/carl/AnghaBench/hiredis/extr_test.c_test_append_formatted_commands.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_test.c_test_append_formatted_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Append format command: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SET foo bar\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_append_formatted_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_append_formatted_commands(i32 %0) #0 {
  %2 = alloca %struct.config, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @do_connect(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = call i32 @test(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @redisFormatCommand(i8** %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @redisAppendFormattedCommand(i32* %13, i8* %14, i32 %15)
  %17 = load i64, i64* @REDIS_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @test_cond(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast i32** %4 to i8*
  %23 = call i64 @redisGetReply(i32* %21, i8* %22)
  %24 = load i64, i64* @REDIS_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @freeReplyObject(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @disconnect(i32* %32, i32 0)
  ret void
}

declare dso_local i32* @do_connect(i32) #1

declare dso_local i32 @test(i8*) #1

declare dso_local i32 @redisFormatCommand(i8**, i8*) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @redisAppendFormattedCommand(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @redisGetReply(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @disconnect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
