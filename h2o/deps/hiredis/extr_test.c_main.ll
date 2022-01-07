; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"/tmp/redis.sock\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@__const.main.cfg = private unnamed_addr constant %struct.config { i32 0, %struct.TYPE_4__ { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 6379 } }, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"--skip-throughput\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"--skip-inherit-fd\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Invalid argument: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\0ATesting against TCP connection (%s:%d):\0A\00", align 1
@CONN_TCP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"\0ATesting against Unix socket connection (%s):\0A\00", align 1
@CONN_UNIX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"\0ATesting against inherited fd (%s):\0A\00", align 1
@CONN_FD = common dso_local global i32 0, align 4
@fails = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"*** %d TESTS FAILED ***\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"ALL TESTS PASSED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.config* @__const.main.cfg to i8*), i64 32, i1 false)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* @SIGPIPE, align 4
  %11 = load i32, i32* @SIG_IGN, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %109, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %114

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %109

39:                                               ; preds = %23, %20
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @atoi(i8* %55)
  %57 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %108

59:                                               ; preds = %42, %39
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 2
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %107

78:                                               ; preds = %62, %59
  %79 = load i32, i32* %4, align 4
  %80 = icmp sge i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %106

88:                                               ; preds = %81, %78
  %89 = load i32, i32* %4, align 4
  %90 = icmp sge i32 %89, 1
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  store i32 0, i32* %8, align 4
  br label %105

98:                                               ; preds = %91, %88
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #4
  unreachable

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %87
  br label %107

107:                                              ; preds = %106, %68
  br label %108

108:                                              ; preds = %107, %48
  br label %109

109:                                              ; preds = %108, %29
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %5, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %4, align 4
  br label %17

114:                                              ; preds = %17
  %115 = call i32 (...) @test_format_commands()
  %116 = call i32 (...) @test_reply_reader()
  %117 = call i32 (...) @test_blocking_connection_errors()
  %118 = call i32 (...) @test_free_null()
  %119 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %121, i32 %124)
  %126 = load i32, i32* @CONN_TCP, align 4
  %127 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = call i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8 %6)
  %129 = call i32 @test_blocking_connection_timeouts(%struct.config* byval(%struct.config) align 8 %6)
  %130 = call i32 @test_blocking_io_errors(%struct.config* byval(%struct.config) align 8 %6)
  %131 = call i32 @test_invalid_timeout_errors(%struct.config* byval(%struct.config) align 8 %6)
  %132 = call i32 @test_append_formatted_commands(%struct.config* byval(%struct.config) align 8 %6)
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %114
  %136 = call i32 @test_throughput(%struct.config* byval(%struct.config) align 8 %6)
  br label %137

137:                                              ; preds = %135, %114
  %138 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @CONN_UNIX, align 4
  %143 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %142, i32* %143, align 8
  %144 = call i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8 %6)
  %145 = call i32 @test_blocking_connection_timeouts(%struct.config* byval(%struct.config) align 8 %6)
  %146 = call i32 @test_blocking_io_errors(%struct.config* byval(%struct.config) align 8 %6)
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = call i32 @test_throughput(%struct.config* byval(%struct.config) align 8 %6)
  br label %151

151:                                              ; preds = %149, %137
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* @CONN_FD, align 4
  %160 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = call i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8 %6)
  br label %162

162:                                              ; preds = %154, %151
  %163 = load i32, i32* @fails, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @fails, align 4
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  store i32 1, i32* %3, align 4
  br label %170

168:                                              ; preds = %162
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @test_format_commands(...) #2

declare dso_local i32 @test_reply_reader(...) #2

declare dso_local i32 @test_blocking_connection_errors(...) #2

declare dso_local i32 @test_free_null(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8) #2

declare dso_local i32 @test_blocking_connection_timeouts(%struct.config* byval(%struct.config) align 8) #2

declare dso_local i32 @test_blocking_io_errors(%struct.config* byval(%struct.config) align 8) #2

declare dso_local i32 @test_invalid_timeout_errors(%struct.config* byval(%struct.config) align 8) #2

declare dso_local i32 @test_append_formatted_commands(%struct.config* byval(%struct.config) align 8) #2

declare dso_local i32 @test_throughput(%struct.config* byval(%struct.config) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
