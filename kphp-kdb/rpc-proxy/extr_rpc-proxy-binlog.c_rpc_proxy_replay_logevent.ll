; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-binlog.c_rpc_proxy_replay_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-binlog.c_rpc_proxy_replay_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32 }
%struct.lev_query_forget = type { i32 }
%struct.lev_answer_forget = type { i32, i32 }
%struct.lev_query_tx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lev_answer_tx = type { i32, i32, i32, i32, i32 }
%struct.lev_answer_rx = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unknown log event type %08x at position %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_proxy_replay_logevent(%struct.lev_generic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_generic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_query_forget*, align 8
  %7 = alloca %struct.lev_answer_forget*, align 8
  %8 = alloca %struct.lev_query_tx*, align 8
  %9 = alloca %struct.lev_answer_tx*, align 8
  %10 = alloca %struct.lev_answer_rx*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %12 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %150 [
    i32 130, label %14
    i32 135, label %19
    i32 128, label %19
    i32 136, label %19
    i32 131, label %19
    i32 132, label %19
    i32 129, label %19
    i32 137, label %19
    i32 134, label %23
    i32 140, label %36
    i32 133, label %51
    i32 138, label %97
    i32 139, label %137
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 24
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 -2, i32 24
  store i32 %18, i32* %3, align 4
  br label %157

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %20 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @default_replay_logevent(%struct.lev_generic* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %157

23:                                               ; preds = %2
  %24 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %25 = bitcast %struct.lev_generic* %24 to i8*
  %26 = bitcast i8* %25 to %struct.lev_query_forget*
  store %struct.lev_query_forget* %26, %struct.lev_query_forget** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 -2, i32* %3, align 4
  br label %157

31:                                               ; preds = %23
  %32 = load %struct.lev_query_forget*, %struct.lev_query_forget** %6, align 8
  %33 = getelementptr inbounds %struct.lev_query_forget, %struct.lev_query_forget* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @query_forget(i32 %34)
  store i32 4, i32* %3, align 4
  br label %157

36:                                               ; preds = %2
  %37 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %38 = bitcast %struct.lev_generic* %37 to i8*
  %39 = bitcast i8* %38 to %struct.lev_answer_forget*
  store %struct.lev_answer_forget* %39, %struct.lev_answer_forget** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -2, i32* %3, align 4
  br label %157

44:                                               ; preds = %36
  %45 = load %struct.lev_answer_forget*, %struct.lev_answer_forget** %7, align 8
  %46 = getelementptr inbounds %struct.lev_answer_forget, %struct.lev_answer_forget* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lev_answer_forget*, %struct.lev_answer_forget** %7, align 8
  %49 = getelementptr inbounds %struct.lev_answer_forget, %struct.lev_answer_forget* %48, i32 0, i32 0
  %50 = call i32 @answer_forget(i32 %47, i32* %49)
  store i32 8, i32* %3, align 4
  br label %157

51:                                               ; preds = %2
  %52 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %53 = bitcast %struct.lev_generic* %52 to i8*
  %54 = bitcast i8* %53 to %struct.lev_query_tx*
  store %struct.lev_query_tx* %54, %struct.lev_query_tx** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 28
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 -2, i32* %3, align 4
  br label %157

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %63 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 28, %65
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 -2, i32* %3, align 4
  br label %157

69:                                               ; preds = %59
  %70 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %71 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %74 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %77 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %76, i32 0, i32 4
  %78 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %79 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %82 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %85 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %88 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @query_tx(i32 %72, i32 %75, i32* %77, i32 %80, i32 %83, i32 %86, i32 %89)
  %91 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %92 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 28, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %157

97:                                               ; preds = %2
  %98 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %99 = bitcast %struct.lev_generic* %98 to i8*
  %100 = bitcast i8* %99 to %struct.lev_answer_tx*
  store %struct.lev_answer_tx* %100, %struct.lev_answer_tx** %9, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 20
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 -2, i32* %3, align 4
  br label %157

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %109 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 20, %111
  %113 = icmp ult i64 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 -2, i32* %3, align 4
  br label %157

115:                                              ; preds = %105
  %116 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %117 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %120 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %119, i32 0, i32 3
  %121 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %122 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %125 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %128 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @answer_tx(i32 %118, i32* %120, i32 %123, i32 %126, i32 %129)
  %131 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %9, align 8
  %132 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 20, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %157

137:                                              ; preds = %2
  %138 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %139 = bitcast %struct.lev_generic* %138 to i8*
  %140 = bitcast i8* %139 to %struct.lev_answer_rx*
  store %struct.lev_answer_rx* %140, %struct.lev_answer_rx** %10, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %142, 4
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i32 -2, i32* %3, align 4
  br label %157

145:                                              ; preds = %137
  %146 = load %struct.lev_answer_rx*, %struct.lev_answer_rx** %10, align 8
  %147 = getelementptr inbounds %struct.lev_answer_rx, %struct.lev_answer_rx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @answer_rx(i32 %148)
  store i32 4, i32* %3, align 4
  br label %157

150:                                              ; preds = %2
  %151 = load i32, i32* @stderr, align 4
  %152 = load %struct.lev_generic*, %struct.lev_generic** %4, align 8
  %153 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (...) @log_cur_pos()
  %156 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %154, i32 %155)
  store i32 -1, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %145, %144, %115, %114, %104, %69, %68, %58, %44, %43, %31, %30, %19, %14
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @default_replay_logevent(%struct.lev_generic*, i32) #1

declare dso_local i32 @query_forget(i32) #1

declare dso_local i32 @answer_forget(i32, i32*) #1

declare dso_local i32 @query_tx(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @answer_tx(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @answer_rx(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
