; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_new_rpc_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_new_rpc_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_connection = type { i64, double, %struct.rpc_server_collection*, i64 }
%struct.rpc_server_collection = type { i32, i32* }

@connect = common dso_local global i32 0, align 4
@last_connection_fd = common dso_local global i32 0, align 4
@rpc_connection_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_connection* @do_new_rpc_connection(i32 %0, i32 %1, i32 %2, i64 %3, double %4, double %5, double %6, i8** %7, i32* %8) #0 {
  %10 = alloca %struct.rpc_connection*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.rpc_server_collection*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.rpc_connection*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store double %4, double* %15, align 8
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store i8** %7, i8*** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i32, i32* @connect, align 4
  %26 = call i32 @ADD_CNT(i32 %25)
  %27 = load i32, i32* @connect, align 4
  %28 = call i32 @START_TIMER(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load double, double* %16, align 8
  %32 = load double, double* %17, align 8
  %33 = call %struct.rpc_server_collection* @rpc_find_persistent(i32 %29, i32 %30, double %31, double %32)
  store %struct.rpc_server_collection* %33, %struct.rpc_server_collection** %20, align 8
  %34 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %35 = call i32 @assert(%struct.rpc_server_collection* %34)
  %36 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %37 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %9
  %42 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %43 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %46 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i32* @zzrealloc(i32* %44, i32 %50, i32 %54)
  %56 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %57 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %59 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ADD_PREALLOC(i32 %63, i32 %67)
  %69 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %70 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %88, %41
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load double, double* %15, align 8
  %80 = load double, double* %17, align 8
  %81 = call i32 @rpc_server_new(i32 %77, i32 %78, double %79, double %80)
  %82 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %83 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %94 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %9
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i32, i32* %22, align 4
  %98 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %99 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %96
  %103 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %104 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %22, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i8**, i8*** %18, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = call i64 @rpc_open(i32 %109, i8** %110, i32* %111)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %23, align 4
  br label %117

117:                                              ; preds = %114, %102
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %22, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %22, align 4
  br label %96

121:                                              ; preds = %96
  %122 = load i32, i32* %23, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @connect, align 4
  %126 = call i32 @END_TIMER(i32 %125)
  store %struct.rpc_connection* null, %struct.rpc_connection** %10, align 8
  br label %150

127:                                              ; preds = %121
  %128 = call %struct.rpc_connection* @zzmalloc(i32 32)
  store %struct.rpc_connection* %128, %struct.rpc_connection** %24, align 8
  %129 = load i32, i32* @last_connection_fd, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @last_connection_fd, align 4
  %131 = sext i32 %129 to i64
  %132 = load %struct.rpc_connection*, %struct.rpc_connection** %24, align 8
  %133 = getelementptr inbounds %struct.rpc_connection, %struct.rpc_connection* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %20, align 8
  %135 = load %struct.rpc_connection*, %struct.rpc_connection** %24, align 8
  %136 = getelementptr inbounds %struct.rpc_connection, %struct.rpc_connection* %135, i32 0, i32 2
  store %struct.rpc_server_collection* %134, %struct.rpc_server_collection** %136, align 8
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.rpc_connection*, %struct.rpc_connection** %24, align 8
  %139 = getelementptr inbounds %struct.rpc_connection, %struct.rpc_connection* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load double, double* %15, align 8
  %141 = load %struct.rpc_connection*, %struct.rpc_connection** %24, align 8
  %142 = getelementptr inbounds %struct.rpc_connection, %struct.rpc_connection* %141, i32 0, i32 1
  store double %140, double* %142, align 8
  %143 = load i32, i32* @rpc_connection_tree, align 4
  %144 = load %struct.rpc_connection*, %struct.rpc_connection** %24, align 8
  %145 = call i32 (...) @lrand48()
  %146 = call i32 @tree_insert_connection(i32 %143, %struct.rpc_connection* %144, i32 %145)
  store i32 %146, i32* @rpc_connection_tree, align 4
  %147 = load i32, i32* @connect, align 4
  %148 = call i32 @END_TIMER(i32 %147)
  %149 = load %struct.rpc_connection*, %struct.rpc_connection** %24, align 8
  store %struct.rpc_connection* %149, %struct.rpc_connection** %10, align 8
  br label %150

150:                                              ; preds = %127, %124
  %151 = load %struct.rpc_connection*, %struct.rpc_connection** %10, align 8
  ret %struct.rpc_connection* %151
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local %struct.rpc_server_collection* @rpc_find_persistent(i32, i32, double, double) #1

declare dso_local i32 @assert(%struct.rpc_server_collection*) #1

declare dso_local i32* @zzrealloc(i32*, i32, i32) #1

declare dso_local i32 @ADD_PREALLOC(i32, i32) #1

declare dso_local i32 @rpc_server_new(i32, i32, double, double) #1

declare dso_local i64 @rpc_open(i32, i8**, i32*) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local %struct.rpc_connection* @zzmalloc(i32) #1

declare dso_local i32 @tree_insert_connection(i32, %struct.rpc_connection*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
