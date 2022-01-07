; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_read_from_out.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_read_from_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_state = type { i32, i32, i8*, i64, i32 }

@LARGE_PACKET_MAX = common dso_local global i64 0, align 8
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"shouldn't have EOF when not gentle on EOF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0001\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_state*, i32, i64*, i32*)* @rpc_read_from_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_read_from_out(%struct.rpc_state* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_state* %0, %struct.rpc_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %14 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %19 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = sub nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %28 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %11, align 8
  br label %53

36:                                               ; preds = %4
  %37 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %38 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %46 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %49 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %36, %17
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @LARGE_PACKET_MAX, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %122

58:                                               ; preds = %53
  %59 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %60 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @packet_read_with_status(i32 %61, i32* null, i32* null, i8* %62, i64 %63, i32* %12, i32 %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 130
  br i1 %69, label %70, label %89

70:                                               ; preds = %58
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %73 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 4, i32 0
  %78 = add nsw i32 %71, %77
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %8, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %84 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  br label %89

89:                                               ; preds = %70, %58
  %90 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %91 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %89
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %120 [
    i32 130, label %97
    i32 128, label %106
    i32 131, label %112
    i32 129, label %116
  ]

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %104 = call i32 @die(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %120

106:                                              ; preds = %94
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -4
  %109 = load i64*, i64** %8, align 8
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @set_packet_header(i8* %108, i64 %110)
  br label %120

112:                                              ; preds = %94
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 -4
  %115 = call i32 @memcpy(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %120

116:                                              ; preds = %94
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -4
  %119 = call i32 @memcpy(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %120

120:                                              ; preds = %94, %116, %112, %106, %105
  br label %121

121:                                              ; preds = %120, %89
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %57
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @packet_read_with_status(i32, i32*, i32*, i8*, i64, i32*, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_packet_header(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
