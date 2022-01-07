; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_packet_trace.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_packet_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@packet_trace.in_pack = internal global i32 0, align 4
@packet_trace.sideband = internal global i32 0, align 4
@trace_packet = common dso_local global i32 0, align 4
@trace_pack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PACK\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\01PACK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PACK ...\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"packet: %12s%c \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\\%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @packet_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_trace(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @trace_want(i32* @trace_packet)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call i32 @trace_want(i32* @trace_pack)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %113

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @packet_trace.in_pack, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @packet_trace.sideband, align 4
  %22 = call i64 @packet_trace_pack(i8* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %113

25:                                               ; preds = %18
  br label %47

26:                                               ; preds = %15
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @starts_with(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @starts_with(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %26
  store i32 1, i32* @packet_trace.in_pack, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @packet_trace.sideband, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @packet_trace.sideband, align 4
  %43 = call i64 @packet_trace_pack(i8* %40, i32 %41, i32 %42)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %34, %30
  br label %47

47:                                               ; preds = %46, %25
  %48 = call i32 @trace_want(i32* @trace_packet)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %113

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 32
  %54 = call i32 @strbuf_init(%struct.strbuf* %8, i32 %53)
  %55 = call i32 (...) @get_trace_prefix()
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 62, i32 60
  %61 = call i32 (%struct.strbuf*, i8*, i8, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8 signext %56, i32 %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %106, %51
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %106

75:                                               ; preds = %66
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 32
  br i1 %82, label %83, label %98

83:                                               ; preds = %75
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 126
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @strbuf_addch(%struct.strbuf* %8, i8 signext %96)
  br label %105

98:                                               ; preds = %83, %75
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = call i32 (%struct.strbuf*, i8*, i8, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8 signext %103)
  br label %105

105:                                              ; preds = %98, %91
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %62

109:                                              ; preds = %62
  %110 = call i32 @strbuf_addch(%struct.strbuf* %8, i8 signext 10)
  %111 = call i32 @trace_strbuf(i32* @trace_packet, %struct.strbuf* %8)
  %112 = call i32 @strbuf_release(%struct.strbuf* %8)
  br label %113

113:                                              ; preds = %109, %50, %24, %14
  ret void
}

declare dso_local i32 @trace_want(i32*) #1

declare dso_local i64 @packet_trace_pack(i8*, i32, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8 signext, ...) #1

declare dso_local i32 @get_trace_prefix(...) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @trace_strbuf(i32*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
