; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@username = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@connected = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Didn't connect to server after 10 seconds.\0A\00", align 1
@expect_input = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Before readline call.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"TL>\00", align 1
@log_file = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"TL>%s\0A\00", align 1
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @init_epoll()
  %6 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %7 = load i8*, i8** @username, align 8
  %8 = call i64 @change_user(i8* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %0
  %11 = load i8*, i8** @username, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i8*, i8** @username, align 8
  br label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %0
  %21 = call i32 (...) @create_all_outbound_connections()
  %22 = load i32, i32* @SIGINT, align 4
  %23 = load i32, i32* @sigint_handler, align 4
  %24 = call i32 @signal(i32 %22, i32 %23)
  %25 = load i32, i32* @SIGTERM, align 4
  %26 = load i32, i32* @sigterm_handler, align 4
  %27 = call i32 @signal(i32 %25, i32 %26)
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %135, %20
  %29 = load i32, i32* @pending_signals, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %138

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = and i32 %33, 255
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @active_connections, align 4
  %38 = load i32, i32* @maxconn, align 4
  %39 = load i32, i32* @NB_used, align 4
  %40 = load i32, i32* @NB_alloc, align 4
  %41 = load i32, i32* @NB_max, align 4
  %42 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %32
  %44 = call i32 @epoll_work(i32 97)
  %45 = load i32, i32* @now, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, i32* @now, align 4
  store i32 %49, i32* %2, align 4
  %50 = call i32 (...) @cron()
  %51 = load i32, i32* @connected, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @now, align 4
  %55 = load i32, i32* @start_time, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp sgt i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i64, i64* @expect_input, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %126

65:                                               ; preds = %62
  %66 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %67 = call i8* @readline(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %67, i8** %3, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %65
  %73 = load i64, i64* @log_file, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* @log_file, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @fprintf(i64 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @add_history(i8* %80)
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %103, %79
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 32
  br label %96

96:                                               ; preds = %88, %85
  %97 = phi i1 [ false, %85 ], [ %95, %88 ]
  br i1 %97, label %98, label %106

98:                                               ; preds = %96
  %99 = load i8*, i8** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %4, align 4
  br label %85

106:                                              ; preds = %96
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 40
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @send_rpc_command(i8* %113)
  br label %118

115:                                              ; preds = %106
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @exec_command(i8* %116)
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %65
  %120 = load i8*, i8** %3, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @free(i8* %123)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %62
  %127 = load i64, i64* @quit_steps, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i64, i64* @quit_steps, align 8
  %131 = add nsw i64 %130, -1
  store i64 %131, i64* @quit_steps, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  br label %138

134:                                              ; preds = %129, %126
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %1, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %1, align 4
  br label %28

138:                                              ; preds = %133, %28
  %139 = call i32 (...) @cleanup()
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i8* @readline(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @add_history(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @send_rpc_command(i8*) #1

declare dso_local i32 @exec_command(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
