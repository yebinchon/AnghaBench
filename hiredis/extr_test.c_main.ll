; ModuleID = '/home/carl/AnghaBench/hiredis/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"/tmp/redis.sock\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
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
@CONN_SSL = common dso_local global i32 0, align 4

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
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 72, i1 false)
  %10 = bitcast i8* %9 to %struct.config*
  %11 = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 6379, i32* %15, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %16 = load i32, i32* @SIGPIPE, align 4
  %17 = load i32, i32* @SIG_IGN, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %116, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %121

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %116

45:                                               ; preds = %29, %26
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @atoi(i8* %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %115

66:                                               ; preds = %48, %45
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 2
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %4, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %114

85:                                               ; preds = %69, %66
  %86 = load i32, i32* %4, align 4
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %113

95:                                               ; preds = %88, %85
  %96 = load i32, i32* %4, align 4
  %97 = icmp sge i32 %96, 1
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %112

105:                                              ; preds = %98, %95
  %106 = load i32, i32* @stderr, align 4
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  %111 = call i32 @exit(i32 1) #4
  unreachable

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %94
  br label %114

114:                                              ; preds = %113, %75
  br label %115

115:                                              ; preds = %114, %54
  br label %116

116:                                              ; preds = %115, %35
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %5, align 8
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %4, align 4
  br label %23

121:                                              ; preds = %23
  %122 = call i32 (...) @test_format_commands()
  %123 = call i32 (...) @test_reply_reader()
  %124 = call i32 (...) @test_blocking_connection_errors()
  %125 = call i32 (...) @test_free_null()
  %126 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %128, i32 %131)
  %133 = load i32, i32* @CONN_TCP, align 4
  %134 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %133, i32* %134, align 8
  %135 = call i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8 %6)
  %136 = call i32 @test_blocking_connection_timeouts(%struct.config* byval(%struct.config) align 8 %6)
  %137 = call i32 @test_blocking_io_errors(%struct.config* byval(%struct.config) align 8 %6)
  %138 = call i32 @test_invalid_timeout_errors(%struct.config* byval(%struct.config) align 8 %6)
  %139 = call i32 @test_append_formatted_commands(%struct.config* byval(%struct.config) align 8 %6)
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %121
  %143 = call i32 @test_throughput(%struct.config* byval(%struct.config) align 8 %6)
  br label %144

144:                                              ; preds = %142, %121
  %145 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* @CONN_UNIX, align 4
  %150 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = call i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8 %6)
  %152 = call i32 @test_blocking_connection_timeouts(%struct.config* byval(%struct.config) align 8 %6)
  %153 = call i32 @test_blocking_io_errors(%struct.config* byval(%struct.config) align 8 %6)
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = call i32 @test_throughput(%struct.config* byval(%struct.config) align 8 %6)
  br label %158

158:                                              ; preds = %156, %144
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %164)
  %166 = load i32, i32* @CONN_FD, align 4
  %167 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  %168 = call i32 @test_blocking_connection(%struct.config* byval(%struct.config) align 8 %6)
  br label %169

169:                                              ; preds = %161, %158
  %170 = load i32, i32* @fails, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @fails, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %173)
  store i32 1, i32* %3, align 4
  br label %177

175:                                              ; preds = %169
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %172
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @atoi(i8*) #2

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
