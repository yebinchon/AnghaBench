; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@my_verbosity_tmp = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"entry: %s\0A\00", align 1
@ans_n = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@ans = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"%d:%lld\0A\00", align 1
@set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* @INIT, align 4
  %23 = load i32, i32* @my_verbosity_tmp, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %7
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @MAX_VALUE_LEN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %158

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @eat_at(i8* %38, i32 %39, i8** %16, i32* %17)
  %41 = load i8*, i8** %16, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %157, label %44

44:                                               ; preds = %37
  %45 = load %struct.connection*, %struct.connection** %9, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 0
  %47 = load i8*, i8** @stats_buff, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @safe_read_in(i32* %46, i8* %47, i32 %48)
  %50 = load i8*, i8** @stats_buff, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* @my_verbosity_tmp, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** @stats_buff, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %44
  %61 = load i8*, i8** @stats_buff, align 8
  %62 = call i8* @gen_addrs(i8* %61)
  store i8* %62, i8** %18, align 8
  %63 = load i32, i32* @ans_n, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %154

65:                                               ; preds = %60
  store i32 0, i32* %20, align 4
  %66 = load i8*, i8** @buf, align 8
  store i8* %66, i8** %21, align 8
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %150, %65
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @ans_n, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %153

71:                                               ; preds = %67
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %21, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %21, align 8
  store i8 44, i8* %75, align 1
  br label %78

77:                                               ; preds = %71
  store i32 1, i32* %20, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i8*, i8** %21, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ans, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i8*, i8** %21, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %21, align 8
  %90 = load i32, i32* @my_verbosity_tmp, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %107

92:                                               ; preds = %78
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ans, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ans, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %105)
  br label %107

107:                                              ; preds = %92, %78
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @ans_n, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ans, align 8
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ans, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %119, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %112, %107
  %128 = load i8*, i8** %21, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %21, align 8
  store i8 59, i8* %128, align 1
  %130 = load i8*, i8** %21, align 8
  store i8 0, i8* %130, align 1
  %131 = load i8*, i8** %21, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = call i32 @WRITE_STRING(i8* %131, i8* %132)
  %134 = load i8*, i8** @buf, align 8
  %135 = load i8*, i8** %21, align 8
  %136 = load i8*, i8** @buf, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ans, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @send_to_queue(i8* %134, i32 %140, i32 %146)
  %148 = load i8*, i8** @buf, align 8
  store i8* %148, i8** %21, align 8
  store i32 0, i32* %20, align 4
  br label %149

149:                                              ; preds = %127, %112
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %19, align 4
  br label %67

153:                                              ; preds = %67
  br label %154

154:                                              ; preds = %153, %60
  %155 = load i32, i32* @set, align 4
  %156 = call i32 @RETURN(i32 %155, i32 1)
  br label %157

157:                                              ; preds = %154, %37
  br label %158

158:                                              ; preds = %157, %33
  %159 = load i32, i32* @set, align 4
  %160 = call i32 @RETURN(i32 %159, i32 -2)
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

declare dso_local i8* @gen_addrs(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @WRITE_STRING(i8*, i8*) #1

declare dso_local i32 @send_to_queue(i8*, i32, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
