; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_format_packet.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_format_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@LARGE_PACKET_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"protocol error: impossibly long line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i8*, i32)* @format_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_packet(%struct.strbuf* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %17)
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @strbuf_vaddf(%struct.strbuf* %19, i8* %20, i32 %21)
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @LARGE_PACKET_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @die(i32 %32)
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @set_packet_header(i32* %39, i64 %40)
  %42 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 4
  %50 = call i32 @packet_trace(i32* %47, i64 %49, i32 1)
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_vaddf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_packet_header(i32*, i64) #1

declare dso_local i32 @packet_trace(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
