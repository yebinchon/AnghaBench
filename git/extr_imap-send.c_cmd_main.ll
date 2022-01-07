; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.TYPE_4__ = type { i32, i8*, i64, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@imap_send_options = common dso_local global i32 0, align 4
@imap_send_usage = common dso_local global i32 0, align 4
@use_curl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"--curl not supported in this build\00", align 1
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"no imap store specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no imap host specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"tunnel\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"error reading input\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"nothing to send\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no messages to send\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = call i32 @setup_git_directory_gently(i32* %8)
  %11 = call i32 (...) @git_imap_config()
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* @imap_send_options, align 4
  %15 = load i32, i32* @imap_send_usage, align 4
  %16 = call i32 @parse_options(i32 %12, i8** %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @imap_send_usage, align 4
  %21 = load i32, i32* @imap_send_options, align 4
  %22 = call i32 @usage_with_options(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @use_curl, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @use_curl, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 4), align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 993, i32 143
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 3), align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

42:                                               ; preds = %36
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 2), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

51:                                               ; preds = %45
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* @stdin, align 4
  %54 = call i64 @read_message(i32 %53, %struct.strbuf* %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

66:                                               ; preds = %59
  %67 = call i32 @count_messages(%struct.strbuf* %6)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %82

73:                                               ; preds = %66
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 2), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @append_msgs_to_imap(%struct.TYPE_4__* @server, %struct.strbuf* %6, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @append_msgs_to_imap(%struct.TYPE_4__* @server, %struct.strbuf* %6, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %76, %70, %63, %56, %48, %39
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory_gently(i32*) #2

declare dso_local i32 @git_imap_config(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, i32) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @read_message(i32, %struct.strbuf*) #2

declare dso_local i32 @count_messages(%struct.strbuf*) #2

declare dso_local i32 @append_msgs_to_imap(%struct.TYPE_4__*, %struct.strbuf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
