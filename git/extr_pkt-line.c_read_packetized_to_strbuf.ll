; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_read_packetized_to_strbuf.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_read_packetized_to_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64, i64 }

@LARGE_PACKET_DATA_MAX = common dso_local global i64 0, align 8
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_packetized_to_strbuf(i32 %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %34, %2
  %16 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %17 = load i64, i64* @LARGE_PACKET_DATA_MAX, align 8
  %18 = call i32 @strbuf_grow(%struct.strbuf* %16, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = load i64, i64* @LARGE_PACKET_DATA_MAX, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %30 = call i32 @packet_read(i32 %19, i32* null, i32* null, i64 %26, i64 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %41

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %15

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %49 = call i32 @strbuf_release(%struct.strbuf* %48)
  br label %54

50:                                               ; preds = %44
  %51 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @strbuf_setlen(%struct.strbuf* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %41
  %57 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %54
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @packet_read(i32, i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
