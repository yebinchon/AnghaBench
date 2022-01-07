; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_data_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_data_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_5__, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.keep_mc_store = type { i32, i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"mc_store: op=%d, key=\22%s\22, flags=%d, expire=%d, bytes=%d, noreply=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"userlist%d\00", align 1
@FRIENDS_STORE_MAGIC = common dso_local global i32 0, align 4
@userlist = common dso_local global i8* null, align 8
@MAX_USERLIST_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NOT_STORED\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"STORED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @friends_data_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.keep_mc_store*, align 8
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.keep_mc_store* null, %struct.keep_mc_store** %16, align 8
  %17 = load i64, i64* @verbosity, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23, i32 %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %19, %7
  %28 = load i32, i32* %14, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 1048576
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %96

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %37
  %41 = load %struct.connection*, %struct.connection** %8, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = call %struct.TYPE_5__* (...) @alloc_head_buffer()
  %47 = load %struct.connection*, %struct.connection** %8, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 2
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.connection*, %struct.connection** %8, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @assert(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.connection*, %struct.connection** %8, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.keep_mc_store*
  store %struct.keep_mc_store* %59, %struct.keep_mc_store** %16, align 8
  %60 = load i32, i32* @FRIENDS_STORE_MAGIC, align 4
  %61 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %62 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %65 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** @userlist, align 8
  %67 = load i32, i32* @MAX_USERLIST_NUM, align 4
  %68 = load %struct.connection*, %struct.connection** %8, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 1
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @np_news_parse_list(i8* %66, i32 %67, i32 1, i32* %69, i32 %70)
  %72 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %73 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.connection*, %struct.connection** %8, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @advance_write_ptr(%struct.TYPE_5__* %76, i32 12)
  %78 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %79 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %53
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.connection*, %struct.connection** %8, align 8
  %87 = getelementptr inbounds %struct.connection, %struct.connection* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i8*, i8** @userlist, align 8
  %90 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %91 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 4
  %94 = call i32 @write_out(%struct.TYPE_5__* %88, i8* %89, i32 %93)
  br label %95

95:                                               ; preds = %85, %82, %53
  br label %101

96:                                               ; preds = %37, %33
  %97 = load %struct.connection*, %struct.connection** %8, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 1
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @advance_skip_read_ptr(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %95
  br label %107

102:                                              ; preds = %30, %27
  %103 = load %struct.connection*, %struct.connection** %8, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 1
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @advance_skip_read_ptr(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %101
  %108 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %109 = icmp ne %struct.keep_mc_store* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.keep_mc_store*, %struct.keep_mc_store** %16, align 8
  %112 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %15, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115, %110, %107
  %119 = load %struct.connection*, %struct.connection** %8, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 0
  %121 = call i32 @write_out(%struct.TYPE_5__* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %122 = load %struct.connection*, %struct.connection** %8, align 8
  %123 = call i32 @flush_output(%struct.connection* %122)
  %124 = load %struct.connection*, %struct.connection** %8, align 8
  %125 = call i32 @free_tmp_buffers(%struct.connection* %124)
  br label %132

126:                                              ; preds = %115
  %127 = load %struct.connection*, %struct.connection** %8, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 0
  %129 = call i32 @write_out(%struct.TYPE_5__* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %130 = load %struct.connection*, %struct.connection** %8, align 8
  %131 = call i32 @flush_output(%struct.connection* %130)
  br label %132

132:                                              ; preds = %126, %118
  %133 = load i32, i32* %14, align 4
  ret i32 %133
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @alloc_head_buffer(...) #1

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @np_news_parse_list(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @advance_write_ptr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @write_out(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

declare dso_local i32 @flush_output(%struct.connection*) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
