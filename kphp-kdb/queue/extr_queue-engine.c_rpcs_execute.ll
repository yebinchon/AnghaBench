; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_rpcs_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_rpcs_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpcs_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@buf = common dso_local global i64 0, align 8
@rpc_received = common dso_local global i32 0, align 4
@rpc_received_size = common dso_local global i32 0, align 4
@rpc_received_news_subscr = common dso_local global i32 0, align 4
@rpc_received_news_subscr_size = common dso_local global i32 0, align 4
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@rpc_received_news_redirect = common dso_local global i32 0, align 4
@rpc_received_news_redirect_size = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load i64, i64* @verbosity, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %3
  %34 = load i64, i64* @buf, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* @rpc_received, align 4
  %37 = call i32 @STAT(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @rpc_received_size, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @rpc_received_size, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -65536
  switch i32 %42, label %180 [
    i32 128, label %43
    i32 129, label %117
  ]

43:                                               ; preds = %33
  %44 = load i32, i32* @rpc_received_news_subscr, align 4
  %45 = call i32 @STAT(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @rpc_received_news_subscr_size, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @rpc_received_news_subscr_size, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAX_VALUE_LEN, align 4
  %51 = icmp slt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.connection*, %struct.connection** %5, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 1
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @read_in(i32* %55, i32* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 1
  %65 = and i32 %64, 1
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = sub i64 %73, 4
  %75 = sub i64 %74, 2
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = srem i32 %77, 3
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = sdiv i32 %82, 3
  store i32 %83, i32* %15, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  store i32* %85, i32** %20, align 8
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %43
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %20, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @subscribers_add_new_rev(i32 %92, i32* %93, i32 %94)
  store i32 %95, i32* %18, align 4
  br label %101

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @subscribers_add_new(i32 %97, i32* %98, i32 %99)
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %96, %91
  br label %116

102:                                              ; preds = %43
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @subscribers_del_rev(i32 %106, i32* %107, i32 %108)
  store i32 %109, i32* %18, align 4
  br label %115

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %20, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @subscribers_del_old(i32 %111, i32* %112, i32 %113)
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %101
  store i32 0, i32* %4, align 4
  br label %182

117:                                              ; preds = %33
  %118 = load i32, i32* @rpc_received_news_redirect, align 4
  %119 = call i32 @STAT(i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @rpc_received_news_redirect_size, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* @rpc_received_news_redirect_size, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @MAX_VALUE_LEN, align 4
  %125 = icmp slt i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.connection*, %struct.connection** %5, align 8
  %129 = getelementptr inbounds %struct.connection, %struct.connection* %128, i32 0, i32 1
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @read_in(i32* %129, i32* %130, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32* %138, i32** %8, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @READ_LONG(i32* %139, i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @READ_INT(i32* %142, i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @READ_INT(i32* %145, i32 %146)
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @READ_INT(i32* %148, i32 %149)
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @READ_INT(i32* %151, i32 %152)
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @READ_INT(i32* %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  %159 = add nsw i32 %158, 3
  %160 = sdiv i32 %159, 4
  store i32 %160, i32* %14, align 4
  %161 = load i32*, i32** %8, align 8
  store i32* %161, i32** %21, align 8
  %162 = load i32, i32* %15, align 4
  %163 = mul nsw i32 %162, 3
  %164 = load i32*, i32** %8, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %8, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = bitcast i32* %167 to i8*
  store i8* %168, i8** %19, align 8
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, 1
  store i32 %170, i32* %22, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* %15, align 4
  %177 = load i8*, i8** %19, align 8
  %178 = load i32, i32* %22, align 4
  %179 = call i32 @add_event_to_news(i32 %171, i32 %172, i32 %173, i32 %174, i32* %175, i32 %176, i8* %177, i32 %178)
  store i32 0, i32* %4, align 4
  br label %182

180:                                              ; preds = %33
  %181 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %117, %116
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i32*, i32) #1

declare dso_local i32 @subscribers_add_new_rev(i32, i32*, i32) #1

declare dso_local i32 @subscribers_add_new(i32, i32*, i32) #1

declare dso_local i32 @subscribers_del_rev(i32, i32*, i32) #1

declare dso_local i32 @subscribers_del_old(i32, i32*, i32) #1

declare dso_local i32 @READ_LONG(i32*, i32) #1

declare dso_local i32 @READ_INT(i32*, i32) #1

declare dso_local i32 @add_event_to_news(i32, i32, i32, i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
